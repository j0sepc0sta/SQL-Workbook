USE writesdb;

SELECT title, author, pages, language_name
FROM submission, language
WHERE submission.language_code = language.language_code
AND pages > 150
ORDER BY author;
