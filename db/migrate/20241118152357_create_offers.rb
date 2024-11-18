class CreateOffers < ActiveRecord::Migration[7.1]
  def change
    create_table :offers do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.string :address
      t.float :reviews
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
