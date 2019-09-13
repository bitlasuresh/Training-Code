class CreateAreas < ActiveRecord::Migration[6.0]
  def change
    create_table :areas do |t|
      t.string :name
      t.string :city_id

      t.timestamps
    end
  end
end
