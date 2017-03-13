class AddCategoryToSources < ActiveRecord::Migration[5.0]
  def change
    add_reference :sources, :category, foreign_key: true
  end
end
