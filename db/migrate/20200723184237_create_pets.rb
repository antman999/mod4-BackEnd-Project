class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :pet_type
      t.string :breed
      t.integer :age
      t.string :sex
      t.string :country
      t.string :city
      t.integer :zip
      t.string :img_url
      t.boolean :adopted
      t.boolean :fostered
      t.boolean :can_adopt?
      t.boolean :can_foster?
      t.integer :user_id
      t.timestamps
    end
  end
end
