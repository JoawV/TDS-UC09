CREATE SCHEMA Esporte;
USE Esporte;

SELECT * FROM Teams;
SELECT * FROM Athletes;
SELECT * FROM Coaches;
SELECT * FROM Medals;
SELECT * FROM EntriesGender;

CREATE TABLE Teams(
`Name` VARCHAR(40) NOT NULL,
Discipline VARCHAR(40) NOT NULL,
NOC VARCHAR(40) NOT NULL,
`Event` VARCHAR(50) NOT NULL);

/* 5º */
CREATE TABLE Medals(
`Rank` INT NOT NULL,
`Team/NOC` VARCHAR(40) NOT NULL,
Gold INT NOT NULL,
Silver INT NOT NULL,
Bronze INT NOT NULL,
Total INT NOT NULL,
Rank_by_Total INT NOT NULL);

CREATE TABLE Coaches(
`Name` VARCHAR(40) NOT NULL,
NOC VARCHAR(50) NOT NULL,
Discipline VARCHAR(40) NOT NULL,
`Event` VARCHAR(30) NULL);

CREATE TABLE EntriesGender(
Discipline VARCHAR(40) NOT NULL,
Female INT NOT NULL,
Male INT NOT NULL, 
Total INT NOT NULL);

CREATE TABLE Athletes(
`Name` VARCHAR(50) NOT NULL,
NOC VARCHAR(50) NOT NULL,
Discipline VARCHAR(50) NOT NULL);

/* Questão Nº1 */
SELECT Coaches.`Name`, Athletes.`Name` FROM coaches INNER JOIN Athletes ON coaches.discipline = Athletes.discipline
WHERE Athletes.discipline = 'Handball';

/* Questão Nº2 */
/*Seria necessário uma coluna "ID" relacionar todos os atletas que ganharam as medalhas de ouro. */

/* Questão Nº3 */
/* Necessita ter uma tabela que relacionasse diretamente as medalhas com os atletas,
onde também fosse registrada a informação de gênero. */

/* Questão Nº4 */
/* Para determinar quais atletas da Noruega receberam medalhas de ouro ou prata, seria necessário ter
uma tabela que relacionasse diretamente as medalhas com os atletas. */

/* Questão Nº5 */
/* Seria necessário ter uma tabela que relacione diretamente os atletas com as medalhas ou ter uma coluna indicando se um determinado atleta
recebeu ou não uma medalha para determinar quais atletas brasileiros não receberam medalhas. */