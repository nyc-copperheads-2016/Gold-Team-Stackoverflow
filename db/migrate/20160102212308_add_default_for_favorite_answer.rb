class AddDefaultForFavoriteAnswer < ActiveRecord::Migration
  def change
    change_column(:answers,:favorite,:boolean,default: false)
  end
end
