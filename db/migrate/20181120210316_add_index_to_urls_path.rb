class AddIndexToUrlsPath < ActiveRecord::Migration[5.2]
  def change
    add_column :urls, :path, :string unless column_exists? :urls, :path
    add_index :urls, :path, unique: true
  end
end
