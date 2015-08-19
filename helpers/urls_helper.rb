module UrlsHelper
  def host_url(url)
    data.settings.site.url + url
  end
end
