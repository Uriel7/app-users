class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :surnames
      t.string :phone
      t.string :address
      t.string :image

      t.timestamps
    end
  end
end
