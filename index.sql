select tablespace_name, status from dba_tablespaces;
alter tablespace "student_examination_sys" online;
create table student
(
    id   varchar2(3)   primary key not null,
    name NVARCHAR2(10) not null,
    age number(4) not null ,
    sex char(3) check (sex = '男' or sex = '女') not null
);

create table subject
(
    id varchar2(4) primary key not null,
    subject NVARCHAR2(10),
    teacher NVARCHAR2(10),
    description varchar(50)
);

create table score
(
    id number(4) primary key not null,
    student_id varchar2(3) references student(id),
    subject_id varchar2(4) references subject(id),
    score decimal
);


insert into student values ('001', '张三', 18, '男');
insert into student values ('002', '李四', 20, '女');
insert into subject values ('1001', '语文', '王老师', '本次考试比较简单');
insert into subject values ('1002', '数学', '刘老师', '本次考试比较难');
insert into score values (1, '001', '1001', 80);
insert into score values (2, '002', '1002', 60);
insert into score values (3, '001', '1001', 70);
insert into score values (4, '002', '1002', 60.5);