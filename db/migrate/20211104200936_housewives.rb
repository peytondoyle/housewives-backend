class Housewives < ActiveRecord::Migration[6.1]
  def change
    create_table :housewives do |t|
      t.string :firstname
      t.string :lastname
      t.boolean :current
      t.string :image

      t.timestamps
    end
  end
end
