class DropColumnPrefixOnPreviews < ActiveRecord::Migration[8.0]
  def change
    remove_column :previews, :prefix
  end
end
