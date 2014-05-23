class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
    	t.integer :user_id
    end
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
  end
end
