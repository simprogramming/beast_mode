class LanguagesController < ApplicationController
  before_action :find_language, only: [:edit, :update]

  def index
    @languages = Language.all
  end

  def new
    @language = Language.new
  end

  def create
    @language= Language.new(language_params)
  end

  def edit
  end
  
  def update
    if @language.update(language_params)
      flash.notice = "Language successfully created!"
    else
      render :new
    end
  end
  
  private
  def find_language
    @language = Language.find(params[:id])
  end

  def language_params
    params.require(:language).permit(:name)
  end
end
