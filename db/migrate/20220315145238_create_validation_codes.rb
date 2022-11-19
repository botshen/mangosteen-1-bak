class CreateValidationCodes < ActiveRecord::Migration[7.0]
  def change
    drop_table :validation_codes

    create_table :validation_codes do |t|
      t.string :email
      t.integer :knd, default: 1, null: false
      t.string :code, limit: 100
      t.datetime :used_at

      t.timestamps
    end
  end
end
