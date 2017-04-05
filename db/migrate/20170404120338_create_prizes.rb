class CreatePrizes < ActiveRecord::Migration[5.0]
  def change
    create_table :prizes do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.integer :value
      t.integer :quantity_remaining
      t.float :win_probability
      t.string :voucher_code
      t.references :questionnaire, foreign_key: true

      t.timestamps
    end
  end
end
