# code per https://stackoverflow.com/a/26650729

require 'pg'


# => MOVE THESE COMMENTED LINES TO A NEW FILE??
# conn = PG.connect(dbname: 'json_testdb')
# conn.exec("CREATE DATABASE json_testdb")


def run_pg(json)
    conn = PG::Connection.open(dbname: 'json_testdb')

    # pg_str = <<-STR
    #     CREATE TABLE json_scripts(
    #         id serial PRIMARY KEY,
    #         data json NOT NULL
    #     );
    # STR

    puts json   # STILL MUST BE CONVERTED USINT .to_json !!!

    # json variable passed from parser.rb
    pg_str = "INSERT INTO json_scripts (data) VALUES ('#{json.to_json}');"

    conn.exec(pg_str)
end