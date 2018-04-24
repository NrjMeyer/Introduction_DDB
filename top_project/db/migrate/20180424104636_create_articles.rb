class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.integer :id_user
      t.string :name
      t.text :body
      t.text :description

      
    end
  end
end
