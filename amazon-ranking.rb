# -*- coding: utf-8 -*-
require 'rubygems'
require 'amazon/ecs'
require 'json/pure'

# パラメータ設定( associate tag, access key, secret key)
Amazon::Ecs.options = {
 :associate_tag => 'your associate tag',
 :AWS_access_key_id => 'your access key',       
 :AWS_secret_key => 'your secret key',
}

def get_ranking(isbn)
  res = Amazon::Ecs.item_search(isbn,{
         :search_index => 'Books', 
         :response_group => 'Medium',
         :country => 'jp'})

  #結果の表示
  res.items.each do |item|
    print item.get("SalesRank")
  end
end

File.open("config.json",'r') do |fp|
  book_list = JSON.parse(fp.read)
  print Time.now.strftime("%Y-%m-%d %H:%M:%S,") 
  cnt = 0  
  book_list.each do |isbn|
    get_ranking isbn
    if book_list.size-1 > cnt
      print ","
    end
    cnt = cnt+1
    sleep(1)
  end
  print "\n"
end
