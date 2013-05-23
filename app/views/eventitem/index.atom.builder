atom_feed do |feed|
  feed.title "Old Etonian Medical Society Events"
  feed.updated @eventitems.maximum(:updated_at)

  @eventitems.each do |eventitem|
    feed.entry(eventitem, :url => ["oemsevents#eventitem_", eventitem.id].join, :published => eventitem.date, :updated => eventitem.date) do |entry|
      entry.title [eventitem.title, (eventitem.date.to_s :oems_standard)].to_sentence(:two_words_connector => " - ")
      entry.content eventitem.content, :type => "html"
      entry.author do |author|
        author.name [eventitem.committee.title, eventitem.committee.firstname, eventitem.committee.surname, eventitem.committee.position].to_sentence(:words_connector => " ", :last_word_connector => ", ")
      end
    end
  end
end