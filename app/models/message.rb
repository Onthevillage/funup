class Message < ApplicationRecord
    with_options presence: true do
        validates :type_id, numericality: { other_than: 0, message: "can't be blank" }
        validates :content
    end
    
    belongs_to :fun
    belongs_to :value_creater
end
