--Exercicio 1: 
Select nome, ano from filmes


--Exercicio 2: Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select nome, ano from filmes order by ano


--Exercicio 3: Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
select nome, ano, duracao from filmes where nome = 'De Volta para o Futuro'

--Exercicio 4:  Buscar os filmes lançados em 1997
select nome, duracao from filmes where ano = 1997

--Exercicio 5:  Buscar os filmes lançados APÓS o ano 2000
select nome, duracao from filmes where ano > 2000

--Exercicio 6:  Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select nome, duracao from filmes where duracao > 100 and duracao < 150 order by duracao 

--Exercicio 7:  Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT ano, COUNT(*) AS QuantidadeFilmes FROM filmes GROUP BY ano ORDER BY SUM(duracao) DESC

--Exercicio 8:  Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
select PrimeiroNome, UltimoNome from atores where genero = 'M'

--Exercicio 9:  Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select PrimeiroNome, UltimoNome from atores where genero = 'F' order by primeironome

--Exercicio 10: Buscar o nome do filme e o gênero
select 
	Nome, Genero
from 
	filmes fi
	inner join FilmesGenero fg ON fi.Id = fg.IdFilme
	inner join Generos ge ON ge.Id = fg.IdGenero

--Exercicio 11: Buscar o nome do filme e o gênero do tipo "Mistério"
select 
	Nome, Genero
from 
	filmes fi
	inner join FilmesGenero fg ON fi.Id = fg.IdFilme
	inner join Generos ge ON ge.Id = fg.IdGenero
where 
	ge.Genero = 'Mistério'


--Exercicio 12: Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select 
	fi.Nome, ato.PrimeiroNome, ato.UltimoNome, ef.Papel
from 
	filmes fi
	inner join ElencoFilme ef ON fi.Id = ef.IdFilme
	inner join Atores ato ON ato.Id = ef.IdAtor

