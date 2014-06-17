class Corpus
  ROOT = Rails.root + "corpus"

  def fetch(key, default = nil)
    if File.exists?(ROOT + key)
      IO.read(ROOT + key)
    else
      default
    end
  end
end
