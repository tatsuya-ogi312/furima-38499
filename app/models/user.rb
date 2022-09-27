class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
         KANGI_RENGE = /\A[ぁ-んァ-ヶ一-龥々]+\z/.freeze
         KATAKANA_RENGE = /\A[ァ-ヶー－]+\z/.freeze
  validates :password, format: { with: PASSWORD_REGEX }, allow_blank: true
  validates :nickname, presence: true
  validates :last_name, presence: true
  validates :last_name, format: { with: KANGI_RENGE }, allow_blank: true
  validates :first_name, presence: true
  validates :first_name, format: { with: KANGI_RENGE }, allow_blank: true
  validates :last_name_kana, presence: true
  validates :last_name_kana, format: { with: KATAKANA_RENGE }, allow_blank: true
  validates :first_name_kana, presence: true
  validates :first_name_kana,format: { with: KATAKANA_RENGE }, allow_blank: true
  validates :birthday, presence: true

end
