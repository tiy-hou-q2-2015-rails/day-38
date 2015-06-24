class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, unique: true
      t.string :password_digest
      t.string :token, unique: true

      t.timestamps null: false
    end
  end
end
