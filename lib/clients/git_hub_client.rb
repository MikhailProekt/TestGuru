class GitHubClient
  ROOT_ENDPOINT = "https://api.github.com".freeze

#  ACCESS_TOKEN = '09fdf150bf3fe19d29dd4e408eb3fb4eb405510d'
#  @access_token = '09fdf150bf3fe19d29dd4e408eb3fb4eb405510d'

  def initialize(github_token)
    @access_token = github_token
    @http_client = setup_http_client
  end

  def create_gist(params)
    @http_client.post('gists') do |request|
      request.headers['Authorization'] = "token #{@access_token}"
      request.headers['Content-Type'] = 'application/json'
      request.body = params.to_json
    end
  end

  private

  def setup_http_client
    Faraday.new(url: ROOT_ENDPOINT)
  end
end
