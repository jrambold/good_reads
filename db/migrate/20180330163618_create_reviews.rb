class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :body
      t.references :user, index: true, foreign_key: true
      t.references :book, index: true, foreign_key: true
    end
  end
end
