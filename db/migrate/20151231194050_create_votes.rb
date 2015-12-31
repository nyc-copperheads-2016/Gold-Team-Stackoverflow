class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.boolean :upvote, null: false
      t.references :votable, polymorphic: true
      t.references :user, null: false

      t.timestamps null: false
    end
  end
end
