class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :email

  has_many :reviews
end
