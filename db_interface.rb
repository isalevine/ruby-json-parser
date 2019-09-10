# code per https://stackoverflow.com/a/26650729

require 'pg'

conn = PG.connect(dbname: 'postgres')
conn.exec("CREATE DATABASE json_script_test")