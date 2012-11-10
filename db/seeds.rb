# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

Dir.glob("./db/csv/*.csv") do |f|  

	csv_text = File.read(f)
	puts "File opened..." + f
	csv = CSV.parse(csv_text, {:col_sep => ';',:headers => true} )
	puts "File parsed..."
	csv.each do |row|
	  row = row.to_hash  #.with_indifferent_access
	  puts "Values:"
	  #puts row.values
	  #puts row['TEAM_MANAGER']
	  puts row
	  DevResource.create!(row.to_hash.symbolize_keys)
	end
end # Dir.each

#CSV.foreach(filename, :headers => true) do |row|
#  Moulding.create!(row.to_hash)
#end

