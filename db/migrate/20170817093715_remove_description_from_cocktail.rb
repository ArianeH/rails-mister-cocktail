class RemoveDescriptionFromCocktail < ActiveRecord::Migration[5.0]
  def change
    remove_column :cocktails, :description, :text
  end
end
