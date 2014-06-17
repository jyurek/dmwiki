class PagesController < ApplicationController

  rescue_from 'Errno::ENOENT', with: :not_found

  def show
    @body = renderer.fetch(page_name)
  end

  private

  def renderer
    Renderer.new(Corpus.new)
  end

  def page_name
    params["name"]
  end
end
