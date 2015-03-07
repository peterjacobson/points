class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :user
      t.belongs_to :group
      t.belongs_to :contribution
      t.text :text
      t.integer :score, default: 0
      t.timestamps null: false
    end
  end
end
