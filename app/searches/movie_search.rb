class MovieSearch < Search
  private def search_class
    Movie
  end

  private def where
    where = {}
    if options[:genre].present?
      where[:genre] = options[:genre]
    end

    if options[:director_deathdate].present?
      where[:director_death_date] = { lte: options[:director_deathdate] }
    end

    where
  end
end
