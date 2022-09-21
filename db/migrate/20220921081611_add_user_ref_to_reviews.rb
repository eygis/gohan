class AddUserRefToReviews < ActiveRecord::Migration[7.0]
  def change
    add_reference :reviews, :user, null: false, foreign_key: true, default: 3
    remove_column :reviews, :reviewer
  end
end
