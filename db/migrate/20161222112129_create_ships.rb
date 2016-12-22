class CreateShips < ActiveRecord::Migration
  def change
    create_table :ships do |t|
      t.string :mash_name
      t.references :show

      t.timestamps null:false
  end
  end
end
