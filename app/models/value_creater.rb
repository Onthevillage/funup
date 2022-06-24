class ValueCreater < ApplicationRecord
    with_options presence: true do
        validates :image
        validates :name_workplace
        validates :address_workplace
        validates :introduction
     end

     validates :fun_id, uniqueness: true

     has_many :messages
     belongs_to :fun
     has_one_attached :image

     has_many :relationships, class_name: "Relationship", foreign_key: "fun_id", dependent: :destroy
     has_many :reverse_of_relationships, class_name: "Relationship", foreign_key: "value_creater_id", dependent: :destroy
     has_many :followings, through: :relationships, source: :value_creater
     has_many :followers, through: :reverse_of_relationships, source: :fun

    def self.search(search)
      if search != ""
        ValueCreater.where('name_workplace LIKE(?)', "%#{search}%")
      else
        ValueCreater.all
      end
    end
end
