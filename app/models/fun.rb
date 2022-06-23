class Fun < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :last_name
    validates :first_name
    validates :gender_id, numericality: { other_than: 0, message: "can't be blank" }
    validates :birth_date
  end

  has_many :messages
  has_one :value_creater

  has_many :relationships, class_name: "Relationship", foreign_key: "fun_id", dependent: :destroy
  has_many :followings, through: :relationships, source: :value_creater

 def follow(value_creater_id)
    relationships.create(value_creater_id: value_creater_id)
 end

 def unfollow(value_creater_id)
    relationships.find_by(value_creater_id: value_creater_id).destroy
 end

 def following?(value_creater)
    followings.include?(value_creater)
 end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :gender
end
