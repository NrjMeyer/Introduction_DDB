class TotalModif < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :id_user, :integer
    add_column :categories, :id_articles, :integer
  end
end
