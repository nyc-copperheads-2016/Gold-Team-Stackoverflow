class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :content, null: false
      t.boolean :favorite, null: false
      t.references :user, null: false
      t.references :question, null: false

      t.timestamps null: false
    end
  end
end
