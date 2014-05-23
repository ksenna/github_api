class CreateGists < ActiveRecord::Migration
  def change
    create_table :gists do |t|
    	t.integer :user_id
    	t.integer :gh_id
    	t.string :gist_url
      t.string :name
      t.string :description
      t.string :commits

      t.timestamps
    end
  end
end
