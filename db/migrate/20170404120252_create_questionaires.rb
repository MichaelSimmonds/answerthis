class CreateQuestionaires < ActiveRecord::Migration[5.0]
  def change
    create_table :questionaires do |t|
      t.string :title
      t.text :description
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
