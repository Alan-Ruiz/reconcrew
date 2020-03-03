class SearchService
  def initialize(query)
    @query = query
  end

  def call
    search_locations
  end

  private

  def search_locations
    Location.joins(:category)
            .where("locations.name ILIKE ? AND categories.name ILIKE ?" , "%#{@query}%", "%#{@query}%")
  end
end
