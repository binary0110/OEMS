atom_feed do |feed|
  feed.title "Old Etonian Medical Society News"
  feed.updated @newsitems.maximum(:updated_at)

  @newsitems.each do |newsitem|
    feed.entry(newsitem, :url => ["news#newsitem_", newsitem.id].join) do |entry|
      entry.title [newsitem.title, (newsitem.date.to_s :oems_standard)].to_sentence(:two_words_connector => " - ")
      entry.content newsitem.content
      entry.url
      entry.author do |author|
        author.name [newsitem.committee.title, newsitem.committee.firstname, newsitem.committee.surname, newsitem.committee.position].to_sentence(:words_connector => " ", :last_word_connector => ", ")
      end
    end
  end
end