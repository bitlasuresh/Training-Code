class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|

      t.timestamps
      t.string :name
      t.string :age
      t.string :height
      t.string :role
      t.string :country id
    end
  end
end
