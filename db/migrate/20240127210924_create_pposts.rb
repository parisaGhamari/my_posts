class CreatePposts < ActiveRecord::Migration[7.1]
  def change
    create_table :pposts do |t|
      t.string :name
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
