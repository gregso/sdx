class DevResource < SdxBase
	set_table_name 'gene_dev_resources'
	attr_protected :id
	before_create :default_values

	def self.search(search)
		#search is hash of column names and values
		sql = convert_to_conditions(search," like "," AND ")
		(sql.blank?) ? scoped : where(sql)
	end
	
	def find_resources 
		DevResource.find(:all, :conditions => to_conditions) 
	end
	
	def list_pj_manager
		DevResource.select(:pj_manager).uniq #  by_sql("select pj_manager from DevResource group by pj_manager")
	end
	
	private
	
	
	def default_values
		self.dev_program ||= "3.2.X"
	end


	#attr_accessible :id, :current_project, :fl_name, :gis_exp, :hired_date, :off_location, :pj_avail, :pj_group, :pj_manager, :pj_role, :primary_entry, :softdevid, :team_manager
end
