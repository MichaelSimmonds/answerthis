class CreateResults < ActiveRecord::Migration[5.0]
  def change
    create_table :results do |t|
      t.integer :status
      t.references :profile, foreign_key: true
      t.references :questionaire, foreign_key: true
      t.references :prize, foreign_key: true

      t.timestamps
    end
  end
end
