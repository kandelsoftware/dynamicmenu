class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :name
      t.references :country, foreign_key: true
      t.references :state, foreign_key: true
      t.references :town, foreign_key: true
      t.timestamps
    end
  end
end
