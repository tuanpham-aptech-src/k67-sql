use company_db;
create table users(
 id serial primary key,
 name varchar(255),
 department_id bigint unsigned not null,
 email varchar(100) unique not null,
 status varchar(100) default 'active', -- active | pending | inactive | suspend
 salary decimal(10,2) constraint tien_luong check (salary >= 5320000),
 created_at timestamp default NOW(),
 FOREIGN KEY (department_id) REFERENCES departments(id) ON DELETE CASCADE
);
-- timestamp

insert into departments (name, code) values('Kế toán', 'AC');

insert into users (name, department_id, email, salary) values('Pham Tuan', 3, 'abc@gmail.com', 46000000);
insert into users (name, department_id, email, salary, status) values('Văn Tùng', 3, 'abusersc123@gmail.com', 46000000,'pending');