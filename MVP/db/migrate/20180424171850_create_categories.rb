class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.integer :article_id
      t.string :name
      t.belongs_to :article, index: true
    end
  end
end
