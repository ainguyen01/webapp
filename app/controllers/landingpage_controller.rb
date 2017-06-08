class LandingPageController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @copays = Copay.all

    render("copays/index.html.erb")
  end

end
