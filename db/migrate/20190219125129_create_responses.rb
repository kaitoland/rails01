class CreateResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :responses do |t|
      t.integer :topic_id
      t.string :name
      t.string :body
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
