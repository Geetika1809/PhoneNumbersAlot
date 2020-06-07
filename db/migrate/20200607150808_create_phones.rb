class CreatePhones < ActiveRecord::Migration[5.2]
  def change
    create_table :phones do |t|
      t.integer :number
      t.boolean :available, :default => true

      t.timestamps
    end
  end
end
