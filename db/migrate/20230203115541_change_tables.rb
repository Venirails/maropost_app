class ChangeTables < ActiveRecord::Migration[6.1]
  def change
    add_column :students,:roll_no,:integer
    rename_column :employees,:name,:employee_name
    remove_timestamps :employees
  end
end
