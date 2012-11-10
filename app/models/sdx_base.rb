class SdxBase < ActiveRecord::Base
	self.abstract_class = true
	
#	private
	def self.convert_to_conditions(params_hash,comp_operator,join_operator)
		parts = Array.new
		params_hash.each do |k,v|
			if !v.blank?
				parts << ("#{k} " + comp_operator + " '%#{v}%'")
			end
		end
		sql = parts.map! {|k| "#{k}"}.join(join_operator)
	end

	
end
