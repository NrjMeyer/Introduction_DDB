class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.integer :id_article
      t.string :name
    end
  end
end
