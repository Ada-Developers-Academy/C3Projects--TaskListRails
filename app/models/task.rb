class Task < ActiveRecord::Base
  belongs_to :person

  def checkbox
    date_completed && date_completed < Time.now ? "\u2611" : "\u2610"
  end
end
