class CreatePrizePools < ActiveRecord::Migration[5.0]
  def change
    create_table :prize_pools do |t|
      t.references :questionaire, foreign_key: true
      t.references :prize, foreign_key: true

      t.timestamps
    end
  end
end
