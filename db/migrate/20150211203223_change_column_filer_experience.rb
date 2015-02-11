class ChangeColumnFilerExperience < ActiveRecord::Migration
  def change
    change_column :returns, :filer_experience, :string, null: false
  end
end
