class CreateIncidents < ActiveRecord::Migration[6.0]
  def change
    create_table :incidents do |t|
      t.string     :experience_years_id, null: false
      t.string     :type_id,             null: false
      t.string     :case_level_id,       null: false
      t.string     :management_level_id, null: false
      t.string     :place,               null: false
      t.datetime   :date,                null: false
      t.string     :patient_id,          null: false
      t.integer    :age_id,              null: false
      t.integer    :gender_id,           null: false
      t.text       :case_content,        null: false
      t.text       :opponent_factor,     null: false
      t.text       :staff_factor,        null: false
      t.text       :improvement_point,   null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end