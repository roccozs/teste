class CreateAnimais < ActiveRecord::Migration
  def change
    create_table :animais do |t|
      t.string :nome
      t.string :especie

      t.timestamps
    end
  end
end
