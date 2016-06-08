class CreateAccount < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.string :name
      t.string :type
    end
  end
end
