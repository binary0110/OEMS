atom_feed do |feed|
  feed.title "Eton College Medical Society Events"
  feed.updated @etonmedicals.maximum(:updated_at)

  @etonmedicals.each do |etonmedical|
    feed.entry(etonmedical, :url => ["etonevents#etonmedical_", etonmedical.id].join, :published => etonmedical.date, :updated => etonmedical.date) do |entry|
      entry.title [etonmedical.title, (etonmedical.date.to_s :oems_standard)].to_sentence(:two_words_connector => " - ")
      entry.content etonmedical.content, :type => "html"
      entry.author do |author|
        author.name [etonmedical.committee.title, etonmedical.committee.firstname, etonmedical.committee.surname, etonmedical.committee.position].to_sentence(:words_connector => " ", :last_word_connector => ", ")
      end
    end
  end
end