require 'nokogiri'
require 'open-uri'

#파싱(parsing)할 페이지(예제 : 중앙일보)
PAGE_URL = "http://joongang.joins.com/"

#open-uri 와 nokogiri 를 이용해서 중앙일보 페이지를 파싱
page = Nokogiri::HTML(open(PAGE_URL))

articles = page.css('.main_article li a')
#일단 url을 모두 뽑아서 배열에 넣습니다.
url=[]
articles.each do |link|
    url.push link['href'].to_s
end
#배열 내의 url을 차례로 뽑아서 nokogiri로 파싱한 후 id를 이용하여 title과 body를 출력합니다.
url.each do |u|
    page2 = Nokogiri::HTML(open(u))
    title=page2.css('#article_title')
    body=page2.css('#article_body')
    puts title.text
    puts body.text
end