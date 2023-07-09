require "test_helper"

class SongsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "index" do
    get "/songs.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Song.count, data.length
  end

  test "create" do
    assert_difference "Song.count", 1 do
      post "/songs.json", params: { title: "test song", artist: "test artist", album: "test album", year: 00 }
      assert_response 200
    end
  end

  test "show" do
    get "/songs/#{Song.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["title", "album", "artist", "year", "id"], data.keys
  end
end
