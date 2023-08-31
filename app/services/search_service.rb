class SearchService
  @filter_operator = {
    :name => "like '%?%'",
    :customer_rating => ">= ?",
    :distance => "<= ?",
    :price => "<= ?"
  }
  def self.call(params)
    filters = [:name, :customer_rating, :distance, :price]

    wheres = filters.map { |key| params.has_key?(key) ? "#{key} #{@filter_operator[key].sub("?", params[key])}" : nil }
              .compact
              .join(" AND ")

    Restaurant.includes(:cuisine).where(wheres).order(distance: :asc)
  end
end
