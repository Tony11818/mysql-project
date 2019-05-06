-- event to schedule next years tournament at the same lake, uses the autoScheduleTourney procedure
CREATE EVENT runAutoScheduleTourney
ON SCHEDULE EVERY 1 MONTH
 DO
 call autoScheduleTourney();
