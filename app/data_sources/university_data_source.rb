class UniversityDataSource
  def init
    super
    @uni_url = 'http://breakfast-club.eu-gb.mybluemix.net'
    @items = []
    self
  end


  def itemAtIndexPath(index_path)
    @items[index_path.row]
  end

  def tableView(table_view, numberOfRowsInSection: section)
    @items.length
  end

  def tableView(table_view, cellForRowAtIndexPath: index_path)
    @identifier ||= 'HACKING_EDU'
    cell = 
      table_view.dequeueReusableCellWithIdentifier(@identifier) || 
      UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, 
                                          reuseIdentifier: @identifier)
    item = self.itemAtIndexPath(index_path)
    cell.textLabel.text = item["name"]
    cell
  end

  def filter_by_name(text)
    @items.select! do |item|
      item["name"].containsString text
    end
  end

  def reload!(text, &block)
    AFMotion::JSON.get(@uni_url + "/universities.json") do |result|
      if result.success?
        @items = result.object
        filter_by_name(text) unless text.empty?
      else
        p result.error.localizedDescription
      end

      block.call
    end
  end
end
