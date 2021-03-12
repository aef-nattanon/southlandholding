class CreateCustomereds < ActiveRecord::Migration[6.1]
  def change
    create_table :customereds do |t|
      t.string :id_card
      t.string :first_name
      t.string :last_name
      t.references :parent

      t.timestamps
    end
  end
end
