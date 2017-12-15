class Ninja < ActiveRecord::Base
  belongs_to :dojo

  validates :last_name, :first_name, presence: true

end
