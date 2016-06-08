class CreateTransaction < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.belongs_to :account, index: true, foreign_key: true
      t.string :date
      t.float :price
      t.string :category
    end
  end
end
