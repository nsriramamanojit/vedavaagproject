class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :name, :null=>false
      t.string :description
      t.string :short_name
      t.boolean :status, :default=>1

      t.integer :created_by
      t.integer :modified_by

      t.timestamps
    end
  end
end
