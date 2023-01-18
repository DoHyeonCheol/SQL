# 2-1 실습

# 1. 포켓몬 데이터베이스와 나의 포켓몬 테이블을 만들고, 캐터피, 피카츄, 이브이의 포켓몬 번호, 영문이름, 타입 데이터를 넣으시오.

CREATE DATABASE pokemon;

# 1) USE 사용

USE pokemon;
CREATE TABLE mypokemon (
           number INT,
           name VARCHAR(20),
           type VARCHAR(10)
           );

           
/*
2) USE 사용하지 않고 하는 방법

CREATE TABLE pokemon.mypokemon (
           number INT,
           name VARCHAR(20),
           type VARCHAR(10),
           );
*/

INSERT INTO mypokemon (number, name, type)
VALUES (10, 'caterpie', 'bug'),
       (25, 'pikachu', 'electric'),
       (133, 'eevee', 'normal');
       
SELECT * FROM mypokemon;

#2. 1에서 만든 '포켓몬' 데이터베이스에 '나의 새로운 포켓몬' 테이블을 만들고, 포니타, 메타몽, 뮤의 포켓몬 번호, 이름, 타입 데이터를 넣어주세요.

USE pokemon;
CREATE TABLE mynewpokemon (
           number INT,
           name VARCHAR(20),
           type VARCHAR(10)
           );
           
INSERT INTO mynewpokemon (number, name, type)
VALUES (77, '포니타', '불꽃'),
       (132, '메타몽', '노멀'),
       (151, '뮤', '에스퍼');

SELECT * FROM mynewpokemon;



# 2-2 실습

# 1. 포켓몬 데이터베이스 안에 있는 mypokemon 테이블과 mynewpokemon 테이블을 아래와 같이 변경하시오.

#step1. mypokemon테이블의 이름을 myoldpokemon으로 변경하시오
#step2. myoldpokemon 테이블의 name 컬럼의 이름을 eng_nm으로 변경
#step3. mynewpokemon 테이블의 name 컬럼의 이름을 kor_nm으로 변경

USE pokemon;
ALTER TABLE mypokemon RENAME myoldpokemon;
ALTER TABLE myoldpokemon
CHANGE COLUMN name eng_nm VARCHAR(20);

ALTER TABLE mynewpokemon
CHANGE COLUMN name kor_nm VARCHAR(20);

SELECT * FROM myoldpokemon;
SELECT * FROM mynewpokemon;


# 2. myoldpokemon 테이블은 값만 지우고, mynewpokemon 테이블은 전부 지워주세요

TRUNCATE TABLE myoldpokemon;
SELECT * FROM myoldpokemon;
DROP TABLE mynewpokemon;
SELECT * FROM mynewpokemon;