class Task < ActiveRecord::Base
  # scope :all_c2_students, -> { where(cohort: "C[2]").order(:name) }

  def completed?
  	return "\u2713" if date_completed
  end
end
