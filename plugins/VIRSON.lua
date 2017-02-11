do 
  function mohammed(msg, matches) 
  local reply_id = msg['id'] 
    local S = ' ▫️     السورس    TH3BOSS 📁\n\n▫️     الاصدار 📋 V10  \n\n▫️     الموقع \n \nhttps://github.com/Abu0ali/abu0alibot\n\n▫️     المطور : @abu0ali \n\n'  reply_msg(reply_id, S, ok_cb, false) 
  end 
  return { 
    patterns = { 
  "^(الاصدار)$", 
    }, 
    run = mohammed 
  } 
  end