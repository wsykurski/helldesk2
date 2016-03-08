module ApplicationHelper
  def provide_title(subtitle='')
    hell = "Helldesk"
    if subtitle.empty?
      hell
    else
      hell + " | " + subtitle
    end 
  end
end
