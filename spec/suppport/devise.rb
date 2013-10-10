
# Inclui helpers usadas pelo Devise
include Warden::Test::Helpers

# Cria um método para logar usuários
def create_logged_in_user(user_sym)
  user = FactoryGirl.find_or_create(user_sym)
  login_as(user, scope: :user)
  user
end

# Modifica a classe ActiveRecord::Base
class ActiveRecord::Base
  mattr_accessor :shared_connection
  @@shared_connection = nil

  def self.connection
    @@shared_connection || retrieve_connection
  end
end
ActiveRecord::Base.shared_connection = ActiveRecord::Base.connection