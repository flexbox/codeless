module MetaTagsHelper
  def meta_tag_description
    site_description = data.settings.site.description
    page_description = current_page.data.description

    if page_description.nil? || page_description.empty?
      description = site_description
    else
      description = page_description
    end

    if description.nil? || description.empty?
      puts "== path:#{current_page.url} meta description is missing on settings.yml"
    elsif description.length > 150
      puts "== path:#{current_page.url} meta description should be between 140-150 characters. You have: #{description.length}"
    else
      description
    end
  end

  def meta_tag_image
    if current_page.data['twitter_card_img']
      path = image_path(current_page.data['twitter_card_img'])
    else
      path = data.settings.site.logo
    end

    path
  end

  def meta_tag_title
    site_title = data.settings.site.title
    page_title = current_page.data.title
    separator  = data.settings.site.title_separator

    if page_title.nil? || page_title.empty?
      return title = site_title
    else
      title = page_title
    end

    if title.blank?
      puts "== path:#{current_page.url} title is missing on settings.yml"
    elsif title.length > 70
      puts "== path:#{current_page.url} title should be under 70 characters. You have: #{title.length}"
    else
      title += ' ' + separator + ' '
      title += site_title

      title
    end

  end

  def meta_tag_url
    host_url(current_page.url)
  end
end
