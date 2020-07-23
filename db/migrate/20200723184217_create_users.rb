class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :bio
      t.string :email
      t.string :pet_preference
      t.boolean :foster?
      t.boolean :adopt?
      t.integer :age
      t.string :img_url
      t.string :country
      t.string :city
      t.integer :zip
      t.string :password
      t.timestamps
    end
  end
end
