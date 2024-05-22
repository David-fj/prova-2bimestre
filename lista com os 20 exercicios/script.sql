use lista_01;

-- 1
insert into Livros
value(null, "As Crônicas de Nárnia", "C.S. Lewis", 1950, true, "Fantasia", "978-0064471190", "HarperCollins", 768, "Inglês");

-- 2
insert into Livros
value(null, "Cem Anos de Solidão", "Gabriel Garcia Marquez", 1967, true, "Ficção", '978-0241968581', "Penguin Books", 422, "Espanhol"),
(null, "Harry Potter e a Pedra Filosofal", "J.K. Rowling", 1997, true, "Fantasia", '978-0439708180', "Bloomsbury", 309, "Inglês"),
(null, "O Senhor dos Anéis: A Sociedade do Anel", "J.R.R. Tolkien", 1954, true, "Fantasia", '978-0618640157', "HarperCollins", 423, "Inglês");

-- 3
insert into Livros
value(null, "Ujhafpussy", "Ujhafsuy", 2007, true, "História", "ujaujajaujaja", "Ujhafnigger", 17000, "Ujhafmerda");

-- 4
update Livros
set disponivel = false
where ano_publicacao < 2000;

-- 5
update Livros
set editora = "Plume Books"
where titulo = "1984";

-- 6
update Livros
set idioma = "Inglês"
where editora = "Penguin Books";

-- 7
update Livros
set titulo = "Harry Potter e a Pedra Filosofal (Edição Especial)"
where isbn = "978-0439708180";

-- 8
delete from Livros
where categoria = "Terror";

-- 9
delete from Livros
where idioma = "Frânces" and ano_publicacao < 1970;

-- 10
delete from Livros
where titulo = "As Crônicas de Nárnia";

-- 11
delete from Livros
where editora = "Penguin Books";

-- 12
select titulo, quantidade_paginas from Livros
where quantidade_paginas > 500;

-- 13
select count(categoria), categoria from Livros
group by categoria;

-- 14
select titulo from Livros
limit 5;

-- 15
select sum(quantidade_paginas), avg(quantidade_paginas) from Livros
where categoria = "Drama";

-- 16
select avg(ano_publicacao) from Livros
where disponivel = true;

-- 17
select max(ano_publicacao), min(ano_publicacao) from Livros;

-- 18
select ano_publicacao from Livros
order by ano_publicacao desc;

-- 19
select titulo, idioma from Livros
where idioma = "Inglês"
union
select titulo, idioma from Livros
where idioma = "Português";

-- 20
select titulo from Livros
where autor = "George Orwell";
