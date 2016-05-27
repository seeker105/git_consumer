class GithubService

  def initialize
    @_conn = Faraday.new(url: "https://api.github.com")
  end


    def count(current_user, selector)
      # byebug
      response = @_conn.get ("/users/#{current_user.screen_name}/#{selector.to_s}"
      JSON.parse(response.body).count
    end

    # def contributions
    #   response = @_conn.get ""
    # end

end
