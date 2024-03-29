require 'json'
require './db_interface.rb'

file = File.read("script.json")

json = JSON.parse(file)



def json_readout(json)
    scenario = json["scenarios"][0]

    # better way to destructure, or access json with dot notation?
    readout_str = <<-STR
        Game: #{scenario["game"]}
        Scenario Title: #{scenario["title"]}
        Goal: #{scenario["goal"]}

        Maps: #{scenario["maps"]}

        Cells: #{scenario["cells"]}

        Events: #{scenario["events"]}

    STR

    puts readout_str
end


def store_json(json)
    run_pg(json)
end


json_readout(json)
store_json(json)