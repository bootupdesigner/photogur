class CreatePictures < ActiveRecord::Migration[6.1]
  def change
    create_table :pictures do |t|
      t.string :title
      t.string :url
      t.string :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
