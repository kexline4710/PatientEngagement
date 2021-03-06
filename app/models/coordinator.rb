class Coordinator < ActiveRecord::Base
 include ActiveModel::ForbiddenAttributesProtection

  
  before_create {generate_token(:authenticity_token)}

  validates :email, :presence => true, :uniqueness => true
  validates :password, :presence => true
  has_secure_password

  has_many :participant_files
  has_many :participants
  belongs_to :trial

  def send_question_notification_email
  	UserMailer.notify_coordinator_new_question(self).deliver
  end

  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while Coordinator.exists?(column => self[column])
  end
end
