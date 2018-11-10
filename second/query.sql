select author.*, count(*) from author join book_author on book_author.id_author=author.id group by author.name having count(*) < 7;
