require 'json'
require 'pry'


Page = Struct.new(:name, :content, :links) do
	def self.from_map(map)
		# implement from_map to pass the specifications found in page_spec.rb
    page = Page.new(map['name'], map['content'], map['links'])
    return page
	end

  def self.ingest(json)
    list =  JSON.parse(json)
    #parse json to an array of hashes
    list.map do |row|
      Page.new(row['name'], row['content'])
    end

  end

  def self.ingest2(json)
    list =  JSON.parse(json)

    # Creates Pages from json collection
    pages = list.map do |row|
      Page.new(row['name'], row['content'], row['links'])
    end

    # Replace text links with the matched Pages
    pages.each do |page|
      if page.links != nil
        # find related pages
        link_pages = find_pages_by_name(page.links, pages)
        # replace strings with Pages
        page.links = link_pages.flatten
      end
    end
  end

  # returns an array of pages
  def self.find_pages_by_name(links, pages)
    link_pages = []
    links.each do |link|
      matches = pages.select{ |page| page.name == link }
      link_pages << matches if !matches.empty?
    end
    link_pages
  end
end

