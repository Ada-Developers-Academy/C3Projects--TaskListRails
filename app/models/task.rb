class Task < ActiveRecord::Base
  # scope :all_c2_students, -> { where(cohort: "C[2]").order(:name) }

  def completed?
  	return "yes" if date_completed
  	"no"
  end
end
