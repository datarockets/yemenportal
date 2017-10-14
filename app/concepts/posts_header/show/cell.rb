class PostsHeader::Show::Cell < Application::Cell
  private

  def post
    model
  end

  def host
    @options[:host]
  end

  delegate :topic, :link, to: :post, prefix: true, allow_nil: true
end
