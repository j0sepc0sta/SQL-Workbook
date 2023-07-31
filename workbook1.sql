USE mydb;

/* ============================================================================ */
/* SECTION 1: SELECT statements                                                 */
/* ============================================================================ */



-- SELECT name, capital FROM us_state WHERE name = "California"
-- SELECT * FROM us_state WHERE area_size > 10000

/* ---- TASK 1 ---------------------------------------------------------------- */
/* Write an SQL statement to find out what is the state capital of Oregon       */
/* hint: the names of the columns you need are: name and capital                */
/* ---------------------------------------------------------------------------- */

-- SELECT name, capital FROM us_state where name = "Oregon" 





/* ============================================================================ */
/* SECTION 2: SELECT statements with pattern matching and sorting               */
/* ============================================================================ */

-- SELECT * FROM us_state ORDER BY area_size -- ordenar por crescente area_size
-- SELECT * FROM us_state ORDER BY area_size  DESC-- ordenar por decrescente area_size
-- SELECT * FROM us_state WHERE NAME like "M%" -- NOMES QUE COMEÇAM POR M
-- SELECT * FROM us_state where name like "M%" ORDER BY name -- nomes que começam por m mas por ordem


/* ---- TASK 2 ---------------------------------------------------------------- */
/* Write an SQL statement to display all the states with abbreviations that     */
/* start with the letter "N", sort your results by state capital                */
/* ---------------------------------------------------------------------------- */
-- SELECT * FROM us_state WHERE abbreviation like "N%" order by name

/* ============================================================================ */
/* SECTION 3: INSERT statements                                                 */
/* ============================================================================ */
-- INSERT INTO club_member
-- SET first_name  = "Harrison",
-- last_name = "Kong",
-- phone_number = "3221615616"


/* ---- TASK 3 ---------------------------------------------------------------- */
/* Using the above example as a guide,                                          */
/* write an SQL statement to insert a new member into the table club_member     */
/* set first_name to "John", last_name to "Doe"                                 */
/* and phone_number to "9998887777"                                             */
/* ---------------------------------------------------------------------------- */
 -- INSERT INTO club_member
 -- SET first_name  = "John",
-- last_name = "Doe",
-- phone_number = "9998887777"

/* ============================================================================ */
/* SECTION 4: DELETE statements                                                 */
/* ============================================================================ */
-- DELETE FROM club_member
--  WHERE first_name = "Harrison"
--  AND last_name = "Kong"

/* ---- TASK 4 ---------------------------------------------------------------- */
/* Using the above example as a guide,                                          */
/* write an SQL statement to delete the row in the table club_member            */
/* if the phone_number is "9998887777"                                          */  
/* ---------------------------------------------------------------------------- */
-- DELETE FROM club_member
-- WHERE phone_number = "9998887777" "

/* ============================================================================ */
/* SECTION 5: Joining tables                                                    */
/* ============================================================================ 

-- SELECT club_member.member_id, first_name, 
-- last_name, description, amount, due_rate
-- FROM club_member, invoice
-- where club_member.member_id = 
-- invoice.member_id


/* ---- TASK 5 ---------------------------------------------------------------- */
/* Using the above example as a guide,                                          */
/* write an SQL statement to:                                                   */
/*                                                                              */
/* 1. include these columns in your results:                                    */
/*    first_name, middle_name, last_name, professional_title, tier.description  */
/*                                                                              */
/* 2. your columns will come from the tables club_member and tier               */
/*                                                                              */
/* 3. linking the tier_code column of the table club_member                     */
/*    to the code column of the table tier                                      */                        
/* 4. sort the results by last_name                                             */
/* ---------------------------------------------------------------------------- */

SELECT first_name, middle_name,last_name,  
professional_title, tier.description
FROM club_member, tier
where club_member.tier = tier.code
ORDER BY last_name








==================================================== */

