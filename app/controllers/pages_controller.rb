class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def versus
    @other_user = User.all.reject { |user| user == current_user }
    # @languages = current_user.languages
    @learning_languages = current_user.learning_languages
    @other_user_learn_lang = @other_user[0].learning_languages
  end
end
