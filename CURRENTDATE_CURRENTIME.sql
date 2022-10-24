-- SETTING UP TABLE --
CREATE TABLE test (
	myDate DATE,
    myTime TIME,
    myDateTime DATETIME
);

-- Can use these functions to add CURRENT_X or the DATETIME value of NOW
INSERT INTO test
VALUES (CURRENT_DATE(), CURRENT_TIME(), NOW());

-- Can add a day, or seconds by simply adding a modifier (+1, -1, etc)
INSERT INTO test
VALUES (CURRENT_DATE() + 1, CURRENT_TIME() - 1, NOW());

select * from test;
