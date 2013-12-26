class CreateCurrentProjects < ActiveRecord::Migration
  def change
    create_table :current_projects do |t|

      t.string  :project_name, :null=>false
      t.string  :project_description, :default=>'N.A'
      t.string  :project_start_date
      t.integer :state_id, :null=>false
      t.integer :customer_id, :null=>false
      t.boolean :status,:default=>1

      t.integer :created_by
      t.integer :modified_by

      t.timestamps
    end
  end
end
