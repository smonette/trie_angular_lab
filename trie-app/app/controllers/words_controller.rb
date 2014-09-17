class WordsController < ApplicationController
  before_action :render_layout_if_html

  def index
    @words = Word.all
    render json: @words
  end

  private
    def render_layout_if_html
      if request.format.symbol == :html
        render "layouts/application"
      end
    end
end
