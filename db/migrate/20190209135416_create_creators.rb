class CreateCreators < ActiveRecord::Migration[5.2]
  def change
    create_table :creators do |t|
      t.string :name
      t.string :type
      t.string :url

      t.timestamps
    end
  end
end
