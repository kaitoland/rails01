class CreateHmReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :hm_reviews do |t|
      t.string :artwork_name
      t.string :artwork_creator
      t.string :artwork_review
      t.integer :artwork_point
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
