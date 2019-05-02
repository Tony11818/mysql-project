INSERT INTO admin (firstname,lastname) VALUES
('aurelio','anselmo'),
('edward','muniz'),
('mike','johnson'),
('tony','caste'),
('guy','rackley'),
('mike','onerod');

INSERT INTO `participant` (`firstname`,`lastname`,`ismember`) VALUES
('arya','stark','1'),
('jaime','lanister','1'),
('cersei','lanister','0'),
('sandor','clegane','1'),
('petyr','baelish','0'),
('sansa','stark','1'),
('gregor','clegane','1'),
('brienne','tarth','1'),
('daenerys','targaryen','1'),
('jon','snow','1'),
('tyrion','lanister','1'),
('jorah','mormont','1'),
('theon','greyjoy','1'),
('samwell','tarly','1'),
('night','king','1');

INSERT INTO `lake` (`lakename`,`state`,`city`) VALUES
('lake pleasant','arizona','phoenix'),
('bartlett lake','arizona','phoenix'),
('canyon lake','arizona','phoenix'),
('saguaro lake','arizona','phoenix'),
('lake havasu','arizona','lake havasu city'),
('lake mead','nevada','las vegas');

INSERT INTO `tournament` (`date`,`starttime`,`endtime`,`participant_id`,`admin_id`,`lake_id`) VALUES
('','','','','','');
