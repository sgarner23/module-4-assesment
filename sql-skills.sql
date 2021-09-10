insert into artist (
  name,
  artist_id 
  )
  
  values (
    'DJ Stephen',
    854
    );

insert into artist (
  name,
  artist_id 
  )
  
  values (
    'El Jefe',
    855
    );
insert into artist (
  name,
  artist_id 
  )
  
  values (
    'Tina and the Tigers',
    856
    );

    -- -------------------------------------------------

select * from artist
order by name 
limit 5;

---------------------------------------------------------
select first_name, last_name 
from employee 
where city = 'Calgary';


--------------------------------------------------------

select * from employee
where reports_to = 2;

--------------------------------------------------------

select count(city) 
from employee
where city = 'Lethbridge';

--------------------------------------------------------

select count (billing_country)
from invoice 
where billing_country = 'USA';

--------------------------------------------------------

select max(total) 
from invoice;

--------------------------------------------------------

select min(total) 
from invoice;

--------------------------------------------------------
select *
from invoice 
where total > 5;

--------------------------------------------------------
select count (total)
from invoice 
where total < 5;

-------------------------------------------------------

select sum(total) 
from invoice;

-------------------------------------------------------

select * 
from invoice i 
join invoice_line il
on i.invoice_id = il.invoice_id
where unit_price > 0.99;

---------------------------------------------------------

select i.invoice_date, c.first_name,
c.last_name
from invoice i
join customer c
on c.customer_id = i.customer_id;


--------------------------------------------------

select c.first_name, c.last_name, 
e.first_name, e.last_name
from customer c
join employee e
on c.support_rep_id = e.employee_id;

--------------------------------------------------

select a.title, ar.name
from album a 
join artist ar
on a.artist_id = ar.artist_id;



-----------extra credit--------------------------
select * 
from artist 
order by name desc
limit 10;


---------------------------------------------------

select * 
from artist 
where name like 'Black%';

---------------------------------------------------
select * 
from artist 
where name like '%Black%';


--------------------------------------------------

select min(birth_date)
from employee;


--------------------------------------------------

select max(birth_date)
from employee;

--------------------------------------------------

select count(*) 
from invoice 
where billing_state in ('CA', 'TX', 'AZ');

--------------------------------------------------

select pt.track_id
from playlist_track pt 
join playlist p
on p.playlist_id = pt.playlist_id
where name = 'Music';

-------------------------------------------------
select t.name 
from track t 
join playlist_track pt 
on pt.track_id = t.track_id
where playlist_id = 5;

--------------------------------------------------
select t.name, p.name
from track t
join playlist_track pt
on t.track_id = pt.track_id
join playlist p 
on p.playlist_id = pt.playlist_id;

--------------------------------------------------

select t.name, a.title, g.name 
from track t 
join album a on a.album_id = t.album_id
join genre g on g.genre_id = t.genre_id
where g.name = 'Alternative & Punk';
