mysql> select * from admin;
+----+-----------+----------+
| id | firstname | lastname |
+----+-----------+----------+
|  1 | aurelio   | anselmo  |
|  2 | edward    | muniz    |
|  3 | mike      | johnson  |
|  4 | tony      | caste    |
|  5 | guy       | rackley  |
|  6 | mike      | onerod   |
+----+-----------+----------+

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

mysql> select * from participant;
+----+-----------+-----------+----------+
| id | firstname | lastname  | ismember |
+----+-----------+-----------+----------+
|  1 | arya      | stark     |        1 |
|  2 | jaime     | lanister  |        1 |
|  3 | cersei    | lanister  |        0 |
|  4 | sandor    | clegane   |        1 |
|  5 | petyr     | baelish   |        0 |
|  6 | sansa     | stark     |        1 |
|  7 | gregor    | clegane   |        1 |
|  8 | brienne   | tarth     |        1 |
|  9 | daenerys  | targaryen |        1 |
| 10 | jon       | snow      |        1 |
| 11 | tyrion    | lanister  |        1 |
| 12 | jorah     | mormont   |        1 |
| 13 | theon     | greyjoy   |        1 |
| 14 | samwell   | tarly     |        1 |
| 15 | night     | king      |        1 |
+----+-----------+-----------+----------+
