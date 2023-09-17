create database bank;

create table user(
	user_id int not null auto_increment primary key,
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	email varchar(255) not null unique,
	password varchar(255) not null,
	token varchar(255) null,
	code int null,
	verified int default 0,
	verified_at datetime,
	create_at timestamp,
	updated_at timestamp default now()
);
#--Bank accounts table--
create table accounts(
	account_id int not null auto_increment primary key,
	user_id int, #use foreign key
	account_number varchar(100) not null,
	account_name varchar(50) not null,
	account_type varchar(50) not null,
	balance decimal(18,2) default 0.00,
	create_at timestamp,
	update_at timestamp default now(),
	foreign key(user_id) references user(user_id) on delete cascade
);

#--Transaction history table--
create table transaction_history(
	transaction_id int not null auto_increment primary key,
    account_id int, 
    transaction_type varchar(50) not null,
    amount decimal(18,2),
    source varchar(50) null,
    status varchar(50) null, #succes/failed
    reason_code varchar(100) null, #insufficient funds
    create_at timestamp,
    foreign key(account_id) references accounts(account_id) on delete cascade
);

#--Payments table--
create table payments(
	payment_id int not null auto_increment primary key,
    account_id int,
    beneficiary varchar(50) null, 
    beneficiary_acc_no varchar(255) null,
    amount decimal (18,2) null,
    reference_no varchar(100) null,
    status varchar(50) null, #succes/failed
    reason_code varchar(100) null, #insufficient funds
    create_at timestamp,
    foreign key(account_id) references accounts(account_id) on delete cascade
);

#--transaction history view
create view v_transaction_history
	as
		select
			t.transaction_id,
			a.account_id,
			u.user_id,
			t.transaction_type,
			t.amount,
			t.source,
			t.status,
			t.reason_code,
			t.create_at
		from
			transaction_history as t #create a alias
		inner join
			accounts as a #so do create a alias]
		on
			t.account_id=a.account_id
		inner join
			user as u #alias
		on
			a.user_id=u.user_id;
    
#--payment history
create view v_payments
	as
		select
			p.payment_id,
			a.account_id,
			u.user_id,
			p.beneficiary,
			p.beneficiary_acc_no,
			p.amount,
			p.status,
			p.reference_no,
			p.reason_code,
			p.create_at
		from
			payments as p
		inner join
			accounts as a
		on
			p.account_id=a.account_id
		inner join
			user as u
		on
			a.user_id=u.user_id;
            
		#view
        select * from v_transaction_history;
        select * from v_payments;
select * from user;
show tables;