class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :name, null: false
      t.datetime :created_at, null: false
      t.datetime :update_at, null: false
    end


    # SAME AS THE TOP METHOD
    # # self.create_table(:dogs) do |t|
    # # end
  end
end
