module CommentsHelper
  def no_comments(post)
    content_tag :li, "No Comments so far", :id => 'no-comments' if post.comments.empty?
  end
end
