module LinkToSocial
  module ViewHelper
    def link_to_social(name = nil, url = nil, options = nil)
      case options[:network]
      when :facebook
        url = "http://www.facebook.com/sharer.php?u=#{CGI.escape(url)}"
      when :twitter
        url = "http://twitter.com/home?status=#{(CGI.escape(options[:text])+"%20" if options[:text])}#{CGI.escape(url)}"
      when :linkedin
        url = "http://www.linkedin.com/shareArticle?url=#{CGI.escape(url)}"
        url += "&title=#{CGI.escape(options[:title])}" if options[:title]
        url += "&source=#{CGI.escape(options[:source])}" if options[:source]
      when :googleplus
        url = "https://plus.google.com/share?url=#{CGI.escape(url)}"
      when :tumblr
        url = "http://www.tumblr.com/share/link?url=#{CGI.escape(url)}"
        url += "&name=#{CGI.escape(options[:name])}" if options[:name]
        url += "&source=#{CGI.escape(options[:source])}" if options[:source]
      end
      options.delete(:network)
      options.delete(:title) if options[:title]
      options.delete(:source) if options[:source]
      options.delete(:name) if options[:name]
      options.delete(:text) if options[:text]
      link_to name, url, options
    end
  end
end