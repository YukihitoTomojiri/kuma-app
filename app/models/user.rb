class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :section
  belongs_to :job

  validates :name,             presence: true
  validates :birthday,         presence: true
  VALID_POSTAL_CODE_REGEX = /\A\d{3}[-]?\d{4}\z/
  validates :postal_code, presence: true, format: { with: VALID_POSTAL_CODE_REGEX }
  validates :section_id, numericality: { other_than: 1, message: "can't be blank" } 
  validates :job_id, numericality: { other_than: 1, message: "can't be blank" } 

end
