atom_feed do |feed|
  feed.title = "Old Etonian Medical Society News"
  feed.updated @newsitems.maximum(:updated_at)

  @newsitems.each do |newsitem|
    feed.entry newsitem do |entry|
      entry.title newsitem.title
      entry.date newsitem.date.to_s :oems_standard
      entry.content newsitem.content
      entry.url newsitem_path(newsitem)
      entry.author [newsitem.committee.title, newsitem.committee.firstname, newsitem.committee.surname, newsitem.committee.position].to_sentence(:words_connector => " ", :last_word_connector => ", ")
    end
  end
end