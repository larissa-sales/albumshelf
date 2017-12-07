class AlbumsAndBooksTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :albums, :books do |t|
      t.index :album_id
      t.index :book_id
    end
  end
end
