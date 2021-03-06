class Question < ActiveRecord::Base
	 include ActiveModel::ForbiddenAttributesProtection
  
  belongs_to :participant
  has_one :answer
  has_one :coordinator, :through => :answer

  def coordinator_name
    Coordinator.find(self.answer.coordinator_id).first_name
  end
end
