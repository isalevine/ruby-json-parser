# code per https://stackoverflow.com/a/26650729

require 'pg'

conn = PG.connect(dbname: 'json_testdb')
# conn.exec("CREATE DATABASE json_testdb")

pg_str = <<-STR
    CREATE TABLE json_scripts(
        id serial PRIMARY KEY,
        data json NOT NULL
    );
STR

conn.exec(pg_str)