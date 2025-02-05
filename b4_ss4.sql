create database film_management;

use film_management;

create table category(
	category_id int primary key auto_increment,
    category_name varchar(50) not null,
    cat_description text,
    cat_status bit not null check(cat_status in (0,1))
);

create table films(
	film_id int primary key auto_increment,
    film_name varchar(50) not null,
    content text not null,
    duration time not null,
    director varchar(50) not null,
    release_date date not null
);

create table category_films(
	category_id int not null,
    film_id int not null,
    foreign key (category_id) references category(category_id),
    foreign key (film_id) references films(film_id)
);

alter table films
add column film_status tinyint default 1;

alter table category
drop column cat_status;

ALTER TABLE category_films
DROP FOREIGN KEY category_id;

ALTER TABLE category_films
DROP FOREIGN KEY film_id;
