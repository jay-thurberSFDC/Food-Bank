BEGIN TRANSACTION;

CREATE TABLE "Account" (
	id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);

INSERT INTO "Account" VALUES('Account-1','Sample Account for Entitlements','');
INSERT INTO "Account" VALUES('Account-2','John''s Farm','');
INSERT INTO "Account" VALUES('Account-3','Mollie''s Canned Foods','');
INSERT INTO "Account" VALUES('Account-4','Rainier Orchards','');
INSERT INTO "Account" VALUES('Account-5','Evergreen Food Bank','');
INSERT INTO "Account" VALUES('Account-6','Freya''s Frozen Goods','');
INSERT INTO "Account" VALUES('Account-7','Odin''s Organic Market','');
INSERT INTO "Account" VALUES('Account-8','Pacific Preserves','');
INSERT INTO "Account" VALUES('Account-9','Sun Valley Supplies','');
INSERT INTO "Account" VALUES('Account-10','Cascade Canning Co.','');

CREATE TABLE "Delivery__c" (
	id VARCHAR(255) NOT NULL, 
	"Scheduled_Date__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	"Supplier__c" VARCHAR(255), 
	PRIMARY KEY (id)
);

INSERT INTO "Delivery__c" VALUES('Delivery__c-1','2025-07-29T19:00:00.000+0000','Scheduled','Account-3');
INSERT INTO "Delivery__c" VALUES('Delivery__c-2','2025-07-25T19:00:00.000+0000','Scheduled','Account-2');
INSERT INTO "Delivery__c" VALUES('Delivery__c-3','2025-08-01T15:00:00.000+0000','Scheduled','Account-4');
INSERT INTO "Delivery__c" VALUES('Delivery__c-4','2025-08-03T13:00:00.000+0000','Completed','Account-5');
INSERT INTO "Delivery__c" VALUES('Delivery__c-5','2025-08-10T10:00:00.000+0000','Scheduled','Account-6');
INSERT INTO "Delivery__c" VALUES('Delivery__c-6','2025-08-12T09:00:00.000+0000','Completed','Account-7');
INSERT INTO "Delivery__c" VALUES('Delivery__c-7','2025-08-15T14:00:00.000+0000','Scheduled','Account-8');
INSERT INTO "Delivery__c" VALUES('Delivery__c-8','2025-08-20T16:00:00.000+0000','Scheduled','Account-9');
INSERT INTO "Delivery__c" VALUES('Delivery__c-9','2025-08-25T11:00:00.000+0000','Canceled','Account-10');
INSERT INTO "Delivery__c" VALUES('Delivery__c-10','2025-08-28T12:00:00.000+0000','Scheduled','Account-3');

CREATE TABLE "Delivery_Item__c" (
	id VARCHAR(255) NOT NULL, 
	"Food_Expiration_Date__c" VARCHAR(255), 
	"Food_Storage__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Delivery__c" VARCHAR(255), 
	PRIMARY KEY (id)
);

-- Delivery__c-1
INSERT INTO "Delivery_Item__c" VALUES('Delivery_Item__c-1','2027-07-06','Non-refrigerated','Canned Peaches','Delivery__c-1');
INSERT INTO "Delivery_Item__c" VALUES('Delivery_Item__c-2','2026-07-21','Non-refrigerated','Canned Green Beans','Delivery__c-1');

-- Delivery__c-2
INSERT INTO "Delivery_Item__c" VALUES('Delivery_Item__c-3','2025-07-31','Refrigerated','Blueberries','Delivery__c-2');
INSERT INTO "Delivery_Item__c" VALUES('Delivery_Item__c-4','2025-07-29','Non-refrigerated','Corn','Delivery__c-2');
INSERT INTO "Delivery_Item__c" VALUES('Delivery_Item__c-5','2025-08-05','Non-refrigerated','Potatoes','Delivery__c-2');
INSERT INTO "Delivery_Item__c" VALUES('Delivery_Item__c-6','2025-07-29','Frozen','Ice Cream','Delivery__c-2');

-- Delivery__c-3
INSERT INTO "Delivery_Item__c" VALUES('Delivery_Item__c-7','2025-08-10','Refrigerated','Cherries','Delivery__c-3');
INSERT INTO "Delivery_Item__c" VALUES('Delivery_Item__c-8','2025-08-12','Frozen','Mixed Berries','Delivery__c-3');
INSERT INTO "Delivery_Item__c" VALUES('Delivery_Item__c-9','2025-08-15','Non-refrigerated','Canned Tomatoes','Delivery__c-3');

-- Delivery__c-4
INSERT INTO "Delivery_Item__c" VALUES('Delivery_Item__c-10','2025-09-01','Refrigerated','Milk','Delivery__c-4');
INSERT INTO "Delivery_Item__c" VALUES('Delivery_Item__c-11','2025-09-03','Frozen','Chicken Nuggets','Delivery__c-4');
INSERT INTO "Delivery_Item__c" VALUES('Delivery_Item__c-12','2025-09-10','Non-refrigerated','Peanut Butter','Delivery__c-4');

-- Delivery__c-5
INSERT INTO "Delivery_Item__c" VALUES('Delivery_Item__c-13','2025-08-30','Frozen','Frozen Pizza','Delivery__c-5');
INSERT INTO "Delivery_Item__c" VALUES('Delivery_Item__c-14','2025-08-25','Refrigerated','Yogurt','Delivery__c-5');
INSERT INTO "Delivery_Item__c" VALUES('Delivery_Item__c-15','2025-09-05','Non-refrigerated','Instant Rice','Delivery__c-5');

-- Delivery__c-6
INSERT INTO "Delivery_Item__c" VALUES('Delivery_Item__c-16','2025-09-10','Frozen','Fish Fillets','Delivery__c-6');
INSERT INTO "Delivery_Item__c" VALUES('Delivery_Item__c-17','2025-09-12','Refrigerated','Cheese','Delivery__c-6');
INSERT INTO "Delivery_Item__c" VALUES('Delivery_Item__c-18','2025-09-14','Non-refrigerated','Crackers','Delivery__c-6');

-- Delivery__c-7
INSERT INTO "Delivery_Item__c" VALUES('Delivery_Item__c-19','2025-09-20','Refrigerated','Eggs','Delivery__c-7');
INSERT INTO "Delivery_Item__c" VALUES('Delivery_Item__c-20','2025-09-22','Frozen','Frozen Fruit Mix','Delivery__c-7');
INSERT INTO "Delivery_Item__c" VALUES('Delivery_Item__c-21','2025-09-25','Non-refrigerated','Pasta','Delivery__c-7');

-- Delivery__c-8
INSERT INTO "Delivery_Item__c" VALUES('Delivery_Item__c-22','2025-10-01','Refrigerated','Hummus','Delivery__c-8');
INSERT INTO "Delivery_Item__c" VALUES('Delivery_Item__c-23','2025-10-05','Frozen','Frozen Broccoli','Delivery__c-8');
INSERT INTO "Delivery_Item__c" VALUES('Delivery_Item__c-24','2025-10-08','Non-refrigerated','Ramen Noodles','Delivery__c-8');

-- Delivery__c-9
INSERT INTO "Delivery_Item__c" VALUES('Delivery_Item__c-25','2025-10-15','Frozen','Waffles','Delivery__c-9');
INSERT INTO "Delivery_Item__c" VALUES('Delivery_Item__c-26','2025-10-18','Refrigerated','Tofu','Delivery__c-9');
INSERT INTO "Delivery_Item__c" VALUES('Delivery_Item__c-27','2025-10-20','Non-refrigerated','Canned Soup','Delivery__c-9');

-- Delivery__c-10
INSERT INTO "Delivery_Item__c" VALUES('Delivery_Item__c-28','2025-10-25','Refrigerated','Bagged Salad','Delivery__c-10');
INSERT INTO "Delivery_Item__c" VALUES('Delivery_Item__c-29','2025-10-30','Frozen','Veggie Patties','Delivery__c-10');
INSERT INTO "Delivery_Item__c" VALUES('Delivery_Item__c-30','2025-11-01','Non-refrigerated','Granola Bars','Delivery__c-10');

COMMIT;
