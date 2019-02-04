-- 8
-- Seleciona só os nomes das classes
select NOME from CLASSES;

-- 9
-- Seleciona tudo de habilidades
select * from HABILIDADES;

-- 10
-- Mostra a quantidade de habilidades cadastradas
select count(*) as QTD_HABILIDADES from HABILIDADES;

-- 11
-- Seleciona os ids das habilidades por ordem crescente
select ID from HABILIDADES order by ID asc

--12
-- Seleciona todos os tipos de habilidades
select NOME from TIPOS_HABILIDADES;

-- 13
-- Seleciona todos os nomes de habilidades relacionando com seus tipos 
select HAB.NOME, TIPOS_HABILIDADES.NOME from HABILIDADES HAB inner join TIPOS_HABILIDADES
on  HAB.ID_TIPO_HABILIDADE = TIPOS_HABILIDADES.ID;

-- 14
-- Selecionar todos os personagens e suas respectivas classes
select * from PERSONAGENS PER inner join CLASSES
on PER.ID_CLASSE = CLASSES.ID;

-- 15
-- Selecionar todos os personagens e suas respectivas classes 
-- (mesmo as que não possuem personagens cadastrados)
select * from PERSONAGENS PER right join CLASSES
on PER.ID_CLASSE = CLASSES.ID;

-- 16
-- Seleciona as classes e sua habilidades
select
	CLASSES.NOME as NOME_DA_CLASSE, HABILIDADES.NOME as NOME_DA_HABILIDADE
from
	CLASSE_HABILIDADES
inner join
	CLASSES on CLASSE_HABILIDADES.ID_CLASSE = CLASSES.ID
inner join
	HABILIDADES on CLASSE_HABILIDADES.ID_HABILIDADE = HABILIDADES.ID;

-- 17
-- Seleciona as habilidades e suas classes
select
	HABILIDADES.NOME as NOME_HABILIDADE, CLASSES.NOME as NOME_CLASSE
from
	CLASSE_HABILIDADES
inner join
	HABILIDADES on CLASSE_HABILIDADES.ID_HABILIDADE = HABILIDADES.ID
inner join
	CLASSES on CLASSE_HABILIDADES.ID_CLASSE = CLASSES.ID;

-- 18
-- 
select
	HABILIDADES.NOME as NOME_HABILIDADE, CLASSES.NOME as NOME_CLASSE
from
	CLASSE_HABILIDADES
inner join
	HABILIDADES on CLASSE_HABILIDADES.ID_HABILIDADE = HABILIDADES.ID
right join
	CLASSES on CLASSE_HABILIDADES.ID_CLASSE = CLASSES.ID;