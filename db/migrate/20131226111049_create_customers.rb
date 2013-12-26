class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|

      t.string  :customer_name, :null=>false
      t.string  :customer_short_name
      t.string  :customer_description
      t.boolean :status,:default=>1

      t.integer :created_by
      t.integer :modified_by

      t.timestamps
    end
  end
end
