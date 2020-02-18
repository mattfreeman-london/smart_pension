# frozen_string_literal: true

require 'page'

describe Page do
  describe '#count' do
    it 'counts a single page view' do
      page = Page.new
      expect(page.count('/home')).to eq('/home 1 visit')
    end

    it 'counts more than one view of the same page' do
      page = Page.new
      expect(page.count('/home, /home')).to eq('/home 2 visits')
    end

    it 'can count any number of views of one page' do
      page = Page.new
      expect(page.count('/home, /home, /home')).to eq('/home 3 visits')
    end
  end
end
