create database assignment_ineuron;
use assignment_ineuron;
create table product_info(
pr_id int ,
product_name varchar(30));
create table product_info_likes(
user_id int ,
pr_id int ,
liked_date date);
alter table product_info add constraint unique key(pr_id);
alter table product_info_likes add constraint foreign key(pr_id) references product_info(pr_id);
insert into product_info values (1001, "blog"), (1002,"yt"), (1003,"education");
insert into product_info_likes values (1, 1001, "2023-08-18"), (2, 1003,"2023-08-17");
drop table product_info_likes;
select * from product_info_likes;  
select product_info.pr_id from product_info left join product_info_likes
on product_info.pr_id=product_info_likes.pr_id group by product_info.pr_id having count(product_info_likes.pr_id)=0;


