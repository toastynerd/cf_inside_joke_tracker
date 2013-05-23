class CreateInTheKnowPeeps < ActiveRecord::Migration
  def change
    create_table :in_the_know_peeps do |t|
      t.string :name

      t.timestamps
    end
  end
end
