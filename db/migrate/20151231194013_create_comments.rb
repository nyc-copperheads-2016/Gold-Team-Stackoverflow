class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :response, null: false
      t.references :commentable, polymorphic: true
      t.references :user, null: false

      t.timestamps null: false
    end
  end
end
