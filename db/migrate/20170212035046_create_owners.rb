class CreateOwners < ActiveRecord::Migration[5.0]
  def change
    create_table :owners do |t|
      t.string :email
      t.string :name
      t.string :password_digest
      t.string :avatar

      t.timestamps
    end
  end
end
