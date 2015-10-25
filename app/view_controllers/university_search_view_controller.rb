class UniversitySearchViewController < UIViewController
  extend IB
  
  outlet :search_bar, UISearchBar
  outlet :search_controller, UISearchDisplayController
  outlet :table_view, UITableView

  def viewDidLoad
    @uni_dao = UniversityDataSource.alloc.init
    search_bar.delegate = self
    table_view.delegate = self
    table_view.dataSource = self
  end

  def tableView(table_view, didSelectRowAtIndexPath: index_path)
    # Save user selection, and ask for sign up
  end

  def tableView(table_view, numberOfRowsInSection: section)
    @uni_dao.tableView(table_view, numberOfRowsInSection: section)
  end

  def tableView(table_view, cellForRowAtIndexPath: index_path)
    @uni_dao.tableView(table_view, cellForRowAtIndexPath: index_path)
  end

  def numberOfSectionsInTableView(tableView)
    return 1
  end

  def searchBar(search_bar, textDidChange: text)
    @uni_dao.reload!(text) do
      table_view.reloadData
    end
  end
end
