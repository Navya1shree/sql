create database facebook_db;
use facebook_db;

create table users (
    user_id char(4) primary key,
    username varchar(20) not null unique,
    email varchar(50) not null unique,
    age int check (age between 13 and 80),
    country varchar(20) default 'india'
);
insert into users values 
('F001','rahul','rahul@gmail.com',25,'india');

create table posts (
    post_id int primary key,
    content varchar(100) not null unique,
    likes int default 0 check (likes >= 0),
    privacy varchar(10) check (privacy in ('public','private')),
    status varchar(10) default 'active'
);

insert into posts values
(1,'my first post',10,'public','active');

create table comments (
    comment_id int primary key,
    comment_text varchar(100) not null unique,
    likes int default 0 check (likes >= 0),
    rating int check (rating between 1 and 5),
    status varchar(10) default 'visible'
);
insert into comments values
(1,'nice post',2,4,'visible'),
(2,'awesome',1,5,'visible');

create table fb_notifications (
    notification_id int primary key,
    message varchar(100) not null unique,
    count int default 1 check (count >= 1),
    type varchar(10) check (type in ('like','comment','share')),
    status varchar(10) default 'unread'
);

insert into fb_notifications values
(1,'someone liked your post',1,'like','unread');

create table videos (
    video_id int primary key,
    title varchar(50) not null unique,
    views int default 0 check (views >= 0),
    duration int check (duration between 10 and 300),
    category varchar(20) default 'general'
);

insert into videos values
(1,'funny video',100,60,'entertainment'),
(2,'travel vlog',200,120,'travel');

