class User < ApplicationRecord
    has_secure_password

    validates_format_of :email, with: URI::MailTo::EMAIL_REGEXP, message: "Must be valid email"
    validates_confirmation_of :password
end
