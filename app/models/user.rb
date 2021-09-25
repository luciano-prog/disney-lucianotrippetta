class User < ApplicationRecord

	devise :database_authentucatable, :registerable,
			:recoverable, :remenberable, :validatable, :jwt_authenticatable, jwt_revocation_strategy: JwtDenylist
			
end