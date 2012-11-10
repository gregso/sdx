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
	  #DevResource.create!(row.to_hash.symbolize_keys)
	end
end # Dir.each

