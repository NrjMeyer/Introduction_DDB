class CreateLecons < ActiveRecord::Migration[5.2]
  def change
    create_table :lecons do |t|
      t.text :title
      t.text :body
      t.integer :cours_id

      t.timestamps
    end
  end
end
