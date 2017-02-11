--[[  ME   :  موقعي 
--]]
do

local function abuali(msg, matches)
  if matches[1] == 'موقعي' then
    if is_sudo(msg) then
    send_document(get_receiver(msg), "./files/me/sudo.webp", ok_cb, false)
      return "▫️انت مطور هذا البوت ️\n▫️ اسمك :"..msg.from.first_name.."\n" 
   .."▫️الايدي تبعك :("..msg.from.id..")\n" 
   .."▫️ايدي المجموعة :("..msg.to.id..")\n" 
   .."▫️معرفك :(@"..(msg.from.username or "لا يوجد")..")\n" 
    elseif is_admin1(msg) then
    send_document(get_receiver(msg), "./files/me/support.webp", ok_cb, false)
      return "▫️انت اداري في المجموعة\n▫️اسمك :"..msg.from.first_name.."\n" 
   .."▫️الايدي الخاص بك :("..msg.from.id..")\n" 
   .."▫️ايدي المجموعة :("..msg.to.id..")\n" 
   .."▫️معرفك :(@"..(msg.from.username or "لا يوجد")..")\n" 
    elseif is_owner(msg) then
    send_document(get_receiver(msg), "./files/me/owner.webp", ok_cb, false)
      return "▫️انت مدير المجموعه️\n▫️ اسمك :"..msg.from.first_name.."\n" 
   .."▫️الايدي الخاص بك :("..msg.from.id..")\n" 
   .."▫️ايدي المجموعة :("..msg.to.id..")\n" 
   .."▫️معرفك :(@"..(msg.from.username or "لا يوجد")..")\n" 
    elseif is_momod(msg) then
    send_document(get_receiver(msg), "./files/me/moderator.webp", ok_cb, false)
      return "▫️انت مشرف في المجموعة \n▫️ اسمك :"..msg.from.first_name.."\n" 
   .."▫️الايدي الخاص بك :("..msg.from.id..")\n" 
   .."▫️ايدي المجموعة :("..msg.to.id..")\n" 
   .."▫️معرفك :(@"..(msg.from.username or "لا يوجد")..")\n" 
          else
    send_document(get_receiver(msg), "./files/me/member.webp", ok_cb, false)
      return "▫️انت مجرد عضو \n▫️ اسمك :"..msg.from.first_name.."\n" 
   .."▫️الايدي الخاص بك :("..msg.from.id..")\n" 
   .."▫️ايدي المجموعة :("..msg.to.id..")\n" 
   .."▫️معرفك :(@"..(msg.from.username or "لا يوجد")..")\n" 
    end
  end
end

return {
  patterns = {
    "^(موقعي)$",
    "^(موقعي)$"
    },
  run = abuali
}
end