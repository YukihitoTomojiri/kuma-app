class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :section
  belongs_to_active_hash :job
  has_many :incidents

  validates :name,             presence: true
  validates :birthday,         presence: true
  VALID_POSTAL_CODE_REGEX = /\A\d{3}[-]?\d{4}\z/
  validates :postal_code, presence: true, format: { with: VALID_POSTAL_CODE_REGEX }
  validates :section_id, numericality: { other_than: 1, message: "can't be blank" } 
  validates :job_id, numericality: { other_than: 1, message: "can't be blank" } 
  
  include JpPrefecture
  jp_prefecture :prefecture_code
  
  def prefecture_name
    JpPrefecture::Prefecture.find(code: prefecture_code).try(:name)
  end
  
  def prefecture_name=(prefecture_name)
    self.prefecture_code = JpPrefecture::Prefecture.find(name: prefecture_name).code
  end
end
