class ProjectSummaryController < ApplicationController
	helper_method :sort_column, :sort_direction
	
	def index
		@project_summary = ProjectSummary.search(search_params).order(sort_column + ' ' + sort_direction).paginate(:per_page => 50,:page => params[:page])
	end
	
	private
	def search_params
  	  search_pars = {"pj_name" => params[:search_pj_name] }
  	end
	
	def sort_column
  	  #params[:sort] || "pj_manager"
  	  ProjectSummary.column_names.include?(params[:sort])? params[:sort] : "dev_start"
  end
  
  def sort_direction
      #params[:direction] || "asc"
      %w[asc desc].include?(params[:direction])? params[:direction] : "desc"
  end
end
