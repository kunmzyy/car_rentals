CREATE TABLE dim_car_info(
	car_id INT PRIMARY KEY NOT NULL
	,car_name VARCHAR(55)
	,car_model VARCHAR(55)
	,car_price DECIMAL(8,2)
	,car_availability VARCHAR(55)
	,car_rating DECIMAL(8,2)
	,return_status VARCHAR(55)
);

CREATE TABLE dim_renters_info(
	renters_id INT PRIMARY KEY NOT NULL
	,first_name VARCHAR(55)
	,last_name VARCHAR(55)
	,email VARCHAR(55)
	,phone_number VARCHAR(55)
	
);

CREATE TABLE dim_date(
	date_id INT PRIMARY KEY NOT NULL
	,pickup_date DATE
	,return_date DATE
	,month INT
	,year INT
	,day INT
);


CREATE TABLE ft_date(
	fact_Id INT PRIMARY KEY NOT NULL
	,price_per_hour INt
	,total_hour_rental DECIMAL
	,car_id INT
	,renters_id INT
	,date_id INT
	,total_amount_paid DECIMAL
);