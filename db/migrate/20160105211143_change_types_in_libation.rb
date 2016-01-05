class ChangeTypesInLibation < ActiveRecord::Migration

  def change
    change_column :libations, :container_type, :integer
    rename_column :libations, :measurement_units, :measurement_type
  end

end
