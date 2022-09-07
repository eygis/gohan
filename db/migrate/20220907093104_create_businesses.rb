class CreateBusinesses < ActiveRecord::Migration[7.0]
  def change
    create_table :businesses do |t|
      t.string :business_name
      t.string :business_city
      t.integer :business_votes
      t.float :business_rating

      t.timestamps
    end
  end
end
