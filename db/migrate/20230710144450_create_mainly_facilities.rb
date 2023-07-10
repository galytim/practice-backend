class CreateMainlyFacilities < ActiveRecord::Migration[7.0]
  def change
    create_table :mainly_facilities do |t|
      t.string :name
      t.integer :code
      t.integer :initCost
      t.date :dateStartUsing
      t.date :dateEndUsing
      t.integer :codeEndUsing
      t.integer :regulatoryTermServices
      t.integer :accumulatedDepreciaton
      t.integer :residualValue

      t.timestamps
    end
  end
end
