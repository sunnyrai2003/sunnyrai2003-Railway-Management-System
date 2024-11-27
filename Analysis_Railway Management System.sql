Create Database railway_system;
show databases;
use railway_system;

CREATE TABLE IF NOT EXISTS Reservation (
Train_id int,
Train_name Text,
Train_type TEXT,
Coaches TEXT,
PNR_no int,
First_name TEXT,
Last_name TEXT,   
Contact TEXT,
Email_id TEXT,   
Booking_id text,
Booking_date  date,  
Source_station TEXT,    
Destination_station TEXT,
Seat_alloted TEXT,    
State TEXT,    
City TEXT,   
Duration_minutes INT,    
Payment_mode TEXT,
Fair int,   
Booking_status TEXT,
Train_Km int);

insert into Reservation (Train_id, Train_name, Train_type, Coaches,PNR_no, First_name, Last_name, Contact, Email_id, Booking_id, Booking_date,  Source_station, Destination_station, Seat_alloted, State, City, Duration_minutes, Payment_mode, Fair, Booking_status,Train_Km)
values
    (12490, 'Samparak_Kranti','Express', 25,45327839, 'Sneha', 'Jain', 9876543210, 'sneha@example.com', 6, '2024/09/25', 'Jaipur', 'Delhi', 5, 'Rajasthan', 'Jaipur', 180, 'Online', 640, 'Confirmed',840 ),
    (11450, 'Varanasi Super', 'Express', 25,47836904, 'Rahul', 'Verma', 8765432109, 'rahul@example.com', 7, '2024/08/21', 'Mumbai', 'Pune', 3, 'Maharashtra', 'Mumbai', 120, 'Online', 750, 'Waiting',200 ),
    (42999, 'Memu 2', 'Passenger', 10, 45527842, 'Amit', 'Yadav', 9876543211, 'amit@example.com', 8, '2024/07/15', 'Delhi', 'Agra', 6, 'UP', 'Delhi', 240, 'Cash', 350, 'Confirmed', 150),
    (80124, 'Vandebharat', 'Superfast', 20,45627843, 'Neha', 'Singh', 8765432108, 'neha@example.com', 9, '2024/10/08', 'Kolkata', 'Chennai', 8, 'West Bengal', 'Kolkata', 300, 'Cash', 270, 'Confirmed',250 ),
    (71424, 'Shanti Express', 'Express', 22,45727844, 'Rajat', 'Mishra', 9876543212, 'rajat@example.com', 10, '2024/11/28', 'Bhopal', 'Indore', 3, 'MP', 'Bhopal', 90, 'Online', 300, 'Waiting', 300),
    (62374, 'Rajdhani ', 'Rajdhani', 25,45927845, 'Sachin', 'Kumar', 9456789123, 'sachin@example.com', 11, '2024/09/10', 'Varanasi', 'Lucknow', 4, 'UP', 'Varanasi', 150, 'Cash', 450,'Confirmed',280),
    (56479, 'Duronto Express', 'Express', 18,46027846, 'Anjali', 'Gupta', 9876543213, 'anjali@example.com', 12, '2024/07/30', 'Chennai', 'Bangalore', 5, 'Tamil Nadu', 'Chennai', 180, 'Online', 800, 'Confirmed',180),
    (47941, 'Shatabdi', 'Super fast', 15, 46127847, 'Vishal', 'Sharma', 8765432107, 'vishal@example.com', 13, '2024/10/15', 'Hyderabad', 'Bangalore', 7, 'Telangana', 'Hyderabad', 210, 'Cash', 740, 'Confirmed',220),
    (25473, 'Local', 'Passenger', 18,46227848, 'Preeti', 'Verma', 9876543214, 'preeti@example.com', 14, '2024/11/05', 'Ahmedabad', 'Surat', 3, 'Gujarat', 'Ahmedabad', 120, 'Online', 1200, 'Confirmed',270),
    (14789, 'Darbhanga Expresss', 'Superfast', 20,46327849, 'Aryan', 'Rajput', 8765432106, 'aryan@example.com', 15, '2024/09/20', 'Delhi', 'Jaipur', 6, 'Rajasthan', 'Delhi', 240, 'Online', 550, 'Confirmed',320),
    (14228, 'Mahamna','Express', 20,45267838, 'Manish', 'Sharma', 9569090882, 'dixit571@gmail.com', 1 , '2024/07/12', 'Harpalpur', 'Delhi', 1, 'MP', 'Harpalpur', '120', 'Online', 640, 'Waiting', 190),
	(25486, 'Ambedkar Express', 'Express', 24,45327840, 'Vipul', 'Rabari', 9545789346, 'vr71@gmail.com', 2 , '2022/09/11', 'Ahmedabad', 'Mumbai', 2, 'Gujrat', 'Ahmedabad', '270', 'Cash', 780, 'Confirmed',400),
	(47111, 'Enter_City','Express', 22,45247875, 'Harshit', 'Shahu', 9046987634, 'kp91@gmail.com', 3 , '2024/06/10', 'Ropad', 'Delhi', 2, 'Punjab', 'Ropad', '460', 'Cash', 220,'Confirmed', 270),
	(14816, 'Memu ','Passenger', 12,45027849, 'Prince', 'Parihar', 9935677846, 'dg41@gmail.com', 4 , '2024/08/16', 'Chhatarpur', 'Bhopal', 4, 'MP', 'Chhatarpur', '90', 'Online', 100, 'Waiting',460 ),
	(48231, 'Chambal','Express', 25,45827848, 'Kapil', 'Payak', 8765942461, 'rk51@gmail.com', 5 , '2024/11/03', 'Lucknow', 'Banda', 10, 'UP', 'Lucknow', '620', 'Cash', 1350, 'Confirmed', 620);
    
select *from Reservation;

-- Add column age name and enter age all the Passanger..

Alter table Reservation add column age int;
update Reservation
set age=case
    when Train_id=12490 then 15
	WHEN Train_id = 11450 THEN 20
    WHEN Train_id = 42999 THEN 18
    WHEN Train_id = 80124 THEN 25
    WHEN Train_id = 71424 THEN 30
    WHEN Train_id = 62374 THEN 18
    WHEN Train_id = 56479 THEN 22
    WHEN Train_id = 47941 THEN 27
    WHEN Train_id = 25473 THEN 32
    WHEN Train_id = 14789 THEN 60
    WHEN Train_id = 14228 THEN 45
    WHEN Train_id = 25486 THEN 50
    WHEN Train_id = 47111 THEN 32
    WHEN Train_id = 14816 THEN 28
    WHEN Train_id = 48231 THEN 18
    ELSE 0
END;

select * from Reservation

-- Quary perform
 select * from Reservation;
 
 -- 1. Quary to check passanger name or Source_station to Destination_station..
 
Select First_name, Last_name, Source_station, Destination_station
FROM Reservation;

-- 2. Quary towhich Reservation..Waiting and confirmed..

select count(*) from Reservation;
select Train_name, first_name,Booking_status from Reservation where Booking_status='confirmed' or Booking_status='Waiting';

-- 3. Quary to fair check Max, Avg and Min

select max(Fair) from Reservation;
select Avg(Fair) from Reservation;
select min(Fair) from Reservation;
 
-- 4. Quary to starting Booking to ending booking date Reservation..

SELECT 
    PNR_no, Train_id, Train_name, Booking_date
FROM
    Reservation
WHERE
    Booking_date BETWEEN '2024/06/10' AND '2024/11/28'
ORDER BY Booking_date;

-- 5.find out PNR_no, Train name, Source station and destination station where  First_name = Rahul and last_name = 'verma' where to go and ..

SELECT 
    PNR_no, Train_name, Source_station, Destination_station
FROM
    Reservation
WHERE
    First_name = 'Rahul'
        OR Last_name = ' verma';
        
-- 6. Quary for check payment mode those train_name and First_name..

select Train_name, First_name  from Reservation where Payment_mode='online';
select Train_name, First_name  from Reservation where Payment_mode='Cash';


-- 7. Quary for first_name, last_name, Booking_status and passanger age..

select first_name, last_name, Train_type, Booking_status, age from Reservation;

-- 8. Quary for check passanger name, Train traverl km, age grater then 50..

select Train_type, First_name, Last_name, Train_km from Reservation where age>=50;

-- 9 Quary for total duration all train..

Select sum(Duration_minutes) as Total_Duration
From Reservation;

-- 10. Quary fro select minimum age in Reservation table present..

SELECT 
    age
FROM
    Reservation
WHERE
    age = (SELECT 
            MIN(age)
        FROM
        Reservation);	

-- 11. Quary for those sourcr station name ending latter 'r'.. 

SELECT Source_station 
FROM Reservation
WHERE Source_station LIKE '%r';

-- 12. Quary for check the fair type..

SELECT 
    Seat_alloted, Train_name, Train_type
FROM
    Reservation
WHERE
    fair = ANY (SELECT 
            fair
        FROM
            Reservation
        WHERE
            city = 'Delhi');
			
--  13. Quary from using concate method using add on two coloum in a single column..so first and last name concat.

Select CONCAT(First_name,
' ', Last_name) AS	
full_name FROM Reservation;





            






  
