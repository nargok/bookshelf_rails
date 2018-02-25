class CreateBooks < ActiveRecord::Migration[5.1]
  def up
    create_table :books do |t|
      t.references :users
      t.string :title, null: false

      t.timestamps
    end

    add_index :books, :title
  end

  def down
    drop_table :books
  end
end
