class Movie < ActiveRecord::Base
  searchkick

  belongs_to :director

  def search_data
    attrs = attributes.dup
    relational = {
      director_name: director.name,
      director_birth_year: director.birthdate.year,
    }

    if director.deathdate.present?
      relational[:director_death_date] = director.deathdate
    end

    attrs.merge! relational
    attrs
  end
end
