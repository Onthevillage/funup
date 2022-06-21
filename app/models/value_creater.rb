class ValueCreater < ApplicationRecord
    with_options presence: true do
        validates :name_workplace
        validates :address_workplace
        validates :introduction
     end

     has_many :messages
     belongs_to :fun
end
