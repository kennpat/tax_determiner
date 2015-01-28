class CreateReturns < ActiveRecord::Migration
  def change
    create_table :returns do |t|
      t.string :return_type, null: false
      t.integer :difficulty_score, null: false, default: 0
      t.string :return_details, array: true
      t.string :filer_experience, null: false, default: 'Slim to none'
      t.string :filer_email
      t.string :filer_state
      t.timestamps
    end
    add_index :returns, :return_type
    add_index :returns, :difficulty_score
  end
end
