class CreateLibraryStores < ActiveRecord::Migration[6.0]
  def change
    create_table :library_stores do |t|
      t.string :name
      t.string :author

      t.timestamps
    end
  end
end
