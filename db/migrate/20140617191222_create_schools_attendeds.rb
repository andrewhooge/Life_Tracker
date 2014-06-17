class CreateSchoolsAttendeds < ActiveRecord::Migration
  def change
    create_table :schools_attendeds do |t|
      t.string :school
      t.string :beginning_year
      t.string :ending_year

      t.timestamps
    end
  end
end
