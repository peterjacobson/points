class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.belongs_to :group
      t.belongs_to :user
      t.string :title
      t.text :description
      t.string :tag
      t.integer :score, default: 0
      # has many tags
      # deadline, default: null
      t.timestamps null: false
    end
  end
end
