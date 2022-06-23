class Relationship < ApplicationRecord
    belongs_to :fun, class_name: "Fun"
    belongs_to :value_creater, class_name: "ValueCreater"

    with_options presence: true do
        validates :fun_id
        validates :value_creater_id
     end
end
