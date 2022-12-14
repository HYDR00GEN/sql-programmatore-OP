/* 1. Calcolare il codice dei programmatori che sono stati autori di almeno un programma scritto in Java dopo il 2000. */

select autore.codice
from autore 
    join programma on autore.id = programma.id
where programma.anno > 2000 and programma.linguaggio = 'Java'


/* 2. Calcolare il nome e la categoria dei programmatori che sono stati autori di almeno un programma scritto in un linguaggio diverso da Python, ordinando il risultato rispetto al nome dei programmatori. */

select programmatore.nome, programmatore.categoria
from autore 
    join programmatore on autore.codice = programmatore.codice
    join programma on autore.id = programma.id
where programma.linguaggio != 'Python'
order by programmatore.nome

/* 3. Per ogni programmatore di categoria 10, calcolare il suo codice e l'anno in cui ha scritto il primo programma in un linguaggio diverso da Java. */

select programmatore.codice, programma.anno, programma.linguaggio
from autore 
    join programmatore on autore.codice = programmatore.codice
    join programma on autore.id = programma.id
where programma.linguaggio != 'Java' and programmatore.categoria = 10


/* 4. Calcolare le coppie dei codici di programmatori che sono stati coautori di almeno un programma scritto in Python. */

select distinct a1.codice, a2.codice
from autore a1, autore a2, programma
where a1.id = a2.id and a2.id = programma.id and a1.codice < a2.codice and programma.linguaggio = 'Python'

/* 5. Calcolare il codice ed il nome dei programmatori che hanno scritto solo programmi Java. */

/* 6. Per ogni programmatore e per ogni anno calcolare il numero di programmi scritti da quel programmatore in quell’anno, mostrando codice del programmatore, anno e numero di programmi scritti. */

/* 7. Per ogni linguaggio calcolare quanti sono in media gli autori dei programmi scritti in quel linguaggio.