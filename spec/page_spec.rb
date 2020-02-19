# frozen_string_literal: true

require 'page'

describe Page do
  describe '#count' do
    let (:page) { Page.new }
    it 'counts a single page view' do
      expect(page.count('/home')).to eq('/home - visits 1')
    end

    it 'counts different page names' do
      expect(page.count('/about')).to eq('/about - visits 1')
    end

    it 'can count any number of views of one page' do
      expect(page.count('/home,/home,/home')).to eq('/home - visits 3')
    end

    it 'can count one instance of two different pages' do
      expect(page.count('/home,/about')).to eq('/home - visits 1, /about - visits 1')
    end

    it 'can count multiple instances of two different pages' do
      expect(page.count('/home,/about,/home,/about')).to eq('/home - visits 2, /about - visits 2')
    end
  end
end
