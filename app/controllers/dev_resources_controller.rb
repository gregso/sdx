class DevResourcesController < ApplicationController
  helper_method :sort_column, :sort_direction
  
  def index
  	  @dev_resources = DevResource.search(search_params).order(sort_column + ' ' + sort_direction).paginate(:per_page => 20,:page => params[:page])
  end
  
  private
  def search_params
  	  search_pars = {"fl_name" => params[:search_fl_name],
  	  "pj_manager" => params[:search_pj_manager],
  	  "pj_role" => params[:search_pj_role],
  	  "off_location" => params[:search_off_location],
  	  }
  	  
  end
  
  def sort_column
  	  #params[:sort] || "pj_manager"
  	  DevResource.column_names.include?(params[:sort])? params[:sort] : "pj_manager"
  end
  
  def sort_direction
      #params[:direction] || "asc"
      %w[asc desc].include?(params[:direction])? params[:direction] : "asc"
  end
end
