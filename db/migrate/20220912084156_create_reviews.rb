class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :review
      t.string :reviewer
      t.references :business, index: true, foreign_key: true

      t.timestamps
    end
  end
end
