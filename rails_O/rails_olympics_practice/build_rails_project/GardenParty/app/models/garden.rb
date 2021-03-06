class Garden < ApplicationRecord
    validates :name, presence: true, uniqueness: {scope: :garden_owner_id}
    validates :size, presence: true

    has_many :flowers,
        foreign_key: :garden_id,
        class_name: :Flower

    belongs_to :garden_owner,
        foreign_key: :garden_owner_id,
        class_name: :User
end
