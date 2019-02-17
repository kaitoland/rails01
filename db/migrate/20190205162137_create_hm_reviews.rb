class CreateHmReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :hm_reviews do |t|
      t.string :hm_name
      t.string :hm_creator
      t.string :hm_comment
      t.integer :hm_point
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
