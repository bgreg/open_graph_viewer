class CreatePreviews < ActiveRecord::Migration[8.0]
  def change
    create_table :previews do |t|
      t.string :url
      t.string :og_type
      t.string :image
      t.string :title
      t.string :prefix

      t.timestamps
    end
  end
end
