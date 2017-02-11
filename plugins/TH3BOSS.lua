do 

local function abuali(msg, matches) 

if ( msg.text ) then

  if ( msg.to.type == "user" ) then

     return "للتحدث مع المطور اضغط على المعرف التالي \n ▫️ @abu0ali \n او اذا محظور اضغط هنا \n ▫️  @abu0alibot\n️ "
  end
   
end 

-- @abu0ali

end 

return { 
  patterns = { 
       "(.*)$"
  }, 
  run = abuali, 
} 

end 
-- @abu0ali