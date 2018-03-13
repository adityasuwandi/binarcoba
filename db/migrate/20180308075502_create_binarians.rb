class CreateBinarians < ActiveRecord::Migration[5.1]
  def change
    create_table :binarians do |t|
      t.string :nama
      t.integer :umur
      t.text :alamat

      t.timestamps
    end
  end
end
