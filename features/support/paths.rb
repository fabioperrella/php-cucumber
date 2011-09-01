module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    base_url = get_conf('base_url')
    case page_name

    when /the home\s?page/
      '/'
    when /the login page/
      "#{base_url}/"    

    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
        "Now, go and add a mapping in #{__FILE__}"
    end
  end

  def full_path_to(relative_url)
    base_url = get_conf('base_url')
    "#{base_url}/#{relative_url}"
  end
end

World(NavigationHelpers)

