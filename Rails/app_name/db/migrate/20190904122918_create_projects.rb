class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :name
      t.string :email
      t.string :address
      t.string :phone
      t.string :number

      t.timestamps
    end
  end
end
