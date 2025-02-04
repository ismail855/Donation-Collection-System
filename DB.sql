-- -------------------------------------------------------------
-- -------------------------------------------------------------
-- TablePlus 1.2.2
--
-- https://tableplus.com/
--
-- Database: postgres
-- Generation Time: 2025-01-31 17:22:38.824854
-- -------------------------------------------------------------

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Sequences
CREATE SEQUENCE IF NOT EXISTS donation_id_seq;

-- Table Definition
CREATE TABLE "public"."donation" (
    "id" int4 NOT NULL DEFAULT nextval('donation_id_seq'::regclass),
    "donorName" varchar NOT NULL,
    "amount" numeric NOT NULL,
    "mobileNumber" varchar NOT NULL,
    "message" varchar NOT NULL,
    "donationDate" timestamp NOT NULL DEFAULT now(),
    "deletedAt" timestamp,
    PRIMARY KEY ("id")
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Sequences
CREATE SEQUENCE IF NOT EXISTS user_id_seq;

-- Table Definition
CREATE TABLE "public"."user" (
    "id" int4 NOT NULL DEFAULT nextval('user_id_seq'::regclass),
    "email" varchar NOT NULL,
    "mobileNumber" int4 NOT NULL,
    "password" varchar NOT NULL,
    "role" user_role_enum NOT NULL DEFAULT 'user'::user_role_enum,
    PRIMARY KEY ("id")
);

INSERT INTO "public"."donation" ("id","donorName","amount","mobileNumber","message","donationDate","deletedAt") VALUES 
(8,'Test-Donation',20000.00,'01731555555','Done','2025-01-31 14:42:08.017194','2025-01-31 14:42:46.62529'),
(7,'Ismail',2000.00,'01305685855','done','2025-01-30 22:54:57.425926','2025-01-31 14:43:16.055906'),
(1,'Ismail',1000.00,'01305685855','donate success','2025-01-30 12:17:24.453524',NULL),
(6,'Ismail',1000.00,'01305685855','donate','2025-01-30 12:52:57.594828',NULL),
(5,'Rony',2000.00,'01627962323','donate success','2025-01-30 12:22:55.56126',NULL),
(3,'Rahat',2000.00,'01305658505','donate success','2025-01-30 12:20:59.553054',NULL),
(9,'Sabbir',1000.00,'01335766541','Done','2025-01-31 16:08:14.987603',NULL);

INSERT INTO "public"."user" ("id","email","mobileNumber","password","role") VALUES 
(5,'admin@gmail.com',1305685855,'$2a$10$AhSZhBPVndnL2833waEbHe.G1TOMY8ryGNPTvE.Guku6Jp/PadCTu','admin'),
(9,'test@gmail.com',1658422222,'$2a$10$rgOtM.L58TR4pB6aBQro.e1zaCrg52Ox2x9dohXdD/S1gOTif7zOW','user');

