create database combined;
use combined;
CREATE TABLE orders (
    id INT PRIMARY KEY,
    order_name VARCHAR(25),
    cost BIGINT(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    created_by VARCHAR(25),
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    modified_by VARCHAR(25)
);
insert into orders values (1,'biryani',152.0,now(),'hari',now(),'yash');
insert into orders values (2,'pizza',200,now(),'sai',now(),'sri');
insert into orders values (3,'grill chicken',500,now(),'vamsi',now(),'koushik');
insert into orders values (4,'roti curry',250,now(),'sree',now(),'lakshmi');
insert into orders values (5,'kushka',60,now(),'hari',now(),'yash');
CREATE TABLE payment (
    id INT PRIMARY KEY,
    price bigint(20),
    payment_id INT,
    order_id INT,
    payment_status VARCHAR(25),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    created_by VARCHAR(25),
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    modified_by VARCHAR(25),
    FOREIGN KEY (order_id) REFERENCES orders(id));
insert into payment values (1,200,5,1,'completed',now(),'prasad',now(),'venkat');
insert into payment values (2,250,4,2,'not completed',now(),'tarun',now(),'sai');
insert into payment values (3,300,3,3,'completed',now(),'shiva',now(),'varun');
insert into payment values (4,350,2,4,'notcompleted',now(),'shima',now(),'tej');
insert into payment values (5,400,1,5,'completed',now(),'datta',now(),'tejash');

CREATE TABLE restaurant (
    id INT PRIMARY KEY,
    restaurant_name VARCHAR(25),
    restaurant_id INT,
    location VARCHAR(25),
    order_id INT,
    ratings int(20),
    payment_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    created_by VARCHAR(25),
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    modified_by VARCHAR(25),
    FOREIGN KEY (order_id) REFERENCES orders(id),
    FOREIGN KEY (payment_id) REFERENCES payment(id)
);
insert into restaurant values(1,'nandana palace',2121,'kr puram',2,4,1,now(),'cheran',now(),'cherry');
insert into restaurant values(2,'raj biryani',2233,'hoskotey',3,5,2,now(),'narayana',now(),'pavan');
insert into restaurant values(3,'mallika',2113,'ayyapa nagar',4,3,3,now(),'naga',now(),'dharma');
insert into restaurant values(4,'brindavan',1212,'tc paliya',5,1,4,now(),'chetan',now(),'krish');
insert into restaurant values(5,'park and eat',1313,'tc paliya',1,4,5,now(),'anil',now(),'luffy');

CREATE TABLE delivery (
    id INT PRIMARY KEY,
    person_name VARCHAR(25),
    mode_of_payment ENUM('Cash', 'Card', 'Online'),
    order_id INT,
    restaurant_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    created_by VARCHAR(25),
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    modified_by VARCHAR(25),
    FOREIGN KEY (order_id) REFERENCES orders(id),
    FOREIGN KEY (restaurant_id) REFERENCES restaurant(id)
);

insert into delivery values(1,'shiv','card',1,2,now(),'somesh',now(),'ysah');
insert into delivery values(2,'kumar','card',2,1,now(),'shiva',now(),'arjun');
insert into delivery values(3,'kumba','card',3,3,now(),'uma',now(),'amar');
insert into delivery values(4,'kesav','card',4,5,now(),'danush',now(),'umar');
insert into delivery values(5,'niraj','card',5,4,now(),'chiru',now(),'umseh');