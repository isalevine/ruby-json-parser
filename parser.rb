require 'json'

file = File.read("script.json")

json = JSON.parse(file)

puts json