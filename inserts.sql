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
('2019/01/16','06:00:00','16:00:00',NULL,'1','1'),
('2019/01/16','06:00:00','16:00:00',NULL,'4','1'),
('2019/01/16','06:00:00','16:00:00',NULL,'6','1'),
('2019/02/24','06:00:00','16:00:00',NULL,'3','2'),
('2019/02/24','06:00:00','16:00:00',NULL,'2','2'),
('2019/03/14','06:00:00','16:00:00',NULL,'5','3'),
('2019/03/14','06:00:00','16:00:00',NULL,'3','3'),
('2019/03/14','06:00:00','16:00:00',NULL,'4','3'),
('2019/04/04','06:00:00','16:00:00',NULL,'1','4'),
('2019/04/04','06:00:00','16:00:00',NULL,'3','4'),
('2019/04/04','06:00:00','16:00:00',NULL,'4','4'),
('2019/05/20','06:00:00','16:00:00',NULL,'6','5'),
('2019/05/20','06:00:00','16:00:00',NULL,'2','5'),
('2019/05/20','06:00:00','16:00:00',NULL,'1','5'),
('2019/06/15','06:00:00','16:00:00',NULL,'6','6'),
('2019/06/15','06:00:00','16:00:00',NULL,'5','6'),
('2019/06/15','06:00:00','16:00:00',NULL,'2','6'),
