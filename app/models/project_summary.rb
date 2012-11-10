class ProjectSummary < SdxBase
	establish_connection :sdx
	set_table_name 'sd_future_projects_list'
	
	def self.search(search)
		sql = convert_to_conditions(search," like "," AND ")
		(sql.blank?) ? scoped : where(sql)
	end
end
