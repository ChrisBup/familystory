class Member < ActiveRecord::Base
  authenticates_with_sorcery!
  attr_accessor :password
  attr_protected :password_digest

  has_many :videos
  has_many :comments

  validates :name, presence: true
  validates :dob, presence: true
  validates :city, presence: true
  validates :bio, presence: true

  validates :email, presence: true, confirmation: true, uniqueness: true, email: true
  validates :password, presence: true, confirmation: true, length: {within: 2..10, too_short: "Your password is too short! Please make it 2-10 characters.", too_long: "Your password is too long! Please make it 2-10 characters"}

  validates_presence_of :password, on: :create
  validates_presence_of :email, on: :create
  validates_uniqueness_of :email

end
