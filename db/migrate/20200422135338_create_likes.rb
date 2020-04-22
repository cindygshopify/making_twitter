class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.references :liker, null: false, foreign_key: {to_table: :users}
      t.references :tweet, index: true, null: false, foreign_key: true

      t.timestamps
    end
  end
end
