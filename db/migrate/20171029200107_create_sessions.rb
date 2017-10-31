class CreateSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :sessions do |t|
      t.string :name
      t.string :provider
      t.string :uid
      t.string :image

      t.timestamps
    end
  end
  def down
    drop_table 'movies' # deletes the whole table and all its data!
  end
end