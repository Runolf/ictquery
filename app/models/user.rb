class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  attr_accessor :login
  has_one_attached :image
  has_one_attached :portfolios
  has_one_attached :personallinks

  validates :username, presence: true, uniqueness: {case_sensitive: false}, format: {with: /\A[a-zA-Z0-9 _\.]*\z/}
  validates :birthdate, presence: true
  validates :firstname, presence: true
  validates :lastname, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions.to_hash).where("lower(username) = :value OR lower(email) = :value", value: login.downcase).first
    else
      where(conditions.to_hash).first
  end
end
end