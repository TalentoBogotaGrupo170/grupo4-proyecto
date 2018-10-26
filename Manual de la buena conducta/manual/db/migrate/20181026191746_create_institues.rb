class CreateInstitues < ActiveRecord::Migration[5.2]
  def change
    create_table :institues do |t|
      t.string :name
      t.string :contact
      t.string :direction
      t.string :district
      t.integer :phone
      t.string :email

      t.timestamps
    end
  end
end
