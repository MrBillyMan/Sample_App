module UsersHelper

  # Returns the Gravatar (http://gravatar.com/) for the given user
  def gravatar_for(user, options = { })

    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)

    # Before, we had def gravator_for(user, options { size: 50 })
    # This is the default option.  But if we definied additional parameters, then the
    # default would be overriden.  The method below allows for multiple optional params.

    options = { size: 100 }.merge(options)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end

end
