class CreateToys < ActiveRecord::Migration[5.2]
  def change
    create_table :toys do |t|
      t.string :name, null:false
      t.datetime :created_at, null: false
      t.datetime :update_at, null: false
    end
  end
end
