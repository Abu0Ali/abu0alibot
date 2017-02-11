--[[ كتم الوسائط
—]] 
do 

local function pre_process(msg) 
local abuali = msg['id'] 
  local user = msg.from.id 
local chat = msg.to.id 
    local moody = 'mate:'..msg.to.id 
    if redis:get(moody) and msg.media and not is_momod(msg) then 

            delete_msg(msg.id, ok_cb, false) 
local test = "لقد تم اقفال الوسائط ["..msg.from.first_name.."]".."\n".."يمنع نشر صور فيديوهات صوتيات وكافة الميديا هنا ان تكرر الامر سوف تجبرني على طردك يرجى اتباع القوانين ️".."\n".."  username : @"..(msg.from.username or " ") 
reply_msg(abuali, true) 

end 

        return msg 
    end 

local function ABUALI(msg, matches) 
local abuali = msg['id'] 

    if matches[1] == 'قفل الوسائط'  and is_momod(msg) then 
                    local th3boss= 'mate:'..msg.to.id 
                    redis:set(abuali, true) 
local boss = '☑️ تم قفل 🔒 جميع الوسائط 🔕 \n📌 Order By : @'..(msg.from.username or " لا يــــوجــــد ")..'\n📌 Order By : '.. msg.from.id..'\n'
reply_msg(abuali, true) 
elseif matches[1] == 'قفل الوسائط' and not is_momod(msg) then 
local moody = 'للـمـشـرفـيـن فـقـط' 
reply_msg(abuali, true) 
  elseif is_momod(msg) and matches[1] == 'فتح الوسائط' then 
      local th3boss= 'mate:'..msg.to.id 
      redis:del(th3boss) 
local boss = '☑️ تم فتح جميع الوسائط 🔓🔔\n📌 Order By : @'..(msg.from.username or " لا يــــوجــــد ")..'\n📌 Order By : '.. msg.from.id..'\n'
reply_msg(abuali, true) 
elseif matches[1] == 'فتح الوسائط' and not is_momod(msg) then 
local moody= 'للـمـشـرفـيـن فـقـط' 
reply_msg(abuali, true) 
end 
end 

return { 
    patterns = { 
    "^(قفل الوسائط)$", 
    "^(فتح الوسائط)$", 
  }, 
run = ABUALI, 
    pre_process = pre_process 
} 

end