-- Drop tables if they exist
--DROP TABLE IF EXISTS "Categories";
DROP TABLE IF EXISTS "Businesses";
DROP TABLE IF EXISTS "Driving_Estimate";

/*
-- Create Categories Table
CREATE TABLE "Categories" (
    "Category_ID" VARCHAR NOT NULL,
    "Category_Name" VARCHAR NOT NULL,
    CONSTRAINT "pk_Categories" PRIMARY KEY ("Category_ID")
);
*/
-- Create Driving_Estimate Table
CREATE TABLE "Driving_Estimate" (
    "Route_ID" VARCHAR NOT NULL,
	"Distance_Meters" FLOAT NOT NULL,
	"Duration_Seconds" FLOAT NOT NULL,
    "Duration_Minutes" FLOAT NOT NULL,
    "Latitude" DOUBLE PRECISION NOT NULL,
    "Longitude" DOUBLE PRECISION NOT NULL,
	"LatLong" VARCHAR NOT NULL 
);
-- Create Businesses Table
CREATE TABLE "Businesses" (
    "Name" VARCHAR NOT NULL,
    "Business_ID" VARCHAR NOT NULL,
    "Latitude" DOUBLE PRECISION NOT NULL,
    "Longitude" DOUBLE PRECISION NOT NULL,
	"LatLong" VARCHAR NOT NULL, 
    "Address" VARCHAR NOT NULL,
    "Rating" DECIMAL(3,1) NOT NULL,
    "Review_count" INT NOT NULL,
    "Price" VARCHAR,
    "ZIP" INT NOT NULL,
    "Pickup" BOOLEAN NOT NULL,
    "Delivery" BOOLEAN NOT NULL,
    "Restaurant_Reservation" BOOLEAN NOT NULL
);

ALTER TABLE "Driving_Estimate"
	ADD CONSTRAINT unique_LatLong UNIQUE ("LatLong");

-- Add foreign key constraints
ALTER TABLE "Businesses"
    ADD CONSTRAINT "fk_Businesses_Driving_Estimate"
    FOREIGN KEY ("LatLong")
    REFERENCES "Driving_Estimate" ("LatLong");

SELECT * FROM "Businesses";
SELECT * FROM "Driving_Estimate";



