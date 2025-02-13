class User < ApplicationRecord
    has_many :properties

    BUYER = 'Buyer'.freeze
    OWNER = 'Owner'.freeze
    AGENT = 'Agent'.freeze
  
    USER_TYPES = [BUYER, OWNER, AGENT].freeze
  
    validates :user_type, inclusion: {in: USER_TYPES}

    validates :email, :phone_number, presence: true, uniqueness: {case_sensitive: false}
    validates :first_name, :last_name, :user_type, presence: true
end
