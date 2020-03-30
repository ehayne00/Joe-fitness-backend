class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :dob
      t.string :condition
      t.string :medication
      t.string :disability
      t.string :goals

      t.timestamps
    end
  end
end
