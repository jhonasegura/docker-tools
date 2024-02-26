CREATE TABLE vehicle (
  "id" int NOT NULL,
  "plate" int NOT NULL,
  "description" varchar(150) NOT NULL,
  "name" varchar(150) NOT NULL,
  "secret" varchar(255) NOT NULL,
  "type" int NOT NULL,
  "picture_url" varchar(255) DEFAULT NULL,
  PRIMARY KEY ("id")
);

INSERT INTO vehicle ("id","plate","description","name","secret","type","picture_url")
VALUES
(1,0,'some descripcion','some_name_1','some_secret',1,'some_url'),
(2,0,'some descripcion','some_name_2','some_secret',1,'some_url');