class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :gender
      t.integer :is_client
      t.string :company_name
      t.text :company_address
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
