class Search
  attr_reader :query, :options

  def initialize(query:, options: {})
    @query = query.presence || "*"
    @options = options
  end

  def search
    constraints = {
      page: options[:page],
      per_page: options[:per_page]
    }

    constraints[:where] = where
    constraints[:order] = order

    search_class.search(query, constraints)
  end

  private def search_class
    raise NotImplementedError
  end

  private def where
    {}
  end

  private def order
    if options[:sort_attribute].present?
      order = options[:sort_order].presence || :asc
      { options[:sort_attribute] => order }
    else
     {}
    end
  end
end
