class CreateEquipment < ActiveRecord::Migration[7.0]
  def change
    create_table :equipment do |t|
      t.string :serial
      t.string :techid

      t.timestamps
    end
  end
end
