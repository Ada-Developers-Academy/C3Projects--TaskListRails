class Person < ActiveRecord::Base
  has_many :tasks

  # scope :person_by_id, -> { where(id: params[:id]) }

end
