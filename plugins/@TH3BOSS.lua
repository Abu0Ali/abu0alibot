do 

local function run(msg, matches) 
 local sudo = 104442015
 local r = get_receiver(msg)
  send_large_msg(r, "يرجى الانتظار...")
  send_large_msg("user#id"..sudo, "🎴 هناك شخص 👤 بحاجة اليك ☑\n\n ".."⛔ المعرف : @"..msg.from.username.."\n 🔋 الايدي : "..msg.from.id.."\n 📋 اسم المجموعة : "..msg.to.title.."\n 🆔 ايدي المجموعة : "..msg.from.id..'\n 🕚 الوقت : '..os.date(' %T*', os.time())..'\n 📅 التاريخ : '..os.date('!%A, %B %d, %Y*\n', timestamp))
end 

return { 
  patterns = { 
     "^(@abu0ali)$" 
  }, 
  run = run, 
} 

end