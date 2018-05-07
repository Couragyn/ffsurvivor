Instructions for adding nfl DB
https://github.com/BurntSushi/nfldb
============
delete this stuff from schema

bundle exec rails db < ./db/import/nfldb.sql

#in ffsurvivor_development
insert into team values('JAX','Jacksonville', 'Jaguars');
insert into team values('LAC','Los Angeles', 'Chargers');

#in python nfldb
nfldb-update