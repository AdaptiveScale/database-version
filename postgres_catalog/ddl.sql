CREATE SCHEMA IF NOT EXISTS "public";CREATE TABLE "public"."payment_p2007_04"("payment_id" serial NOT NULL , "customer_id" int2 NOT NULL , "staff_id" int2 NOT NULL , "rental_id" int4 NOT NULL , "amount" numeric NOT NULL , "payment_date" timestamp NOT NULL );CREATE TABLE "public"."actor"("actor_id" serial NOT NULL , "first_name" varchar(45) NOT NULL , "last_name" varchar(45) NOT NULL , "last_update" timestamp NOT NULL );CREATE TABLE "public"."payment_p2007_06"("payment_id" serial NOT NULL , "customer_id" int2 NOT NULL , "staff_id" int2 NOT NULL , "rental_id" int4 NOT NULL , "amount" numeric NOT NULL , "payment_date" timestamp NOT NULL );CREATE TABLE "public"."customer_list"("id" int4, "name" text, "address" varchar(50), "zip code" varchar(10), "phone" varchar(20), "city" varchar(50), "country" varchar(50), "notes" text, "sid" int2);CREATE TABLE "public"."payment_p2007_02"("payment_id" serial NOT NULL , "customer_id" int2 NOT NULL , "staff_id" int2 NOT NULL , "rental_id" int4 NOT NULL , "amount" numeric NOT NULL , "payment_date" timestamp NOT NULL );CREATE TABLE "public"."film"("film_id" serial NOT NULL , "title" varchar(255) NOT NULL , "description" text, "release_year" year, "language_id" int2 NOT NULL , "original_language_id" int2, "rental_duration" int2 NOT NULL , "rental_rate" numeric NOT NULL , "length" int2, "replacement_cost" numeric NOT NULL , "rating" mpaa_rating, "last_update" timestamp NOT NULL , "special_features" _text, "fulltext" tsvector NOT NULL );CREATE TABLE "public"."sales_by_store"("store" text, "manager" text, "total_sales" numeric);CREATE TABLE "public"."actor_info"("actor_id" int4, "first_name" varchar(45), "last_name" varchar(45), "film_info" text);CREATE TABLE "public"."address"("address_id" serial NOT NULL , "address" varchar(50) NOT NULL , "address2" varchar(50), "district" varchar(20) NOT NULL , "city_id" int2 NOT NULL , "postal_code" varchar(10), "phone" varchar(20) NOT NULL , "last_update" timestamp NOT NULL );CREATE TABLE "public"."payment"("payment_id" serial NOT NULL , "customer_id" int2 NOT NULL , "staff_id" int2 NOT NULL , "rental_id" int4 NOT NULL , "amount" numeric NOT NULL , "payment_date" timestamp NOT NULL );CREATE TABLE "public"."rental"("rental_id" serial NOT NULL , "rental_date" timestamp NOT NULL , "inventory_id" int4 NOT NULL , "customer_id" int2 NOT NULL , "return_date" timestamp, "staff_id" int2 NOT NULL , "last_update" timestamp NOT NULL );CREATE TABLE "public"."film_list"("fid" int4, "title" varchar(255), "description" text, "category" varchar(25), "price" numeric, "length" int2, "rating" mpaa_rating, "actors" text);CREATE TABLE "public"."language"("language_id" serial NOT NULL , "name" bpchar NOT NULL , "last_update" timestamp NOT NULL );CREATE TABLE "public"."nicer_but_slower_film_list"("fid" int4, "title" varchar(255), "description" text, "category" varchar(25), "price" numeric, "length" int2, "rating" mpaa_rating, "actors" text);CREATE TABLE "public"."city"("city_id" serial NOT NULL , "city" varchar(50) NOT NULL , "country_id" int2 NOT NULL , "last_update" timestamp NOT NULL );CREATE TABLE "public"."customer"("customer_id" serial NOT NULL , "store_id" int2 NOT NULL , "first_name" varchar(45) NOT NULL , "last_name" varchar(45) NOT NULL , "email" varchar(50), "address_id" int2 NOT NULL , "activebool" bool NOT NULL , "create_date" date NOT NULL , "last_update" timestamp, "active" int4);CREATE TABLE "public"."payment_p2007_03"("payment_id" serial NOT NULL , "customer_id" int2 NOT NULL , "staff_id" int2 NOT NULL , "rental_id" int4 NOT NULL , "amount" numeric NOT NULL , "payment_date" timestamp NOT NULL );CREATE TABLE "public"."payment_p2007_05"("payment_id" serial NOT NULL , "customer_id" int2 NOT NULL , "staff_id" int2 NOT NULL , "rental_id" int4 NOT NULL , "amount" numeric NOT NULL , "payment_date" timestamp NOT NULL );CREATE TABLE "public"."film_actor"("actor_id" int2 NOT NULL , "film_id" int2 NOT NULL , "last_update" timestamp NOT NULL );CREATE TABLE "public"."payment_p2007_01"("payment_id" serial NOT NULL , "customer_id" int2 NOT NULL , "staff_id" int2 NOT NULL , "rental_id" int4 NOT NULL , "amount" numeric NOT NULL , "payment_date" timestamp NOT NULL );CREATE TABLE "public"."sales_by_film_category"("category" varchar(25), "total_sales" numeric);CREATE TABLE "public"."staff"("staff_id" serial NOT NULL , "first_name" varchar(45) NOT NULL , "last_name" varchar(45) NOT NULL , "address_id" int2 NOT NULL , "email" varchar(50), "store_id" int2 NOT NULL , "active" bool NOT NULL , "username" varchar(16) NOT NULL , "password" varchar(40), "last_update" timestamp NOT NULL , "picture" bytea);CREATE TABLE "public"."category"("category_id" serial NOT NULL , "name" varchar(25) NOT NULL , "last_update" timestamp NOT NULL );CREATE TABLE "public"."inventory"("inventory_id" serial NOT NULL , "film_id" int2 NOT NULL , "store_id" int2 NOT NULL , "last_update" timestamp NOT NULL );CREATE TABLE "public"."country"("country_id" serial NOT NULL , "country" varchar(50) NOT NULL , "last_update" timestamp NOT NULL );CREATE TABLE "public"."film_category"("film_id" int2 NOT NULL , "category_id" int2 NOT NULL , "last_update" timestamp NOT NULL );CREATE TABLE "public"."store"("store_id" serial NOT NULL , "manager_staff_id" int2 NOT NULL , "address_id" int2 NOT NULL , "last_update" timestamp NOT NULL );CREATE TABLE "public"."staff_list"("id" int4, "name" text, "address" varchar(50), "zip code" varchar(10), "phone" varchar(20), "city" varchar(50), "country" varchar(50), "sid" int2);