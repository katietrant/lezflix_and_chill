class CreateCouplings < ActiveRecord::Migration
  def change
    create_table :couplings do |t|
      t.integer :character_id
      t.integer :ship_id

      t.timestamps null:false
    end
  end
end
