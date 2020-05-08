USE [COMPANY]
GO

IF NOT EXISTS(SELECT * FROM sysobjects WHERE name=N'Tb_Employees' and xtype='U')
BEGIN
	CREATE TABLE Tb_Employees (
		id_employee INT NOT NULL IDENTITY PRIMARY KEY,
		first_name VARCHAR(50) NOT NULL,
		last_name VARCHAR(50) NOT NULL,
		email VARCHAR(50) NOT NULL,
		phone VARCHAR(13) NOT NULL,
		department VARCHAR(50) NOT NULL
	);
END
ELSE
BEGIN
	TRUNCATE TABLE Tb_Employees
END

INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Stormi', 'Silcocks', 'ssilcocks0@globalHitss.com', '1973583624', 'Support');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Nesta', 'Burrells', 'nburrells1@globalHitss.com', '1207469792', 'Business Development');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Amber', 'Malt', 'amalt2@globalHitss.com', '1374552918', 'Research and Development');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Etty', 'Buddleigh', 'ebuddleigh3@globalHitss.com', '3132276302', 'Legal');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Cordie', 'Tregale', 'ctregale4@globalHitss.com', '1625284620', 'Services');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Hubie', 'Corre', 'hcorre5@globalHitss.com', '3121687285', 'Human Resources');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Elora', 'Clousley', 'eclousley6@globalHitss.com', '4518946604', 'Support');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Illa', 'Templeman', 'itempleman7@globalHitss.com', '4217572904', 'Training');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Johna', 'Mantrup', 'jmantrup8@globalHitss.com', '3531107407', 'Legal');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Evered', 'Grunbaum', 'egrunbaum9@globalHitss.com', '5615713549', 'Services');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Osborn', 'Joysey', 'ojoyseya@globalHitss.com', '6168888930', 'Legal');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Aeriela', 'Cocci', 'acoccib@globalHitss.com', '1113513451', 'Marketing');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Miguela', 'Goade', 'mgoadec@globalHitss.com', '4307764437', 'Business Development');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Hobie', 'Grise', 'hgrised@globalHitss.com', '2886550390', 'Research and Development');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Lavinie', 'Sifleet', 'lsifleete@globalHitss.com', '7565121529', 'Sales');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Yehudi', 'Southcombe', 'ysouthcombef@globalHitss.com', '8732722654', 'Marketing');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Archibold', 'Fauguel', 'afauguelg@globalHitss.com', '4797298047', 'Legal');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Lanae', 'Antowski', 'lantowskih@globalHitss.com', '7728096890', 'Legal');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Pamelina', 'Blacksland', 'pblackslandi@globalHitss.com', '5779677700', 'Marketing');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Brandi', 'Lennie', 'blenniej@globalHitss.com', '3735050103', 'Human Resources');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Oralie', 'Josse', 'ojossek@globalHitss.com', '1266633024', 'Sales');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Vonnie', 'Downie', 'vdowniel@globalHitss.com', '2442009223', 'Research and Development');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Estele', 'Abadam', 'eabadamm@globalHitss.com', '4266777748', 'Support');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Gabie', 'Pogson', 'gpogsonn@globalHitss.com', '9476543879', 'Human Resources');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Domenic', 'Bisterfeld', 'dbisterfeldo@globalHitss.com', '4815195773', 'Legal');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Dannie', 'Brobak', 'dbrobakp@globalHitss.com', '7665510627', 'Human Resources');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Shani', 'Johananov', 'sjohananovq@globalHitss.com', '7898369642', 'Support');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Chance', 'Meaders', 'cmeadersr@globalHitss.com', '8139813589', 'Human Resources');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Leela', 'Henrie', 'lhenries@globalHitss.com', '2419213612', 'Human Resources');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Rodd', 'Mattei', 'rmatteit@globalHitss.com', '7656688003', 'Engineering');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Almira', 'Quare', 'aquareu@globalHitss.com', '6094751999', 'Sales');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Bel', 'Chewter', 'bchewterv@globalHitss.com', '4477908054', 'Product Management');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Faye', 'Paulisch', 'fpaulischw@globalHitss.com', '3694432830', 'Accounting');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Tanney', 'Benasik', 'tbenasikx@globalHitss.com', '6136404413', 'Marketing');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Julissa', 'Thorington', 'jthoringtony@globalHitss.com', '8222971576', 'Engineering');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Verene', 'Vickerman', 'vvickermanz@globalHitss.com', '1411877167', 'Human Resources');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Marve', 'Snadden', 'msnadden10@globalHitss.com', '5575108546', 'Accounting');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Bunni', 'Speechly', 'bspeechly11@globalHitss.com', '6809201495', 'Accounting');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Justen', 'Avrahamian', 'javrahamian12@globalHitss.com', '9274477960', 'Marketing');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Chevalier', 'Kleeman', 'ckleeman13@globalHitss.com', '9348750307', 'Engineering');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Rorke', 'Fury', 'rfury14@globalHitss.com', '3177726829', 'Product Management');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Robbie', 'Godley', 'rgodley15@globalHitss.com', '8157741316', 'Accounting');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Mose', 'Roe', 'mroe16@globalHitss.com', '7865319237', 'Product Management');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Waiter', 'Windrus', 'wwindrus17@globalHitss.com', '7911433447', 'Business Development');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Kimbell', 'McKissack', 'kmckissack18@globalHitss.com', '4746785715', 'Research and Development');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Sergent', 'Espadate', 'sespadate19@globalHitss.com', '3448363427', 'Research and Development');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Eada', 'Antrag', 'eantrag1a@globalHitss.com', '6528539902', 'Legal');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Cristobal', 'Grealy', 'cgrealy1b@globalHitss.com', '7879826990', 'Product Management');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Dan', 'Polland', 'dpolland1c@globalHitss.com', '3904398954', 'Services');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Marianne', 'Carlsson', 'mcarlsson1d@globalHitss.com', '1995908602', 'Legal');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Dionne', 'Blancowe', 'dblancowe1e@globalHitss.com', '2198015088', 'Human Resources');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Haley', 'Padbury', 'hpadbury1f@globalHitss.com', '3977317171', 'Engineering');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Caren', 'Sacker', 'csacker1g@globalHitss.com', '9993807002', 'Marketing');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Allie', 'Kalberer', 'akalberer1h@globalHitss.com', '9681894719', 'Research and Development');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Hetty', 'Sawl', 'hsawl1i@globalHitss.com', '1993810119', 'Research and Development');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Lynsey', 'Goosey', 'lgoosey1j@globalHitss.com', '5527381955', 'Engineering');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Linell', 'Groome', 'lgroome1k@globalHitss.com', '1055857885', 'Legal');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Holly', 'Treend', 'htreend1l@globalHitss.com', '1481487979', 'Human Resources');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Yasmeen', 'Millsom', 'ymillsom1m@globalHitss.com', '1655751638', 'Engineering');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Merle', 'Flucks', 'mflucks1n@globalHitss.com', '8389488970', 'Research and Development');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Arnie', 'Gurg', 'agurg1o@globalHitss.com', '3925023656', 'Training');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Fidelio', 'Allott', 'fallott1p@globalHitss.com', '4694428991', 'Human Resources');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Stephani', 'Shieldon', 'sshieldon1q@globalHitss.com', '5915596677', 'Support');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Lothaire', 'Rannald', 'lrannald1r@globalHitss.com', '8565940750', 'Accounting');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Jordanna', 'Shoard', 'jshoard1s@globalHitss.com', '3078024095', 'Business Development');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Quincy', 'Raycroft', 'qraycroft1t@globalHitss.com', '8202159887', 'Human Resources');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Dimitri', 'Sidaway', 'dsidaway1u@globalHitss.com', '2046840556', 'Product Management');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Berna', 'Kemston', 'bkemston1v@globalHitss.com', '3266432962', 'Engineering');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Elvyn', 'Lennarde', 'elennarde1w@globalHitss.com', '4522230820', 'Marketing');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Agnes', 'Mackiewicz', 'amackiewicz1x@globalHitss.com', '3871070709', 'Product Management');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Warren', 'Sinfield', 'wsinfield1y@globalHitss.com', '9211619759', 'Training');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Putnem', 'Rees', 'prees1z@globalHitss.com', '2534569842', 'Business Development');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Florina', 'Ygoe', 'fygoe20@globalHitss.com', '6741011201', 'Business Development');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Megen', 'Jedrzejewsky', 'mjedrzejewsky21@globalHitss.com', '5377916497', 'Marketing');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Otis', 'Banasiak', 'obanasiak22@globalHitss.com', '5368352309', 'Training');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Talbot', 'Santry', 'tsantry23@globalHitss.com', '5772321968', 'Sales');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Calypso', 'Shiers', 'cshiers24@globalHitss.com', '8354040406', 'Training');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Corty', 'Markova', 'cmarkova25@globalHitss.com', '4541690156', 'Legal');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Val', 'Jirick', 'vjirick26@globalHitss.com', '7363678049', 'Product Management');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Noelyn', 'Duddell', 'nduddell27@globalHitss.com', '6576765797', 'Business Development');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Tuckie', 'Berens', 'tberens28@globalHitss.com', '9738642915', 'Marketing');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Tomi', 'Crossthwaite', 'tcrossthwaite29@globalHitss.com', '9228140218', 'Human Resources');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Ferguson', 'Capp', 'fcapp2a@globalHitss.com', '7128969998', 'Business Development');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Marie-jeanne', 'Lawly', 'mlawly2b@globalHitss.com', '6057111032', 'Marketing');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Tannie', 'Blade', 'tblade2c@globalHitss.com', '5839285004', 'Accounting');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Jakie', 'Pech', 'jpech2d@globalHitss.com', '2999464430', 'Marketing');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Noelle', 'Meers', 'nmeers2e@globalHitss.com', '6228412040', 'Sales');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Manya', 'Brimm', 'mbrimm2f@globalHitss.com', '2429147588', 'Product Management');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Bellanca', 'Camoys', 'bcamoys2g@globalHitss.com', '2845126860', 'Marketing');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Selinda', 'Dyne', 'sdyne2h@globalHitss.com', '9883296854', 'Sales');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Krisha', 'Lazenby', 'klazenby2i@globalHitss.com', '8788614652', 'Product Management');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Helga', 'Skep', 'hskep2j@globalHitss.com', '1042571064', 'Marketing');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Adham', 'Tour', 'atour2k@globalHitss.com', '9228756525', 'Business Development');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Feliks', 'Banck', 'fbanck2l@globalHitss.com', '2457813967', 'Engineering');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Paula', 'Kellington', 'pkellington2m@globalHitss.com', '4048125523', 'Marketing');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Tracy', 'Pieroni', 'tpieroni2n@globalHitss.com', '6999845508', 'Human Resources');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Igor', 'Stonier', 'istonier2o@globalHitss.com', '2449191285', 'Research and Development');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Lucian', 'Selbie', 'lselbie2p@globalHitss.com', '5524552312', 'Business Development');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Lemuel', 'Huskinson', 'lhuskinson2q@globalHitss.com', '6312198275', 'Business Development');
INSERT INTO Tb_Employees (first_name, last_name, email, phone, department) values ('Thia', 'Meeks', 'tmeeks2r@globalHitss.com', '5103036482', 'Support');
