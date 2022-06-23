class Relationship < ApplicationRecord
    belongs_to :fun, class_name: "Fun"
    belongs_to :value_creater, class_name: "ValueCreater"

    with_options presence: true do
        validates :fun_id
        validates :value_creater_id
     end

     def follow(value_creater_id)
        relationships.create(value_creater_id: value_creater_id)
      end

      def unfollow(value_creater_id)
        relationships.find_by(value_creater_id: value_creater_id).destroy
      end

      def following?(value_creater)
        followings.include?(value_creater)
      end
end
