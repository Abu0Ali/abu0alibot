do

function abuali(msg, matches)
local reply_id = msg['id']
local S = [[ 
💡 أوامر المجموعة العامة
➖🔹➖🔹➖🔹➖🔹➖🔹
▫️ضع صورة :: لوضع صوره
▫️ضع قوانين :: لوضع قوانين
▫️ضع معرف :: لوضع معرف
▫️ضع وصف :: لوضع وصف
▫️ضع اسم :: لوضع اسم
▫️ضع معرف :: لوضع معرف
▫️ضع رابط :: لوضع رابط
▫️الرابط :: لعرض رابط
▫️الرابط خاص :: الرابط خاص
▫️القوانين :: لعرض  القوانين
▫️الوصف :: لعرض  الوصف
➖🔹➖🔹➖🔹➖🔹➖🔹
▫️المطور :: لعرض معلومات المطور
▫️معلوماتي :: لعرض المعلومات
▫️ايدي :: لعرض ايدي المجموعه
▫️ايدي بالرد :: لعرض ايدي الشخص
▫️الاعدادات :: لعرض اعدادات المجموعة
▫️قائمه المحظورين :: لعرض قائمه المحظورين
▫️قائمه العام :: لعرض قائمه المحظورين عام 
▫️اعدادات الوسائط :: لعرض اعدادات الميديا
▫️معلومات المجموعة :: لعرض معلومات المجموعة
➖🔹➖🔹➖🔹➖🔹➖🔹
💯-Đєⱴ💀: @abu0ali
💯-Đєⱴ ฿๏ͳ💀: @Abu0alibot
]]
reply_msg(reply_id, S, ok_cb, false)
end

return {
description = "Help list", 
usage = "Help list",
patterns = {
"^(م2)$",
},
run = abuali
}
end