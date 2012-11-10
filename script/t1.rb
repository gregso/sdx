#puts "ala"

h = Hash.new

h = {:ala => "kotek", :bolo => "piesek", :romo => "chomik" }

i=0
s = Array.new
h.each do |k,v|
	s << "#{k} like '%#{v}%'"
end


sql = s.map! {|k| "#{k}"}.join(" AND ")
