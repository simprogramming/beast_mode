class LearningLanguagesController < ApplicationController
  def new
    @learning_language = LearningLanguage.new
    # session[:return_to] ||= request.referer
    @languages_names = Language.all.map { |language| language.name }
  end

  def create
    @learning_language = LearningLanguage.new
    @learning_language.language = Language.find_by(name: params[:learning_language][:language])
    @learning_language.user = current_user

    if @learning_language.save
      flash.notice ="Language successfully added to your library!"
      redirect_to versus_path
    else
      flash.notice = "Something went wrong, please try again."
      render :new
    end
  end

  # private
  # def learning_language_params
  #   params.require(:learning_language).permit(:learning_language)
  # end
end
