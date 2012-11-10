class CreateDevResources < ActiveRecord::Migration
  def change
  	  create_table :gene_dev_resources do |t|
      t.string :off_location
      t.string :fl_name
      t.string :pj_role
      t.string :team_manager
      t.string :hired_date
      t.string :softdevid
      t.string :gis_exp
      t.string :current_project
      t.string :pj_manager
      t.string :pj_avail
      t.string :pj_group
      t.string :primary_entry
      t.string :dev_program

      t.timestamps
    end
  end
end
