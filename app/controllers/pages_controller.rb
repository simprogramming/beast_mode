class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def versus
    @other_user = User.all.reject { |user| user == current_user }
    @languages = Language.all
  end
end
