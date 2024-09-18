--1
SELECT Nome, Ano FROM Filmes

--2
SELECT Nome, Ano FROM Filmes ORDER BY Ano desc 

--3
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro'

--4
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997

--5
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000 

--6
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao 

--7
SELECT Ano, COUNT(*) FROM Filmes GROUP BY ano ORDER BY COUNT(*) DESC

--8
SELECT * FROM atores WHERE Genero = 'M'

--9
SELECT * FROM atores WHERE Genero = 'F' ORDER BY PrimeiroNome

--10
SELECT Filmes.Nome, Generos.Genero  FROM Filmes INNER JOIN FilmesGenero ON FilmesGenero.IdFilme = filmes.Id INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

--11
SELECT Filmes.Nome, Generos.Genero  FROM Filmes INNER JOIN FilmesGenero ON FilmesGenero.IdFilme = filmes.Id INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero WHERE Generos.Genero = 'Mistério'

--12
SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome,ElencoFilme.Papel  FROM Filmes INNER JOIN ElencoFilme ON ElencoFilme.IdFilme = filmes.Id INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor

