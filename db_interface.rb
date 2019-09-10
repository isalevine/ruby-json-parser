# code per https://stackoverflow.com/a/26650729

require 'pg'

conn = PG.connect(dbname: 'json_testdb')
# conn.exec("CREATE DATABASE json_testdb")