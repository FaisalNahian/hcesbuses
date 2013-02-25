class Track
  
  def self.in_session_now
    # Winter/Spring/Summer 2013 track schedule
    tracks = {
      1 => [
        ['2013-01-02', '2013-03-01'],
        ['2013-03-21', '2013-05-31'],
        ],
      2 => [
        ['2012-12-03', '2013-02-05'],
        ['2013-03-04', '2013-05-10'],
        ['2013-06-03', '2013-06-28']
        ],
      3 => [
        ['2012-11-13', '2013-01-18'],
        ['2013-02-06', '2013-04-15'],
        ['2013-05-13', '2013-06-28']
        ],
      4 => [
        ['2013-01-22', '2013-03-20'],
        ['2013-04-16', '2013-06-28']
        ]
    }
    
    today = Time.now
    in_now = []
    
    tracks.each do |track_id, dates|
      dates.each do |start_date, end_date|
        in_now.push(track_id) if today.between?(Time.parse(start_date), Time.parse(end_date))
      end
    end
    in_now
  end
  
end