class FixColumnName < ActiveRecord::Migration[7.1]
  def change
    rename_column :images, :image1, :url
  end
end
