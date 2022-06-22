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

end
