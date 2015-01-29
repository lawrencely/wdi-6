require 'page'

describe Page do
  describe '.new' do
      subject(:page) { Page.new('name', 'content') }

      it 'responds with the page name' do
        expect(page.name).to eq('name')
      end

      it 'responds with the page content' do
        expect(page.content).to eq('content')
      end
  end

  describe '.from_map' do
    it 'converts a map into a page' do
      map = {'name' => 'Name', 'content' => 'The content.'}
      expect(Page.from_map(map)).to eq(Page.new('Name', 'The content.'))
    end

    it 'handles maps without all page attributes' do
      map = {'name' => 'Contentless'}
      expect(Page.from_map(map)).to eq(Page.new('Contentless'))
    end
  end

  describe '.ingest' do
    it 'converts a json list of objects into instances of Page' do
    	pages = Page.ingest <<-JSON
        [{"name": "one", "content": "one content"},{"name": "two", "content": "two content"}]
      JSON

    	expect(pages).to eq(
    		[
    			Page.new('one', 'one content'),
    			Page.new('two', 'two content')
        ]
      )
    end
  end

  describe '.ingest2' do
    it 'should return an array' do
      pages = Page.ingest2 <<-JSON
        [
          {
            "name": "parent",
            "links": ["child1", "child2"]
          },
          { "name": "child1" },
          { "name": "child2" }
        ]
      JSON

      child1 = Page.from_map('name' => 'child1')
      child2 = Page.from_map('name' => 'child2')
      parent = Page.from_map('name' => 'parent', 'links' => [child1, child2])
      expect(pages).to eq(
        [
          parent, child1,child2
        ]
      )
    end
  end
 end