-- Create tables

CREATE TABLE IF NOT EXISTS public.data_2022_dec (
	event_time timestamp,
	event_type character varying(16) NOT NULL,
	product_id integer NOT NULL,
	price FLOAT NOT NULL,
	user_id integer NOT NULL,
	user_session UUID
);

CREATE TABLE IF NOT EXISTS public.data_2022_oct (
	event_time timestamp,
	event_type character varying(16) NOT NULL,
	product_id integer NOT NULL,
	price FLOAT NOT NULL,
	user_id integer NOT NULL,
	user_session UUID
);

CREATE TABLE IF NOT EXISTS public.data_2022_nov (
	event_time timestamp,
	event_type character varying(16) NOT NULL,
	product_id integer NOT NULL,
	price FLOAT NOT NULL,
	user_id integer NOT NULL,
	user_session UUID
);

CREATE TABLE IF NOT EXISTS public.data_2023_janv (
	event_time timestamp,
	event_type character varying(16) NOT NULL,
	product_id integer NOT NULL,
	price FLOAT NOT NULL,
	user_id integer NOT NULL,
	user_session UUID
);

-- Fill tables

COPY public.data_2022_dec FROM '/customer/data_2022_dec.csv' DELIMITER ',' CSV HEADER;

COPY public.data_2022_oct FROM '/customer/data_2022_oct.csv' DELIMITER ',' CSV HEADER;

COPY public.data_2022_nov FROM '/customer/data_2022_nov.csv' DELIMITER ',' CSV HEADER;

COPY public.data_2023_janv FROM '/customer/data_2023_janv.csv' DELIMITER ',' CSV HEADER;

