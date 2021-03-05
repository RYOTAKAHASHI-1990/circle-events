class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.integer :number, null: false
      t.string :name, null: false
      t.string :encrypted_password, null: false
      t.string :full_name, null: false
      t.string :email, unique: true
      t.date :birthday
      t.integer :sex, null: false, default: 1
      t.timestamps
    end
  end
end
