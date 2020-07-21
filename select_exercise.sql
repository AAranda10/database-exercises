# 1
select name from albums
where artist = 'Pink Floyd';

#2
select release_date from albums
where name = 'Sgt. Pepper\'s Lonely Hearts Club Band';

#3
select genre from albums
where name = 'Nevermind';

#4
select name from albums
where release_date between 1990 and 1999;

#5
select name from albums
where sales < 20;

#6
select name from albums
where genre = 'rock';
#It doesn't include variations of Rock because equals means exactly the Rock verbage
