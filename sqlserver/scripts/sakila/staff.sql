ALTER TABLE staff NOCHECK CONSTRAINT fk_staff_store;
ALTER TABLE staff NOCHECK CONSTRAINT fk_staff_address;

SET IDENTITY_INSERT staff ON

Insert into staff
 (staff_id,first_name,last_name,address_id,picture,email,store_id,active,username,password,last_update)
Values
 ('1','Mike','Hillyer','3',NULL,'Mike.Hillyer@sakilastaff.com','1','1','Mike','8cb2237d0679ca88db6464eac60da96345513964','2006-02-15T04:57:16.000')
;
Insert into staff
 (staff_id,first_name,last_name,address_id,picture,email,store_id,active,username,password,last_update)
Values
 ('2','Jon','Stephens','4',NULL,'Jon.Stephens@sakilastaff.com','2','1','Jon','8cb2237d0679ca88db6464eac60da96345513964','2006-02-15T04:57:16.000')
;
SET IDENTITY_INSERT staff OFF

ALTER TABLE staff CHECK CONSTRAINT fk_staff_store;
ALTER TABLE staff CHECK CONSTRAINT fk_staff_address;

