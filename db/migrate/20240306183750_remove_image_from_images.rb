class RemoveImageFromImages < ActiveRecord::Migration[7.1]
  def change
    remove_column :images, :image2, :string
    remove_column :images, :image3, :string
  end
end
