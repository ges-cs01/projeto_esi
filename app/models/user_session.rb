# Usuário Sessão
class UserSession
  include ActiveModel::Validations
  include ActiveModel::Conversion

  extend ActiveModel::Naming
  extend ActiveModel::Translation

  attr_accessor :email, :senha

  validates_presence_of :email, :senha

  def initialize(session, attributes = {})
    @session = session
    @email = attributes[:email]
    @password = attributes[:password]
  end

  def authenticate
    user = Usuario.authenticate(@email, @password)
    if user.present?
      store(user)
      true
    else
      errors.add(:base, :invalid_login)
      false
    end
  end

  def store(user)
    @session[:user_id] = user.id
  end

  def persisted?
    false
  end
end
