class MyAccountsController < ApplicationController
  def show
    @ad = current_user.ads
    authorize current_user
  end
end
