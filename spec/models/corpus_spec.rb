require 'spec_helper'

describe Corpus do
  it 'fetches a page when you ask for one' do
    corpus = Corpus.new 'foo' => '# hello'
    expect(corpus.fetch('foo')).to eq '# hello'
  end
end
