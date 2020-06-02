class CreateThemes < ActiveRecord::Migration[5.2]
  def change
    create_table :themes do |t|
      t.string :title
      t.string :image
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
