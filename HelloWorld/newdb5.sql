/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2019/6/29 11:14:14                           */
/*==============================================================*/


drop table if exists Course;

drop table if exists Grade;

drop table if exists Student;

drop table if exists Teacher;

/*==============================================================*/
/* Table: Course                                                */
/*==============================================================*/
create table Course
(
   couse_id             int not null,
   t_id                 int,
   primary key (couse_id)
);

/*==============================================================*/
/* Table: Grade                                                 */
/*==============================================================*/
create table Grade
(
   student_id           int not null,
   couse_id             int not null,
   score                int not null,
   primary key (student_id, couse_id)
);

/*==============================================================*/
/* Table: Student                                               */
/*==============================================================*/
create table Student
(
   student_id           int not null,
   primary key (student_id)
);

/*==============================================================*/
/* Table: Teacher                                               */
/*==============================================================*/
create table Teacher
(
   t_id                 int not null,
   primary key (t_id)
);

alter table Course add constraint FK_teach foreign key (t_id)
      references Teacher (t_id) on delete restrict on update restrict;

alter table Grade add constraint FK_select foreign key (student_id)
      references Student (student_id) on delete restrict on update restrict;

alter table Grade add constraint FK_to foreign key (couse_id)
      references Course (couse_id) on delete restrict on update restrict;

