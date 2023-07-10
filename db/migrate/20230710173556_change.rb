class Change < ActiveRecord::Migration[7.0]
  def change
    change_column :mainly_facilities, :code, :string
  end
end
