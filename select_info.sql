mysql> select * from people;
+----+-----------+-----------+----------+
| id | firstname | lastname  | ismember |
+----+-----------+-----------+----------+
|  1 | aurelio   | anselmo   |        0 |
|  2 | edward    | muniz     |        0 |
|  3 | mike      | johnson   |        0 |
|  4 | tony      | caste     |        0 |
|  5 | guy       | rackley   |        0 |
|  6 | mike      | onerod    |        0 |
|  7 | arya      | stark     |        1 |
|  8 | jaime     | lanister  |        1 |
|  9 | cersei    | lanister  |        0 |
| 10 | sandor    | clegane   |        1 |
| 11 | petyr     | baelish   |        0 |
| 12 | sansa     | stark     |        1 |
| 13 | gregor    | clegane   |        1 |
| 14 | brienne   | tarth     |        1 |
| 15 | daenerys  | targaryen |        1 |
| 16 | jon       | snow      |        1 |
| 17 | tyrion    | lanister  |        1 |
| 18 | jorah     | mormont   |        1 |
| 19 | theon     | greyjoy   |        1 |
| 20 | samwell   | tarly     |        1 |
| 21 | night     | king      |        1 |
+----+-----------+-----------+----------+

mysql> select * from lake;
+----+---------------+---------+------------------+
| id | lakename      | state   | city             |
+----+---------------+---------+------------------+
|  1 | lake pleasant | arizona | phoenix          |
|  2 | bartlett lake | arizona | phoenix          |
|  3 | canyon lake   | arizona | phoenix          |
|  4 | saguaro lake  | arizona | phoenix          |
|  5 | lake havasu   | arizona | lake havasu city |
|  6 | lake mead     | nevada  | las vegas        |
+----+---------------+---------+------------------+

mysql> select * from tournament;
+----+-----------------+-----------+----------+---------+
| id | tournament_date | starttime | endtime  | lake_id |
+----+-----------------+-----------+----------+---------+
|  1 | 2019-01-16      | 06:00:00  | 16:00:00 |       1 |
|  2 | 2019-02-24      | 06:00:00  | 16:00:00 |       2 |
|  3 | 2019-03-14      | 06:00:00  | 16:00:00 |       3 |
|  4 | 2019-04-04      | 06:00:00  | 16:00:00 |       4 |
|  5 | 2019-05-20      | 06:00:00  | 16:00:00 |       5 |
|  6 | 2019-06-15      | 06:00:00  | 16:00:00 |       6 |
+----+-----------------+-----------+----------+---------+

mysql> select * from fish;
+----+--------+-------------+
| id | weight | upload_date |
+----+--------+-------------+
|  1 |   9.65 | 2019-01-16  |
|  2 |   1.11 | 2019-01-16  |
|  3 |   2.66 | 2019-01-16  |
|  4 |   3.75 | 2019-01-16  |
|  5 |   3.76 | 2019-01-16  |
|  6 |   5.55 | 2019-01-16  |
|  7 |   5.99 | 2019-01-16  |
|  8 |   9.00 | 2019-01-16  |
|  9 |   0.55 | 2019-01-16  |
| 10 |   0.99 | 2019-01-16  |
| 11 |   8.23 | 2019-01-16  |
| 12 |   3.22 | 2019-01-16  |
| 13 |   9.64 | 2019-01-16  |
| 14 |  11.23 | 2019-02-24  |
| 15 |   2.55 | 2019-02-24  |
| 16 |   2.35 | 2019-02-24  |
| 17 |   2.00 | 2019-02-24  |
| 18 |   2.54 | 2019-02-24  |
| 19 |   1.32 | 2019-02-24  |
| 20 |   1.52 | 2019-02-24  |
| 21 |   1.99 | 2019-02-24  |
| 22 |   4.65 | 2019-02-24  |
| 23 |   3.33 | 2019-02-24  |
| 24 |   3.99 | 2019-02-24  |
| 25 |   7.12 | 2019-02-24  |
| 26 |   8.12 | 2019-02-24  |
| 27 |   5.66 | 2019-03-14  |
| 28 |   0.16 | 2019-03-14  |
| 29 |   0.36 | 2019-03-14  |
| 30 |   4.65 | 2019-03-14  |
| 31 |   2.69 | 2019-03-14  |
| 32 |   0.99 | 2019-03-14  |
| 33 |   1.54 | 2019-03-14  |
| 34 |   1.89 | 2019-03-14  |
| 35 |   4.48 | 2019-03-14  |
| 36 |   4.00 | 2019-03-14  |
| 37 |   3.45 | 2019-03-14  |
| 38 |   0.87 | 2019-03-14  |
| 39 |   7.00 | 2019-03-14  |
| 40 |  10.50 | 2019-04-04  |
| 41 |   4.65 | 2019-04-04  |
| 42 |   2.32 | 2019-04-04  |
| 43 |   1.23 | 2019-04-04  |
| 44 |   1.44 | 2019-04-04  |
| 45 |   1.59 | 2019-04-04  |
| 46 |   1.99 | 2019-04-04  |
| 47 |   5.13 | 2019-04-04  |
| 48 |   7.65 | 2019-04-04  |
| 49 |   4.65 | 2019-04-04  |
| 50 |   0.11 | 2019-04-04  |
| 51 |   7.98 | 2019-04-04  |
| 52 |   8.75 | 2019-04-04  |
| 53 |   8.45 | 2019-05-20  |
| 54 |   2.56 | 2019-05-20  |
| 55 |   2.11 | 2019-05-20  |
| 56 |   2.99 | 2019-05-20  |
| 57 |   3.11 | 2019-05-20  |
| 58 |   3.32 | 2019-05-20  |
| 59 |   4.12 | 2019-05-20  |
| 60 |   3.99 | 2019-05-20  |
| 61 |   4.87 | 2019-05-20  |
| 62 |   4.88 | 2019-05-20  |
| 63 |   4.21 | 2019-05-20  |
| 64 |   7.33 | 2019-05-20  |
| 65 |   8.43 | 2019-05-20  |
| 66 |  13.13 | 2019-06-15  |
| 67 |   1.69 | 2019-06-15  |
| 68 |   2.22 | 2019-06-15  |
| 69 |   2.10 | 2019-06-15  |
| 70 |   1.54 | 2019-06-15  |
| 71 |   1.38 | 2019-06-15  |
| 72 |   2.19 | 2019-06-15  |
| 73 |   4.51 | 2019-06-15  |
| 74 |   0.00 | 2019-06-15  |
| 75 |   0.84 | 2019-06-15  |
| 76 |   0.55 | 2019-06-15  |
| 77 |   9.99 | 2019-06-15  |
| 78 |  11.45 | 2019-06-15  |
+----+--------+-------------+

mysql> select * from payment;
+----+---------------------+-----------------+----------------+---------------+
| id | paid_for_tournament | membership_paid | participant_id | tournament_id |
+----+---------------------+-----------------+----------------+---------------+
|  1 |                   1 |               1 |              7 |             1 |
|  2 |                   1 |               1 |              8 |             1 |
|  3 |                   0 |               0 |              9 |             1 |
|  4 |                   1 |               1 |             10 |             1 |
|  5 |                   0 |               0 |             11 |             1 |
|  6 |                   1 |               1 |             12 |             1 |
|  7 |                   1 |               1 |             13 |             1 |
|  8 |                   1 |               1 |             14 |             1 |
|  9 |                   1 |               1 |             15 |             1 |
| 10 |                   1 |               1 |             16 |             1 |
| 11 |                   1 |               1 |             17 |             1 |
| 12 |                   1 |               1 |             18 |             1 |
| 13 |                   1 |               1 |             19 |             1 |
| 14 |                   1 |               1 |             20 |             1 |
| 15 |                   1 |               1 |             21 |             1 |
| 16 |                   1 |               1 |              7 |             2 |
| 17 |                   1 |               1 |              8 |             2 |
| 18 |                   0 |               0 |              9 |             2 |
| 19 |                   1 |               1 |             10 |             2 |
| 20 |                   0 |               0 |             11 |             2 |
| 21 |                   1 |               1 |             12 |             2 |
| 22 |                   1 |               1 |             13 |             2 |
| 23 |                   1 |               1 |             14 |             2 |
| 24 |                   1 |               1 |             15 |             2 |
| 25 |                   1 |               1 |             16 |             2 |
| 26 |                   1 |               1 |             17 |             2 |
| 27 |                   1 |               1 |             18 |             2 |
| 28 |                   1 |               1 |             19 |             2 |
| 29 |                   1 |               1 |             20 |             2 |
| 30 |                   1 |               1 |             21 |             2 |
| 31 |                   1 |               1 |              7 |             3 |
| 32 |                   1 |               1 |              8 |             3 |
| 33 |                   0 |               0 |              9 |             3 |
| 34 |                   1 |               1 |             10 |             3 |
| 35 |                   0 |               0 |             11 |             3 |
| 36 |                   1 |               1 |             12 |             3 |
| 37 |                   1 |               1 |             13 |             3 |
| 38 |                   1 |               1 |             14 |             3 |
| 39 |                   1 |               1 |             15 |             3 |
| 40 |                   1 |               1 |             16 |             3 |
| 41 |                   1 |               1 |             17 |             3 |
| 42 |                   1 |               1 |             18 |             3 |
| 43 |                   1 |               1 |             19 |             3 |
| 44 |                   1 |               1 |             20 |             3 |
| 45 |                   1 |               1 |             21 |             3 |
| 46 |                   1 |               1 |              7 |             4 |
| 47 |                   1 |               1 |              8 |             4 |
| 48 |                   0 |               0 |              9 |             4 |
| 49 |                   1 |               1 |             10 |             4 |
| 50 |                   0 |               0 |             11 |             4 |
| 51 |                   1 |               1 |             12 |             4 |
| 52 |                   1 |               1 |             13 |             4 |
| 53 |                   1 |               1 |             14 |             4 |
| 54 |                   1 |               1 |             15 |             4 |
| 55 |                   1 |               1 |             16 |             4 |
| 56 |                   1 |               1 |             17 |             4 |
| 57 |                   1 |               1 |             18 |             4 |
| 58 |                   1 |               1 |             19 |             4 |
| 59 |                   1 |               1 |             20 |             4 |
| 60 |                   1 |               1 |             21 |             4 |
| 61 |                   1 |               1 |              7 |             5 |
| 62 |                   1 |               1 |              8 |             5 |
| 63 |                   0 |               0 |              9 |             5 |
| 64 |                   1 |               1 |             10 |             5 |
| 65 |                   0 |               0 |             11 |             5 |
| 66 |                   1 |               1 |             12 |             5 |
| 67 |                   1 |               1 |             13 |             5 |
| 68 |                   1 |               1 |             14 |             5 |
| 69 |                   1 |               1 |             15 |             5 |
| 70 |                   1 |               1 |             16 |             5 |
| 71 |                   1 |               1 |             17 |             5 |
| 72 |                   1 |               1 |             18 |             5 |
| 73 |                   1 |               1 |             19 |             5 |
| 74 |                   1 |               1 |             20 |             5 |
| 75 |                   1 |               1 |             21 |             5 |
| 76 |                   1 |               1 |              7 |             6 |
| 77 |                   1 |               1 |              8 |             6 |
| 78 |                   0 |               0 |              9 |             6 |
| 79 |                   1 |               1 |             10 |             6 |
| 80 |                   0 |               0 |             11 |             6 |
| 81 |                   1 |               1 |             12 |             6 |
| 82 |                   1 |               1 |             13 |             6 |
| 83 |                   1 |               1 |             14 |             6 |
| 84 |                   1 |               1 |             15 |             6 |
| 85 |                   1 |               1 |             16 |             6 |
| 86 |                   1 |               1 |             17 |             6 |
| 87 |                   1 |               1 |             18 |             6 |
| 88 |                   1 |               1 |             19 |             6 |
| 89 |                   1 |               1 |             20 |             6 |
| 90 |                   1 |               1 |             21 |             6 |
+----+---------------------+-----------------+----------------+---------------+

mysql> select * from results;
+----+---------------+-----------+-----------+
| id | tournament_id | people_id | winner    |
+----+---------------+-----------+-----------+
|  1 |             1 |         7 | 1st place |
|  2 |             2 |         7 | 1st place |
|  3 |             3 |        21 | 1st place |
|  4 |             4 |         7 | 1st place |
|  5 |             5 |         7 | 1st place |
|  6 |             6 |         7 | 1st place |
+----+---------------+-----------+-----------+
