class AddCategoryToPost < ActiveRecord::Migration[7.0]
  def change
    add_belongs_to :posts, :category, foreing_key: true
  end
end
