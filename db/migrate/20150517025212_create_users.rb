class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :string
      t.string :password_digest
      t.string :string

      t.timestamps null: false
    end
  end
end
