class Admin::PeopleController < ApplicationController
  before_filter :login_required, :admin_required
  active_scaffold :person do |config|
    config.label = "People"
    config.columns = [:name, :email, :admin, :deactivated, :email_verified, :last_logged_in_at]
    config.create.columns = [:name, :email, :password, :password_confirmation, :admin, :deactivated] 
    config.nested.add_link('Addresses', [:addresses])
  end
end
