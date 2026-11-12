-- Academic demonstration data; contact values anonymized.
Insert Into Product Values(110,'Iphone 11 Pro','128GB',3500,0);
Insert Into Product Values(120,'Iphone SE','64GB',2700,250);
Insert Into Product Values(130, 'Iphone 12 Pro Max', '512GB',4800,450);
Insert Into Product Values(140, 'Iphone 15 Plus', '1TB',7000 ,0);
Insert Into Product Values(150, 'Iphone 16 e','256GB',5200,350);
Insert Into Customer Values(10,'Ghadi','Saad','0000000001',
'customer388@example.com','Jubail','Exit10',12785);
Insert Into Customer Values(11,'Rakan','Fahad','0000000002',
'customer494@example.com','Riyadh','Exit21',12659);
Insert Into Customer Values(12,'Ward','Yosef','0000000003',
'customer600@example.com','Jeddah','Exit23',12421);
Insert Into Customer Values(13,'Faris','Rian','0000000004',
'customer705@example.com','Khobar','Exit5',12940);
Insert Into Customer Values(14,'Rana','Ali','0000000005',
'customer809@example.com','Abha','Exit30',12845);
Insert Into Orders Values(15,'2025-04-08',10,'Completed');
Insert Into Orders Values(16,'2025-04-08',11,'Completed');
Insert Into Orders Values(17,'2025-04-10',12,'Completed');
Insert Into Orders Values(18,'2025-04-10',11,'Completed');
Insert Into Orders Values(19,'2025-04-18',11,'Completed');
Insert Into Orders Values(20,'2025-04-18',11,'Completed');
Insert Into OrderProducts Values(15,110,4,10000);
Insert Into OrderProducts Values(16,120,13,20000);
Insert Into OrderProducts Values(16,130,50,60000);
Insert Into OrderProducts Values(17,140,47,32000);
Insert Into OrderProducts Values(18,150,6,11000);
Insert Into OrderProducts Values(19,120,6,16000);
Insert Into Shipping Values(16475,15,'Done','2025-03-25');
Insert Into Shipping Values(16442,16,'Delivered','2025-04-10');
Insert Into Shipping Values(16378,17,'Done','2025-03-29');
Insert Into Shipping Values(16809,18,'Delivered','2025-04-10');
Insert Into Shipping Values(16445,19,'Shipped','2025-04-06');

