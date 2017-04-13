require 'test_helper'

class FileDb::TableTest < Minitest::Test
  def setup
    @db = FileDb::Database.new('fixtures/data.json')
    @movies = @db.table("movies")
  end

  def test_select_method_returns_an_array
    assert_kind_of(Array, @movies.select)
  end

  def test_movies_select_returns_movies
    assert_equal(@db.data["movies"], @movies.select)
  end

  def test_select_by_id_returns_movie
    assert_equal([@db.data["movies"][0]], @movies.select(where: { id: 1 }))
  end
end
