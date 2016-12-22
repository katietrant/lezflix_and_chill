class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.boolean :alive
      t.references :show

      t.timestamps null:false
    end
  end
end
