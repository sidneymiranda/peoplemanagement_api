create table person (id int8 generated by default as identity, birth_date date, cpf varchar(255) not null, first_name varchar(255) not null, last_name varchar(255) not null, primary key (id));
create table person_phones (person_id int8 not null, phones_id int8 not null);
create table phone (id int8 generated by default as identity, number varchar(255) not null, type varchar(255) not null, primary key (id));
alter table if exists person add constraint UK_ovihp2p82c97wbe60mv11txrj unique (cpf);
alter table if exists person_phones add constraint UK_haq8fex9okoi3kpaxmqe1kpcl unique (phones_id);
alter table if exists phone add constraint UK_jpobbsduo00bgyro8gurj7for unique (number);
alter table if exists person_phones add constraint FKincp66whfw4olpi3osmd8mylw foreign key (phones_id) references phone;
alter table if exists person_phones add constraint FKo03nn6lgnt28li9oxmhu65esh foreign key (person_id) references person;
