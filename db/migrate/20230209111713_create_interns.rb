class CreateInterns < ActiveRecord::Migration[6.1]
  def change
    create_table :interns do |t|
      t.string :name
      t.integer :age
      t.integer :mark1
      t.integer :mark2
      t.integer :mark3
      t.string :grade

      t.timestamps
    end
  end
end
