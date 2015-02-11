class ChangeColumnFilerExperienceRemoveNullConstraint < ActiveRecord::Migration
  def change
    change_column :returns, :filer_experience, :string, null: true
  end
end
