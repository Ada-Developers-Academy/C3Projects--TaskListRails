class Task < ActiveRecord::Base
  # scope :all_c2_students, -> { where(cohort: "C[2]").order(:name) }
  # scope :completed, -> { where(:date_completed != "" ) }

  def completed?
  	date_completed
  end
end
