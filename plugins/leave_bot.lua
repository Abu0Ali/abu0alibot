--[[ 
leavebot   : مغادره البوت
--]] 

do 
local function abuali(msg, matches) 
local bot_id = our_id 
local receiver = get_receiver(msg) 
    if matches[1] == 'kickbot' and is_admin1(msg) then 
       chat_del_user("chat#id"..msg.to.id, 'user#id'..bot_id, ok_cb, false) 
     leave_channel(receiver, ok_cb, false) 
    elseif msg.service and msg.action.type == "chat_add_user" and msg.action.user.id == tonumber(bot_id) and not is_admin1(msg) then 
       send_large_msg(receiver, 'انــت لسـت مـطـور في البــوت ولا يمـكـنك اضافتي للـمـجـمـوعـات  للتحدث مع المطور اضغط على المعرف التالي \n 📌 @Abu0Ali \n او اذا محظور اضغط هنا \n 📌  @Abu0Alibot\n', ok_cb, false)       chat_del_user(receiver, 'user#id'..bot_id, ok_cb, false) 
     leave_channel(receiver, ok_cb, false) 
    end 
end 
return { 
  patterns = { 
    "^/(kickbot)$", 
    "^!!tgservice (.+)$", 
  }, 
  run = abuali
} 
end 
--By @abu0ali