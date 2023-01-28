class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :section
  belongs_to_active_hash :job
  has_many :incidents
  
  with_options presence: true do
    validates :name
    validates :birthday
    validates :prefecture_code
    VALID_POSTAL_CODE_REGEX = /\A\d{3}[-]?\d{4}\z/
    validates :postcode, format: { with: VALID_POSTAL_CODE_REGEX }
  end
  
  with_options numericality: { other_than: 1, message: "can't be blank" } do
    validates :section_id
    validates :job_id
  end

  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
  validates :password, format: { with: VALID_PASSWORD_REGEX }
  
  include JpPrefecture
  jp_prefecture :prefecture_code
  
  def prefecture_name
    JpPrefecture::Prefecture.find(code: prefecture_code).try(:name)
  end
  
  def prefecture_name=(prefecture_name)
    self.prefecture_code = JpPrefecture::Prefecture.find(name: prefecture_name).code
  end
  
end
