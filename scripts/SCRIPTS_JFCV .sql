--Create user JFCV identified by 123;
--Grant connect,resource to JFCV;

--COIN TYPE
create or replace NONEDITIONABLE TYPE coin AS OBJECT(

    id VARCHAR2(20),
	name	VARCHAR2(15),
	account_number 	VARCHAR2(15),
    balance number,
    
	CONSTRUCTOR FUNCTION coin
		RETURN SELF AS RESULT,
	CONSTRUCTOR FUNCTION coin(id VARCHAR2,name VARCHAR2,account_number VARCHAR2, balance NUMBER)
    
    RETURN SELF AS RESULT,
    
    MEMBER FUNCTION get_id return VARCHAR2,
    MEMBER PROCEDURE set_id (id VARCHAR2),
    MEMBER FUNCTION get_name return VARCHAR2,
    MEMBER PROCEDURE set_name (name VARCHAR2),
    MEMBER FUNCTION get_account_number return VARCHAR2,
    MEMBER PROCEDURE set_account_number (account_number VARCHAR2),
    MEMBER FUNCTION get_balance return NUMBER,
    MEMBER PROCEDURE set_balance (balance NUMBER),
    MEMBER PROCEDURE transfer_money(amount number, account_id varchar2)
	);
/
--COIN TYPE BODY 
create or replace NONEDITIONABLE TYPE BODY coin
IS
	CONSTRUCTOR FUNCTION coin
		RETURN SELF AS RESULT
	IS
	BEGIN
		RETURN;
	END;

	CONSTRUCTOR FUNCTION coin(id VARCHAR2,name VARCHAR2, account_number VARCHAR2,balance NUMBER)
	RETURN SELF AS RESULT
	IS
	BEGIN
		SELF.id := id;
		SELF.name := name;
		SELF.account_number:=account_number;
        SELF.balance:=balance;
		RETURN;
	END;

    --GETTERS AND SETTER
    --ID
    MEMBER FUNCTION get_id RETURN VARCHAR2 IS 
    BEGIN
        RETURN SELF.id;
    END;

    MEMBER PROCEDURE set_id (id VARCHAR2)IS
    BEGIN
        SELF.id:=id;
    END;
    -- NAME
    MEMBER FUNCTION get_name return VARCHAR2 IS
    BEGIN 
        RETURN SELF.name;
    END;

    MEMBER PROCEDURE set_name (name VARCHAR2) IS 
    BEGIN
        SELF.name:=name;
    END;
    --ACCOUNT NUMBER
    MEMBER FUNCTION get_account_number return VARCHAR2 IS
    BEGIN 
        RETURN SELF.account_number;
    END;

    MEMBER PROCEDURE set_account_number (account_number VARCHAR2) IS 
    BEGIN
        SELF.account_number:=account_number;
    END;

    --BALANCE
    MEMBER FUNCTION get_balance return NUMBER IS
    BEGIN 
        RETURN SELF.balance;
    END;

    MEMBER PROCEDURE set_balance (balance NUMBER) IS 
    BEGIN
        SELF.balance:=balance;
    END;

    MEMBER PROCEDURE transfer_money(amount NUMBER,account_id varchar2) IS 
    BEGIN
        SELF.balance:=amount;
    END;
END;

/

--BANK 
create or replace NONEDITIONABLE TYPE bank AS OBJECT(
	id	VARCHAR2(3),
	name 	VARCHAR2(20),
	description	VARCHAR2(100),
    account_number VARCHAR2(20),
    account_balance NUMBER,
    --cuenta vostro y saldo como atributos del banco 

  
    
	CONSTRUCTOR FUNCTION bank
		RETURN SELF AS RESULT,
	CONSTRUCTOR FUNCTION bank(id VARCHAR2, name VARCHAR2, description VARCHAR2)
		RETURN SELF AS RESULT,
    MEMBER FUNCTION get_id return VARCHAR2,
    MEMBER PROCEDURE set_id (id VARCHAR2),
    MEMBER FUNCTION get_name return VARCHAR2,
    MEMBER PROCEDURE set_name (name VARCHAR2),
    MEMBER FUNCTION get_description return VARCHAR2,
    MEMBER PROCEDURE set_description (description VARCHAR2),
    MEMBER FUNCTION get_account_number return VARCHAR2,
    MEMBER PROCEDURE set_account_number (account_number VARCHAR2),
    MEMBER FUNCTION get_account_balance return NUMBER,
    MEMBER PROCEDURE set_account_balance (account_balance NUMBER)
	);
/
-- BANK TYPE BODY
create or replace NONEDITIONABLE TYPE BODY bank
IS
    --CONSTRUCTORS 
	CONSTRUCTOR FUNCTION bank
		RETURN SELF AS RESULT
	IS
	BEGIN
		RETURN;
	END;

	CONSTRUCTOR FUNCTION bank(id VARCHAR2,name VARCHAR2, description VARCHAR2)
	RETURN SELF AS RESULT
	IS
	BEGIN
		SELF.id := id;
		SELF.name := name;
		SELF.description:=description;
		RETURN;
	END;


    --GETTERS AND SETTER
    --ID
    MEMBER FUNCTION get_id RETURN VARCHAR2 IS 
    BEGIN
        RETURN SELF.id;
    END;

    MEMBER PROCEDURE set_id (id VARCHAR2)IS
    BEGIN
        SELF.id:=id;
    END;
    -- NAME
    MEMBER FUNCTION get_name return VARCHAR2 IS
    BEGIN 
        RETURN SELF.name;
    END;

    MEMBER PROCEDURE set_name (name VARCHAR2) IS 
    BEGIN
        SELF.name:=name;
    END;
    --DESCRIPTION
    MEMBER FUNCTION get_description return VARCHAR2 IS
    BEGIN
        RETURN SELF.description;
    END;

    MEMBER PROCEDURE set_description (description VARCHAR2) IS 
    BEGIN
        SELF.description:=description;
    END;
    --ACCOUNT NUMBER
    MEMBER FUNCTION get_account_number return VARCHAR2 IS
    BEGIN
        RETURN SELF.account_number;
    END;

    MEMBER PROCEDURE set_account_number (account_number VARCHAR2) IS 
    BEGIN
        SELF.account_number:=account_number;
    END;
    --ACCOUNT BALANCE
    MEMBER FUNCTION get_account_balance return NUMBER IS
    BEGIN
        RETURN SELF.account_balance;
    END;

    MEMBER PROCEDURE set_account_balance (account_balance NUMBER) IS 
    BEGIN
        SELF.account_balance:=account_balance;
    END;
END;

/
--ADDRESS 
create or replace NONEDITIONABLE TYPE address AS OBJECT(
	id	NUMBER,
    street VARCHAR2(15),
    house_number    VARCHAR2(10),
	neighboorhood VARCHAR2(15),
    description VARCHAR2(35),
    
	CONSTRUCTOR FUNCTION address
		RETURN SELF AS RESULT,
	CONSTRUCTOR FUNCTION address(id NUMBER,street VARCHAR2,house_number VARCHAR2,neighboorhood VARCHAR2,description VARCHAR2)
		RETURN SELF AS RESULT,
        
    MEMBER FUNCTION get_id return NUMBER,
    MEMBER PROCEDURE set_id (id NUMBER),
    MEMBER FUNCTION get_street return VARCHAR2,
    MEMBER PROCEDURE set_street (street VARCHAR2),
    MEMBER FUNCTION get_house_number return VARCHAR2,
    MEMBER PROCEDURE set_house_number (house_number VARCHAR2),
    MEMBER FUNCTION get_neighboorhood return VARCHAR2,
    MEMBER PROCEDURE set_neighboorhood (neighboorhood VARCHAR2),
    MEMBER FUNCTION get_description return VARCHAR2,
    MEMBER PROCEDURE set_description (description VARCHAR2)
	);
/
--ADDRESS TYPE BODY
create or replace NONEDITIONABLE TYPE BODY address
IS
	CONSTRUCTOR FUNCTION address
		RETURN SELF AS RESULT
	IS
	BEGIN
		RETURN;
	END;

	CONSTRUCTOR FUNCTION address(id NUMBER,street VARCHAR2, house_number VARCHAR2, neighboorhood varchar2,description VARCHAR2)
	RETURN SELF AS RESULT
	IS
	BEGIN
		SELF.id := id;
		SELF.street := street;
		SELF.house_number:=house_number;
        SELF.neighboorhood:=neighboorhood;
        SELF.description:=description;
		RETURN;
	END;


    --GETTERS AND SETTER
    --ID
    MEMBER FUNCTION get_id RETURN NUMBER IS 
    BEGIN
        RETURN SELF.id;
    END;

    MEMBER PROCEDURE set_id (id NUMBER)IS
    BEGIN
        SELF.id:=id;
    END;
    -- STREET
    MEMBER FUNCTION get_street return VARCHAR2 IS
    BEGIN 
        RETURN SELF.street;
    END;

    MEMBER PROCEDURE set_street (street VARCHAR2) IS 
    BEGIN
        SELF.street:=street;
    END;
    --HOUSE_NUMBER 
    MEMBER FUNCTION get_house_number return VARCHAR2 IS
    BEGIN 
        RETURN SELF.house_number;
    END;

    MEMBER PROCEDURE set_house_number (house_number VARCHAR2) IS 
    BEGIN
        SELF.house_number:=house_number;
    END;

        --NEIGHBOORHOOD 
    MEMBER FUNCTION get_neighboorhood return VARCHAR2 IS
    BEGIN 
        RETURN SELF.neighboorhood;
    END;

    MEMBER PROCEDURE set_neighboorhood (neighboorhood VARCHAR2) IS 
    BEGIN
        SELF.neighboorhood:=neighboorhood;
    END;

    --DESCRIPTION
    MEMBER FUNCTION get_description return VARCHAR2 IS
    BEGIN
        RETURN SELF.description;
    END;

    MEMBER PROCEDURE set_description (description VARCHAR2) IS 
    BEGIN
        SELF.description:=description;
    END;
END;
/


--PERSON 
create or replace NONEDITIONABLE TYPE person AS OBJECT(

	first_name	VARCHAR2(20),
	last_name 	VARCHAR2(20),
    idtype VARCHAR2(3),
    id VARCHAR2(20),
    

    
	CONSTRUCTOR FUNCTION person
		RETURN SELF AS RESULT,
	CONSTRUCTOR FUNCTION person(first_name VARCHAR2,last_name VARCHAR2,idtype VARCHAR2, id VARCHAR2)
    
    RETURN SELF AS RESULT,
    MEMBER FUNCTION get_id return VARCHAR2,
    MEMBER PROCEDURE set_id (id VARCHAR2),
    MEMBER FUNCTION get_first_name return VARCHAR2,
    MEMBER PROCEDURE set_first_name (first_name VARCHAR2),
    MEMBER FUNCTION get_last_name return VARCHAR2,
    MEMBER PROCEDURE set_last_name (last_name VARCHAR2),
    MEMBER FUNCTION get_idtype return VARCHAR2,
    MEMBER PROCEDURE set_idtype (idtype VARCHAR2)
	);
/
--PERSON TYPE BODY 
create or replace NONEDITIONABLE TYPE BODY person
IS
    --CONSTRUCTORS 
	CONSTRUCTOR FUNCTION person
		RETURN SELF AS RESULT
	IS
	BEGIN
		RETURN;
	END;

	CONSTRUCTOR FUNCTION person(first_name VARCHAR2, last_name VARCHAR2, idtype VARCHAR2,id VARCHAR2)
	RETURN SELF AS RESULT
	IS
	BEGIN
		SELF.first_name := first_name;
		SELF.last_name := last_name;
		SELF.idtype := idtype;
        SELF.id := id;
		RETURN;
	END;
    --GETTERS AND SETTER
    --FIRST NAME
    MEMBER FUNCTION get_first_name RETURN VARCHAR2 IS 
    BEGIN
        RETURN SELF.first_name;
    END;

    MEMBER PROCEDURE set_first_name (first_name VARCHAR2)IS
    BEGIN
        SELF.first_name:=first_name;
    END;
    --LAST NAME
    MEMBER FUNCTION get_last_name return VARCHAR2 IS
    BEGIN 
        RETURN SELF.last_name;
    END;

    MEMBER PROCEDURE set_last_name (last_name VARCHAR2) IS 
    BEGIN
        SELF.last_name:=last_name;
    END;
    --IDTYPE
    MEMBER FUNCTION get_idtype return VARCHAR2 IS 
    BEGIN
        RETURN SELF.idtype;
    END;

    MEMBER PROCEDURE set_idtype (idtype VARCHAR2) IS
    BEGIN
        SELF.idtype:=idtype;
    END;

    --ID
    MEMBER FUNCTION get_id return VARCHAR2 IS 
    BEGIN
        RETURN SELF.id;
    END;

    MEMBER PROCEDURE set_id (id VARCHAR2) IS
    BEGIN
        SELF.id:=id;
    END;
END;
/

--CUSTOMER 
create or replace NONEDITIONABLE TYPE customer AS OBJECT(

	customer_info	person,
	nationality	VARCHAR2(20),
    direction address,

    
	CONSTRUCTOR FUNCTION customer
		RETURN SELF AS RESULT,
	CONSTRUCTOR FUNCTION customer(customer_info person,nationality VARCHAR2, direction address )
    
    RETURN SELF AS RESULT,
    MEMBER FUNCTION get_customer_info return person,
    MEMBER PROCEDURE set_customer_info (customer_info person),
    MEMBER FUNCTION get_nationality return VARCHAR2,
    MEMBER PROCEDURE set_nationality (nationality VARCHAR2),
    MEMBER FUNCTION get_direction return address,
    MEMBER PROCEDURE set_direction (direction address)
	);
/
--CUSTOMER TYPE BODY
create or replace NONEDITIONABLE TYPE BODY customer
IS
    --CONSTRUCTORS 
	CONSTRUCTOR FUNCTION customer
		RETURN SELF AS RESULT
	IS
	BEGIN
		RETURN;
	END;

	CONSTRUCTOR FUNCTION customer(customer_info person, nationality VARCHAR2, direction address)
	RETURN SELF AS RESULT
	IS
	BEGIN
		SELF.customer_info:= customer_info;
		SELF.nationality:= nationality;
        SELF.direction := direction;
		RETURN;
	END;
    --GETTERS AND SETTER
    --PERSON
    MEMBER FUNCTION get_customer_info RETURN person IS 
    BEGIN
        RETURN SELF.customer_info;
    END;

    MEMBER PROCEDURE set_customer_info (customer_info person)IS
    BEGIN
        SELF.customer_info:=customer_info;
    END;
    --NATIONALITY
    MEMBER FUNCTION get_nationality return VARCHAR2 IS
    BEGIN
        RETURN SELF.nationality;
    END;

    MEMBER PROCEDURE set_nationality (nationality VARCHAR2) IS 
    BEGIN
        SELF.nationality:=nationality;
    END;
    --ADDRESS
    MEMBER FUNCTION get_direction return address IS 
    BEGIN
        RETURN SELF.direction;
    END;

    MEMBER PROCEDURE set_direction (direction address) IS
    BEGIN
        SELF.direction:=direction;
    END;
END;
/

--ASSOCIATED 
create or replace NONEDITIONABLE TYPE associated AS OBJECT(

	associated_info	person,
	account_number 	VARCHAR2(20),
    customer_associated customer,
    

    
	CONSTRUCTOR FUNCTION associated
		RETURN SELF AS RESULT,
	CONSTRUCTOR FUNCTION associated(associated_info person,account_number VARCHAR2,customer_associated customer)
    
    RETURN SELF AS RESULT,
    MEMBER FUNCTION get_associated_info return person,
    MEMBER PROCEDURE set_associated_info (associated_info person),
    MEMBER FUNCTION get_account_number return VARCHAR2,
    MEMBER PROCEDURE set_account_number (account_number VARCHAR2),
    MEMBER FUNCTION get_customer_associated return CUSTOMER,
    MEMBER PROCEDURE set_customer_associated (customer_associated CUSTOMER)
	);

--ASSOCIATED TYPE BODY 
create or replace NONEDITIONABLE TYPE BODY associated
IS
    --CONSTRUCTORS 
	CONSTRUCTOR FUNCTION associated
		RETURN SELF AS RESULT
	IS
	BEGIN
		RETURN;
	END;

	CONSTRUCTOR FUNCTION associated(associated_info person,account_number VARCHAR2,customer_associated customer)
	RETURN SELF AS RESULT
	IS
	BEGIN
		SELF.associated_info :=associated_info;
		SELF.account_number := account_number;
        SELF.customer_associated := customer_associated;
		RETURN;
	END;
    --GETTERS AND SETTER
    --ASSOCIATED INFO
    MEMBER FUNCTION get_associated_info RETURN person IS 
    BEGIN
        RETURN SELF.associated_info;
    END;

    MEMBER PROCEDURE set_associated_info (associated_info person)IS
    BEGIN
        SELF.associated_info:=associated_info;
    END;
    --ACCOUNT NUMBER
    MEMBER FUNCTION get_account_number return VARCHAR2 IS
    BEGIN 
        RETURN SELF.account_number;
    END;

    MEMBER PROCEDURE set_account_number (account_number VARCHAR2) IS 
    BEGIN
        SELF.account_number:=account_number;
    END;
    --CUSTOMER ASSOCIATED
    MEMBER FUNCTION get_customer_associated return customer IS
    BEGIN 
        RETURN SELF.customer_associated;
    END;

    MEMBER PROCEDURE set_customer_associated (customer_associated customer) IS 
    BEGIN
        SELF.customer_associated:=customer_associated;
    END;
END;
/
--ACCOUNT
create or replace NONEDITIONABLE TYPE account AS OBJECT(
    id VARCHAR2(10),
	owner	customer ,
	account_type 	VARCHAR2(3),
	account_coin coin,
    balance NUMBER,
    use_mode VARCHAR2(2),
    bank_owner bank,
    
	CONSTRUCTOR FUNCTION account
		RETURN SELF AS RESULT,
	CONSTRUCTOR FUNCTION account(id VARCHAR2, owner customer, account_type VARCHAR2,account_coin coin,use_mode VARCHAR2, bank_owner bank, balance number)
		RETURN SELF AS RESULT,
    MEMBER FUNCTION get_id return VARCHAR2,
    MEMBER PROCEDURE set_id (id VARCHAR2),
    MEMBER FUNCTION get_owner return customer,
    MEMBER PROCEDURE set_owner (owner customer),
    MEMBER FUNCTION get_balance return NUMBER,
    MEMBER PROCEDURE set_balance (balance NUMBER),
    MEMBER FUNCTION get_coin return COIN,
    MEMBER PROCEDURE set_coin (account_coin COIN),
    MEMBER FUNCTION get_use_mode return VARCHAR2,
    MEMBER PROCEDURE set_use_mode (use_mode VARCHAR2),
    MEMBER FUNCTION get_bank return BANK,
    MEMBER PROCEDURE set_bank (bank_owner BANK),
    MEMBER PROCEDURE transfer_money(amount number,associated_account varchar2)
	);
/
--ACCOUNT TYPE BODY
create or replace NONEDITIONABLE TYPE BODY account
IS
	CONSTRUCTOR FUNCTION account
		RETURN SELF AS RESULT
	IS
	BEGIN
		RETURN;
	END;

	CONSTRUCTOR FUNCTION account(id VARCHAR2, owner customer, account_type VARCHAR2,account_coin coin,use_mode VARCHAR2, bank_owner bank, balance number)
	RETURN SELF AS RESULT
	IS
	BEGIN
		SELF.id := id;
		SELF.owner := owner;
		SELF.account_type:=account_type;
        SELF.account_coin:=account_coin;
        SELF.balance:=balance;
        SELF.use_mode:=use_mode;
        SELF.bank_owner:=bank_owner; 
		RETURN;
	END;


    --GETTERS AND SETTER
    --ID
    MEMBER FUNCTION get_id RETURN VARCHAR2 IS 
    BEGIN
        RETURN SELF.id;
    END;

    MEMBER PROCEDURE set_id (id VARCHAR2)IS
    BEGIN
        SELF.id:=id;
    END;
    -- OWNER
    MEMBER FUNCTION get_owner return customer IS
    BEGIN 
        RETURN SELF.owner;
    END;

    MEMBER PROCEDURE set_owner (owner customer) IS 
    BEGIN
        SELF.owner:=owner;
    END;
    --BALANCE 
    MEMBER FUNCTION get_balance return NUMBER IS
    BEGIN 
        RETURN SELF.balance;
    END;

    MEMBER PROCEDURE set_balance (balance NUMBER) IS 
    BEGIN
        SELF.balance:=balance;
    END;

    --COIN  
    MEMBER FUNCTION get_coin return COIN IS
    BEGIN 
        RETURN SELF.account_coin;
    END;

    MEMBER PROCEDURE set_coin (account_coin COIN) IS 
    BEGIN
        SELF.account_coin:=account_coin;
    END;

    --USE_MODE
    MEMBER FUNCTION get_use_mode return VARCHAR2 IS
    BEGIN
        RETURN SELF.use_mode;
    END;

    MEMBER PROCEDURE set_use_mode (use_mode VARCHAR2) IS 
    BEGIN
        SELF.use_mode:=use_mode;
    END;
      --BANK
    MEMBER FUNCTION get_bank return bank IS
    BEGIN
        RETURN SELF.bank_owner;
    END;

    MEMBER PROCEDURE set_bank (bank_owner bank) IS 
    BEGIN
        SELF.bank_owner:=bank_owner;
    END;

    MEMBER PROCEDURE transfer_money(amount number,associated_account varchar2) IS 
    BEGIN
        SELF.bank_owner:=bank_owner;
    END;
END;

/
--TRANSACTION 
create or replace NONEDITIONABLE TYPE transaction AS OBJECT(

    id VARCHAR2(20),
	amount	NUMBER,
	state 	VARCHAR2(20),
	commission	NUMBER,
    amount_limit NUMBER,
    transaction_coin coin,
    origin_account account,
    target_account account,

    
	CONSTRUCTOR FUNCTION transaction
		RETURN SELF AS RESULT,
	CONSTRUCTOR FUNCTION transaction(id VARCHAR2,amount NUMBER,state VARCHAR2,commission NUMBER,amount_limit NUMBER,transaction_coin coin,origin_account account,target_account account )
    
    RETURN SELF AS RESULT,
    
    MEMBER FUNCTION get_id return VARCHAR2,
    MEMBER PROCEDURE set_id (id VARCHAR2),
    MEMBER FUNCTION get_amount return NUMBER,
    MEMBER PROCEDURE set_amount (amount NUMBER),
    MEMBER FUNCTION get_state return VARCHAR2,
    MEMBER PROCEDURE set_state (state VARCHAR2),
    MEMBER FUNCTION get_commission return NUMBER,
    MEMBER PROCEDURE set_commission (commission NUMBER),
    MEMBER FUNCTION get_amount_limit return NUMBER,
    MEMBER PROCEDURE set_amount_limit (amount_limit NUMBER),
    MEMBER FUNCTION get_coin return coin,
    MEMBER PROCEDURE set_coin (transaction_coin coin),
    MEMBER FUNCTION get_origin_account return account,
    MEMBER PROCEDURE set_origin_account (origin_account account),
    MEMBER FUNCTION get_target_account return account,
    MEMBER PROCEDURE set_target_account (target_account account)
	);
    /
--TRANSACTION BODY TYPE 
create or replace NONEDITIONABLE TYPE BODY transaction
IS
    --CONSTRUCTORS 
	CONSTRUCTOR FUNCTION transaction
		RETURN SELF AS RESULT
	IS
	BEGIN
		RETURN;
	END;

	CONSTRUCTOR FUNCTION transaction(id VARCHAR2,amount NUMBER,state VARCHAR2,commission NUMBER,amount_limit NUMBER,transaction_coin coin,origin_account account,target_account account)
	RETURN SELF AS RESULT
	IS
	BEGIN
		SELF.id := id;
		SELF.amount:= amount;
		SELF.state:= state;
		SELF.commission:= commission;
        SELF.amount_limit:= amount_limit;
        SELF.transaction_coin:=transaction_coin;
        SELF.origin_account:=origin_account;
        SELF.target_account:=target_account;
		RETURN;
	END;
    --GETTERS AND SETTER
    --ID
    MEMBER FUNCTION get_id RETURN VARCHAR2 IS 
    BEGIN
        RETURN SELF.id;
    END;

    MEMBER PROCEDURE set_id (id VARCHAR2)IS
    BEGIN
        SELF.id:=id;
    END;
    --AMOUNT
    MEMBER FUNCTION get_amount return NUMBER IS
    BEGIN 
        RETURN SELF.amount;
    END;

    MEMBER PROCEDURE set_amount (amount NUMBER) IS 
    BEGIN
        SELF.amount:=amount;
    END;
    --STATE
    MEMBER FUNCTION get_state return VARCHAR2 IS
    BEGIN
        RETURN SELF.state;
    END;

    MEMBER PROCEDURE set_state (state VARCHAR2) IS 
    BEGIN
        SELF.state:=state;
    END;
    --COMMISSION
    MEMBER FUNCTION get_commission return NUMBER IS 
    BEGIN
        RETURN SELF.commission;
    END;

    MEMBER PROCEDURE set_commission (commission NUMBER) IS
    BEGIN
        SELF.commission:=commission;
    END;

    --AMOUNT LIMIT
    MEMBER FUNCTION get_amount_limit return NUMBER IS 
    BEGIN
        RETURN SELF.amount_limit;
    END;

    MEMBER PROCEDURE set_amount_limit (amount_limit NUMBER) IS
    BEGIN
        SELF.amount_limit:=amount_limit;
    END;

    --COIN
    MEMBER FUNCTION get_coin return coin IS 
    BEGIN
        RETURN SELF.transaction_coin;
    END;

    MEMBER PROCEDURE set_coin (transaction_coin coin) IS
    BEGIN
        SELF.transaction_coin:=transaction_coin;
    END;

    -- ORIGIN ACCOUNT 
    MEMBER FUNCTION get_origin_account return account IS 
    BEGIN
        RETURN SELF.origin_account;
    END;

    MEMBER PROCEDURE set_origin_account (origin_account account) IS
    BEGIN
        SELF.origin_account:=origin_account;
    END;
       -- TARGET ACCOUNT 
    MEMBER FUNCTION get_target_account return account IS 
    BEGIN
        RETURN SELF.target_account;
    END;

    MEMBER PROCEDURE set_target_account (target_account account) IS
    BEGIN
        SELF.target_account:=target_account;
    END;
END;
/
--ACOUNTING RECORD 
create or replace NONEDITIONABLE TYPE accounting_record AS OBJECT(

	id	VARCHAR2(20),
	amount number,
    related_account varchar2(25),
    type varchar2(1),
    transaction_coin coin,

    
	CONSTRUCTOR FUNCTION accounting_record
		RETURN SELF AS RESULT,
	CONSTRUCTOR FUNCTION accounting_record(id VARCHAR2,amount number,related_account varchar2, type varchar2, transaction_coin coin)
    
    RETURN SELF AS RESULT,
    MEMBER FUNCTION get_id return VARCHAR2,
    MEMBER PROCEDURE set_id (id VARCHAR2),
    MEMBER FUNCTION get_amount return number,
    MEMBER PROCEDURE set_amount (amount number),
    MEMBER FUNCTION get_related_account return varchar2,
    MEMBER PROCEDURE set_related_account (related_account varchar2),
    MEMBER FUNCTION get_type return VARCHAR2,
    MEMBER PROCEDURE set_type (type VARCHAR2),
    MEMBER FUNCTION get_coin return coin,
    MEMBER PROCEDURE set_coin (transaction_coin coin)
	);
    /
--ACOUNTING RECORD TYPE BODY
create or replace NONEDITIONABLE TYPE BODY accounting_record
IS
    --CONSTRUCTORS 
	CONSTRUCTOR FUNCTION accounting_record
		RETURN SELF AS RESULT
	IS
	BEGIN
		RETURN;
	END;

	CONSTRUCTOR FUNCTION accounting_record(id VARCHAR2,amount number,related_account varchar2,type VARCHAR2 ,transaction_coin coin )
	RETURN SELF AS RESULT
	IS
	BEGIN
		SELF.id := id;
		SELF.amount:= amount;
        SELF.related_account:=related_account;
        SELF.type:=type;
        SELF.transaction_coin:= transaction_coin;
		RETURN;
	END;
    --GETTERS AND SETTER

    --ID
    MEMBER FUNCTION get_id return VARCHAR2 IS 
    BEGIN
        RETURN SELF.id;
    END;

    MEMBER PROCEDURE set_id (id VARCHAR2) IS
    BEGIN
        SELF.id:=id;
    END;

    --AMOUNT
    MEMBER FUNCTION get_amount return number IS 
    BEGIN
        RETURN SELF.amount;
    END;

    MEMBER PROCEDURE set_amount (amount number) IS
    BEGIN
        SELF.amount:=amount;
    END;
    --RELATED_ACCOUNT
    
    MEMBER FUNCTION get_related_account return VARCHAR2 IS 
    BEGIN
        RETURN SELF.related_account;
    END;

    MEMBER PROCEDURE set_related_account (related_account VARCHAR2) IS
    BEGIN
        SELF.related_account:=related_account;
    END;
    --TYPE
    
    MEMBER FUNCTION get_type return VARCHAR2 IS 
    BEGIN
        RETURN SELF.type;
    END;

    MEMBER PROCEDURE set_type (type VARCHAR2) IS
    BEGIN
        SELF.type:=type;
    END;
     --COIN
    MEMBER FUNCTION get_coin return coin IS 
    BEGIN
        RETURN SELF.transaction_coin;
    END;

    MEMBER PROCEDURE set_coin (transaction_coin coin) IS
    BEGIN
        SELF.transaction_coin:=transaction_coin;
    END;
END;
/

--TABLES
Create table TCOIN of COIN;
Create table TBANK of BANK;
Create table TADDRESS OF ADDRESS;
Create table TCUSTOMER of CUSTOMER;
Create table TPERSON of PERSON;
Create table TASSOCIATED of ASSOCIATED;
Create table TACCOUNT of ACCOUNT;
Create table TTRANSACTION of TRANSACTION;
Create table TACCOUNTING_RECORD of ACCOUNTING_RECORD;
--
-- DROP TABLES
drop table TCOIN ;
drop table TBANK ;
drop table TADDRESS;
drop table TCUSTOMER ;
drop table TPERSON ;
drop table TASSOCIATED ;
drop table TACCOUNT ;
drop table TTRANSACTION ;
drop table TACCOUNTING_RECORD ;



/
COMMIT;
/

--INSERCIONES
--COIN
create or replace NONEDITIONABLE FUNCTION fn_generate_id(account_id varchar2) 
RETURN varchar2
IS
    v_id varchar2(50) ;
    v_number VARCHAR2(5);
BEGIN
    select TO_CHAR(ROUND(dbms_random.value(1,999))) into v_number from dual;
    v_id:=CONCAT(account_id,v_number);
    DBMS_OUTPUT.PUT_LINE(v_id);
    RETURN v_id;
END;

CREATE OR REPLACE FUNCTION fn_get_account_by_id(account_id varchar2) 
RETURN account
IS
    v_account account ;
BEGIN
    SELECT VALUE(e) INTO v_account FROM TACCOUNT e WHERE e.id = account_id;
    
    -- return the total sales
    RETURN v_account;
END;

  MEMBER PROCEDURE transfer_money(amount NUMBER,account_id varchar2) IS 
    v_account account;
    v_id varchar2(50);
    BEGIN
        v_account:=fn_get_account_by_id(account_id);
        
        if(v_account.get_coin().get_name()!=SELF.name) then
            raise_application_error(-20001,'Las divisas deben coincidir');
        else
            UPDATE TCOIN set balance=balance-amount where id=SELF.id;
            UPDATE TACCOUNT set balance=balance+amount where id=account_id;
            v_id:=fn_generate_id(account_id);
            insert into taccounting_record values(v_id,amount,v_account.get_id(),'D',SELF);
            v_id:=fn_generate_id(account_id);
            insert into taccounting_record values(v_id,amount,SELF.account_number,'C',SELF);
        end if;
    END;

INSERT INTO TCOIN VALUES(COIN('01','USD','00501000',1000000000));
INSERT INTO TCOIN VALUES(COIN('02','COP','00502000',10000000000000));
/
--BANK
INSERT INTO TBANK VALUES(BANK('005','Banco Jufecavi', 'Banco de la gente', '00500001',0));
--ADDRESS
INSERT INTO TADDRESS VALUES(ADDRESS(1 ,'CALLE 29','7-32','MALDONADO','CERCA DEL MONUMENTO DEL AJEDREZ'));
INSERT INTO TADDRESS VALUES(ADDRESS(2 ,'CARRERA 2A','45-27','LAS QUINTAS',''));
INSERT INTO TADDRESS VALUES(ADDRESS(3 ,'CARRERA 9','24-2','LAS NIEVES','TORRES DE LA CANDELARIA APTO 405'));
INSERT INTO TADDRESS VALUES(ADDRESS(4 ,'CALLE 29','7-48','MALDONADO','CERCA DEL MONUMENTO DEL AJEDREZ'));
--PERSON
INSERT INTO TPERSON VALUES(PERSON('JULIAN FELIPE' ,'CASTELLANOS VILLATE','CC','1049652989'));
INSERT INTO TPERSON VALUES(PERSON('EDISON FERNEY' ,'ARIAS PLAZAS','CE','1049655049'));
INSERT INTO TPERSON VALUES(PERSON('DIDIER YAFFET ' ,'COY ORTIZ','CC','7179415'));
INSERT INTO TPERSON VALUES(PERSON('ANA EVARISTA ' ,'VILLATE PORRAS','CC','40011382'));
--CUSTOMER

create or replace  PROCEDURE pr_create_customer(person_id tperson.id%TYPE,address_id taddress.id%TYPE,nationality varchar2)
IS 
    v_address address;
    v_person person;
BEGIN
    SELECT VALUE(e) INTO V_PERSON FROM TPERSON e WHERE e.id = person_id;
    SELECT VALUE(e) INTO V_ADDRESS FROM TADDRESS e WHERE e.id = address_id;
    
INSERT INTO TCUSTOMER VALUES (v_person,nationality,v_address);

END  pr_create_customer;

BEGIN
    INSERT INTO TADDRESS VALUES(ADDRESS(1 ,'CALLE 29','7-32','MALDONADO','CERCA DEL MONUMENTO DEL AJEDREZ'));
    INSERT INTO TPERSON VALUES(PERSON('JULIAN FELIPE' ,'CASTELLANOS VILLATE','CC','1049652989'));
    pr_create_customer('1049652989',1,'Colombiano');
END  ;
/
BEGIN
    pr_create_customer('1049655049',2,'Venezolano');
END  ;
/
BEGIN
    pr_create_customer('7179415',3,'Colombiano');
END  ;
/
BEGIN
    pr_create_customer('40011382',4,'Colombiano');
END  ;
/
--ACCOUNT

create or replace NONEDITIONABLE FUNCTION fn_create_account_number(bank_number varchar2,coin_type varchar2,account_id varchar2) 
   RETURN VARCHAR2 
   IS account_number VARCHAR2(10);
   BEGIN 
      account_number:=CONCAT(CONCAT(bank_number,coin_type),CONCAT('00',account_id));
      RETURN(account_number); 
END;

create or replace NONEDITIONABLE PROCEDURE pr_create_account(account_id varchar2,customer_id tcustomer.customer_info.id%TYPE,account_type varchar2,coin_id tcoin.id%TYPE,balance number,use_mode varchar2,bank_id tbank.id%TYPE)
IS 
    v_customer customer;
    v_coin coin;
    v_bank bank;
    v_id varchar2(10);
BEGIN
    SELECT VALUE(e) INTO V_COIN FROM TCOIN e WHERE e.id = coin_id;
    SELECT VALUE(e) INTO V_CUSTOMER FROM TCUSTOMER e WHERE e.customer_info.id= customer_id;
    SELECT VALUE(e) INTO V_BANK FROM TBANK e WHERE e.id = bank_id;
    v_id:=fn_create_account_number(v_bank.get_id(),v_coin.get_id(),account_id);

INSERT INTO TACCOUNT VALUES (v_id,v_customer,account_type,v_coin,balance,use_mode,v_bank);

END  pr_create_account;

BEGIN
    pr_create_account('1','1049652989','PR','01',0,'DC','005');
END  ;
/
BEGIN
    pr_create_account('2','1049655049','RG','02',0,'DC','005');
END  ;
/
BEGIN
    pr_create_account('3','7179415','RG','01',0,'CH','005');
END  ;
/
BEGIN
    pr_create_account('4','40011382','PR','02',0,'CH','005');
END  ;
/
--ASSOCIATED

create or replace  PROCEDURE pr_create_associated(person_id tperson.id%TYPE,customer_id tcustomer.customer_info.id%TYPE,account_number varchar2)
IS 
    v_customer customer;
    v_person person;
BEGIN
    SELECT VALUE(e) INTO V_PERSON FROM TPERSON e WHERE e.id = person_id;
    SELECT VALUE(e) INTO V_CUSTOMER FROM TCUSTOMER e WHERE e.customer_info.id= customer_id;
    
INSERT INTO TASSOCIATED VALUES (v_person,account_number,v_customer);

END  pr_create_associated;
/
BEGIN
    pr_create_associated('7179415','1049652989','00501003');
END  ;
/
BEGIN
    pr_create_associated('40011382','1049652989','00502004');
END  ;
/
BEGIN
    pr_create_associated('1049652989','40011382','00501001');
END  ;
/
BEGIN
    pr_create_associated('1049655049','40011382','00502002');
END  ;
/

--TRANSFERIR DINERO COIN -CUENTA DOLARES
declare 
v_coin coin;
begin 
    SELECT VALUE(e) INTO v_coin FROM TCOIN e WHERE e.id = '01';
    v_coin.transfer_money(200,'00501001');
end;

--TRANSEFERIR DINERO COIN-CUENTA PESOS
declare 
v_coin coin;
begin 
    SELECT VALUE(e) INTO v_coin FROM TCOIN e WHERE e.id = '02';
    v_coin.transfer_money(20000,'00502002');
    COMMIT;
end;

-- TRANSACCION DE CUENTA A CUENTA 
--
declare 
v_account account;
begin 
    SELECT VALUE(e) INTO v_account FROM TACCOUNT e WHERE e.id = '00501001';
    DBMS_OUTPUT.put_line(v_account.id);
    v_account.transfer_money(10,'7179415');
end;

--scripts ingeniero 
create or replace PROCEDURE PR_SEND_PAYMENT(
	p_trace_key VARCHAR2,--(20),
	p_sender_bank VARCHAR2,--(3)
	p_sender_account VARCHAR2,--(18),
	p_amount NUMBER,
	p_currency VARCHAR2,--(3), DIVISAS EN FORMATO ISO-4217
	p_receiver_bank VARCHAR2,--(3),
	p_receiver_account VARCHAR2,--(18),
	p_date_time DATE
)
IS
BEGIN
	NULL;
END;
/
create or replace FUNCTION FN_RECEIVE_PAYMENT(
	p_trace_key VARCHAR2,--(20),
	p_sender_bank VARCHAR2,--(3)
	p_sender_account VARCHAR2,--(18),
	p_amount NUMBER,
	p_currency VARCHAR2,--(3),DIVISAS EN FORMATO ISO-4217
	p_receiver_bank VARCHAR2,--(3),
	p_receiver_account VARCHAR2,--(18),
	p_date_time DATE
)
RETURN VARCHAR2 IS
	l_cause_of_return VARCHAR2(1);
	--0 - Transacción Realizada
	--1 - El banco no existe.
	--2 - La cuenta no existe en el banco beneficiario.
	--3 - La cuenta receptora se encuentra en otra divisa.
	--4 - Faltan datos necesarios para efectuar la transacción.
BEGIN
	RETURN l_cause_of_return;
END;
/
create or replace NONEDITIONABLE PROCEDURE PR_UPDATE_STATUS(
p_trace_key VARCHAR2,--(20),
p_date	DATE,
p_status VARCHAR2--(1));
--0 - Transacción Realizada
--1 - El banco no existe.
--2 - La cuenta no existe en el banco beneficiario.
--3 - La cuenta receptora se encuentra en otra divisa.
--4 - Faltan datos necesarios para efectuar la transacción.
)
IS
BEGIN
	NULL;
END;



BEGIN
    INSERT INTO TADDRESS VALUES(ADDRESS(1 ,'CALLE 29','7-32','MALDONADO','CERCA DEL MONUMENTO DEL AJEDREZ'));
    INSERT INTO TPERSON VALUES(PERSON('JULIAN FELIPE' ,'CASTELLANOS VILLATE','CC','1049652989'));
    pr_create_customer('1049652989',1,'Colombiano');
END  ;


SELECT *