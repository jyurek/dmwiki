class Renderer
  def initialize(corpus)
    @corpus = corpus
  end

  def fetch(key, default = nil)
    body = @corpus.fetch(key, default)
    if body.present?
      Kramdown::Document.new(body).to_html
    else
      raise Errno::ENOENT
    end
  end
end
