class CreateLostPets < ActiveRecord::Migration[6.0]
  def change
    create_table :lost_pets do |t|
      t.string :pet_type
      t.string :location
      t.string :img_url
    end
  end
end
