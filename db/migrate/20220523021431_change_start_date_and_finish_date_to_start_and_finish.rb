class ChangeStartDateAndFinishDateToStartAndFinish < ActiveRecord::Migration[7.0]
  def change
    rename_column :shifts, :start_date, :start
    rename_column :shifts, :finish_date, :finish
  end
end
