class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users, id: :uuid do |t|
      t.string :name
      t.integer :role
      t.string :uid
      t.timestamps
    end
  end
end
