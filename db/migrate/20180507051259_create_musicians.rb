class CreateMusicians < ActiveRecord::Migration[5.2]
  def change
    create_table :musicians do |t|
      t.string :name
      t.string :address
      t.string :email
      t.integer :phone
      t.string :password_digest

      t.timestamps
    end
  end
end
