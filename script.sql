use avaliacao_22b;

-- Inserir Crônicas de Nárnia
insert into Livros
values(null, "As Crônicas de Nárnia", "C.S Lewis", 1950, true, "Fantasia", "978-0064471190", "HarperCollins", 768, "Inglês");

-- Atualizar disponibilidade
update Livros
set disponivel = 0
where ano_publicacao < 2000;

select titulo, disponivel, ano_publicacao from Livros
where ano_publicacao < 2000; 

-- Atualizar editora
update Livros
set editora = "Plume Books"
where titulo = "1984";

select titulo, editora from Livros
where titulo = "1984";

-- Deletar por Idioma e Ano
delete from Livros
where idioma = "Frânces" and ano_publicacao < 1970;

select titulo, idioma, ano_publicacao from Livros
where idioma = "Frânces" and ano_publicacao < 1970;

-- Selecionar com WHERE
select * from Livros
where quantidade_paginas > 500;

-- Selecionar com GROUP BY
select count(categoria) quantidade, categoria from Livros
group by categoria;

-- Selecionar com LIMIT
select * from Livros
LIMIT 5;

-- Selecionar com AVG
select avg(ano_publicacao) media from Livros
where disponivel = true;

-- Selecionar com ORDER BY
select * from Livros
order by ano_publicacao desc;

-- Selecionar
select * from Livros
where titulo like 'A%' and ano_publicacao between 1980 and 2000;

select * from Livros;