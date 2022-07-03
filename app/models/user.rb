class User < ApplicationRecord
    has_and_belongs_to_many :challengues
    has_and_belongs_to_many :deudas_user
    has_and_belongs_to_many :financial_state
    has_and_belongs_to_many :social_cause
end
