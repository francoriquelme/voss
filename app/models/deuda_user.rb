class DeudaUser < ApplicationRecord
    class SocialCause < ApplicationRecord
        has_and_belongs_to_many :user
        has_and_belongs_to_many :challengue
    end
end
