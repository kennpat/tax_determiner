class ChangeColumnDefaultFilerExperience < ActiveRecord::Migration
  def change
    change_column_default :returns, :filer_experience, nil
  end
end
