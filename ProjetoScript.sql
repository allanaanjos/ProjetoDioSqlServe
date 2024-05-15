-- Busca por Nome e Ano
SELECT nome, ano FROM filmes

--ordem crecente pelo ano 
SELECT nome, ano FROM filmes ORDER BY ano

--BUSCANDO FILME POR NOME,ANO E DURAÇAO
SELECT nome, ano, Duracao 
FROM filmes
WHERE Ano = 1985

--buscas por filmes de 1997
SELECT * FROM filmes
WHERE Ano = 1997

--buscar filmes lançados depois de 2000
SELECT * FROM filmes
WHERE Ano > 2000

--BUSCAR FILMES COM DURAÇAO MAIOR QUE 100 E MENOR 150
SELECT * FROM filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(*) AS QuantidadeDeFilmes
FROM Filmes
GROUP BY Ano
ORDER BY MAX(Duracao) DESC 

--Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT * FROM Atores 
WHERE Genero = 'M'

--Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT * FROM Atores 
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--Buscar o nome do filme e o gênero
SELECT Filmes.Nome AS NomeDoFilme, Genero AS Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.ID = FilmesGenero.IDFilme
INNER JOIN Generos ON FilmesGenero.IDGenero = Generos.ID;

--Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT Filmes.Nome AS NomeDoFilme, Genero AS Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.ID = FilmesGenero.IDFilme
INNER JOIN Generos ON FilmesGenero.IDGenero = Generos.ID
WHERE Genero = 'Mistério';


--Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT 
    Filmes.Nome AS NomeDoFilme, 
    Atores.PrimeiroNome, 
    Atores.UltimoNome, 
    ElencoFilme.Papel
FROM 
    Filmes
INNER JOIN 
    ElencoFilme ON Filmes.ID = ElencoFilme.IdFilme
INNER JOIN 
    Atores ON ElencoFilme.IDAtor = Atores.ID;



