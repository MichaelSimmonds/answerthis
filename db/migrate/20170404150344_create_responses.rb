class CreateResponses < ActiveRecord::Migration[5.0]
  def change
    create_table :responses do |t|
      t.text :content
      t.references :profile
      t.references :answer

      t.timestamps
    end
  end
end
