do 

function run(msg, matches) 
  return [[ 
📜 ⚡️Abu0Ali<>BOT⚡️

➖🔹➖🔹➖🔹➖🔹➖🔹

▫️ م1 :: لعرض الاوامر الرئيسية

▫️ م2 :: لعرض الاوامر الثانوية

▫️ م3 :: لعرض أوامر حماية المجموعة

▫️ م4 :: لعرض الاوامر الاضافية

▫️ م المطور :: لعرض أوامر المطور

➖🔹➖🔹➖🔹➖🔹➖🔹
💯-Đєⱴ💀: @Abu0Ali
💯-Đєⱴ ฿๏ͳ💀 : Groups_Tele
]] 

end 

return { 
description = "Help list", 
usage = "Help list", 
patterns = { 
"^(الاوامر)$", 
}, 
run = run 
} 
end