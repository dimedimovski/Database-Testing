*** Settings ***
Library           DatabaseLibrary

*** Variables ***
${dbname}         dimovski
${dbuser}         root
${dbpasswd}       ${EMPTY}
${dbhost}         localhost
${dbport}         3306
@{queryResults}

*** Test Cases ***
Select_brand
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    @{queryResults}    Query    SELECT * FROM brand

Select_kursisti
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    @{queryResults}    Query    SELECT * FROM kursisti

Select_obuki
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    @{queryResults}    Query    SELECT * FROM obuki

Select_users
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    @{queryResults}    Query    SELECT * FROM users

Insert_brand
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Execute Sql String    INSERT INTO brand (NAME,country,eu) VALUES ('audi','d',1)

Insert_kursisti
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Execute Sql String    INSERT INTO kursisti (fname,lname,age) VALUES ('Matej','Popovski',12)

Insert_obuki
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Execute Sql String    INSERT INTO obuki (obuka_subject,obuka_description,prize) VALUES ('softver tester','za freelancer',20000)

Insert_users
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Execute Sql String    INSERT INTO obuki (obuka_subject,obuka_description,prize) VALUES ('softver tester','za freelancer',20000)

Delete_brand
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Execute Sql String    DELETE FROM brand WHERE b_id=11;

Delete_kursisti
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Execute Sql String    DELETE FROM kursisti WHERE id=7;

Delete_obuki
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Execute Sql String    DELETE FROM obuki WHERE ob_id=12;

Delete_users
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Execute Sql String    DELETE FROM users WHERE id=8;
