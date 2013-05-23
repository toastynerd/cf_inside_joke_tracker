class CreateJokes < ActiveRecord::Migration
  def change
    create_table :jokes do |t|
      t.string :name
      t.string :meaning
      t.references :book

      t.timestamps
    end
    add_index :jokes, :book_id
  end
end
