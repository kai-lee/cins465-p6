class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :user_id
      t.string :name
      t.text :description
      t.string :url

      t.timestamps
    end
  end
end
