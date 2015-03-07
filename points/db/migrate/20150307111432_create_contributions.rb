class CreateContributions < ActiveRecord::Migration
  def change
    create_table :contributions do |t|
      t.belongs_to :user
      t.belongs_to :group
      t.belongs_to :point
      t.string :title
      t.text :text
      t.string :image_url
      t.integer :score, default: 0
      t.timestamps null: false
    end
  end
end