class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.string :title
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
