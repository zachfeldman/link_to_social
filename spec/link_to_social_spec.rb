require 'spec_helper'

describe "LinkToSocial creates a social sharing link to share on" do

  it "facebook" do
    (link_to_social("Share Google on Facebook", "http://google.com", network: :facebook)).should eql "<a href=\"http://www.facebook.com/sharer.php?u=http%3A%2F%2Fgoogle.com\">Share Google on Facebook</a>" 
  end
  it "twitter" do
    (link_to_social("Share Google on Twitter", "http://google.com", network: :twitter)).should eql "<a href=\"http://twitter.com/home?status=http%3A%2F%2Fgoogle.com\">Share Google on Twitter</a>" 
  end
  it "linkedin" do
    (link_to_social("Share Google on LinkedIn", "http://google.com", network: :linkedin)).should eql "<a href=\"http://www.linkedin.com/shareArticle?url=http%3A%2F%2Fgoogle.com\">Share Google on LinkedIn</a>" 
  end
  it "googleplus" do
    (link_to_social("Share Google on GooglePlus", "http://google.com", network: :googleplus)).should eql "<a href=\"https://plus.google.com/share?url=http%3A%2F%2Fgoogle.com\">Share Google on GooglePlus</a>" 
  end
  it "tumblr" do
    (link_to_social("Share Google on Tumblr", "http://google.com", network: :tumblr)).should eql "<a href=\"http://www.tumblr.com/share/link?url=http%3A%2F%2Fgoogle.com\">Share Google on Tumblr</a>" 
  end
  
  it "twitter with text" do
    (link_to_social("Share Google on Twitter", "http://google.com", network: :twitter, text: "Google is awesome.")).should eql "<a href=\"http://twitter.com/home?status=Google+is+awesome.%20http%3A%2F%2Fgoogle.com\">Share Google on Twitter</a>" 
  end
  it "linkedin with title and source" do
    (link_to_social("Share Google on LinkedIn", "http://google.com", network: :linkedin, title: "Great Pandas", source: "http://pandafarm.com")).should eql "<a href=\"http://www.linkedin.com/shareArticle?url=http%3A%2F%2Fgoogle.com&amp;title=Great+Pandas&amp;source=http%3A%2F%2Fpandafarm.com\">Share Google on LinkedIn</a>" 
  end
  it "tumblr with name and source" do
    (link_to_social("Share Google on Tumblr", "http://google.com", network: :tumblr, name: "A great post.", source: "http://zfeldman.com")).should eql "<a href=\"http://www.tumblr.com/share/link?url=http%3A%2F%2Fgoogle.com&amp;name=A+great+post.&amp;source=http%3A%2F%2Fzfeldman.com\">Share Google on Tumblr</a>" 
  end

end