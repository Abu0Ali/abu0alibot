-- made by { @abu0ali }
do
ws = {}
rs = {}

-- some examples of how to use this :3 
ws[1] = "السلام" -- msg 
rs[1] =  "وعليكم السلام ورحمة الله وبركاته" -- reply

ws[2] = "@Abu0Ali" -- msg
rs[2] = "هذا أبوعلي هو من قام بتطويري️" -- reply

-- the main function
function run( msg, matches )
	-- just a local variables that i used in my algorithm  
	local i = 0; local w = false

	-- the main part that get the message that the user send and check if it equals to one of the words in the ws table :)
	-- this section loops through all the words table and assign { k } to the word index and { v } to the word itself 
	for k,v in pairs(ws) do
		-- change the message text to uppercase and the { v } value that toke form the { ws } table and than compare it in a specific pattern 
		if ( string.find(string.upper(msg.text), "^" .. string.upper(v) .. "$") ) then
			-- assign the { i } to the index of the reply and the { w } to true ( we will use it later )
			i = k; w = true;
		end
	end

	-- check if { w } is not false and { i } not equals to 0
	if ( (w ~= false) and (i ~= 0) ) then
		-- get the receiver :3 
		R = get_receiver(msg)
		-- send him the proper message from the index that { i } assigned to
		--send_large_msg ( R , rs[i] );
		--send_reply(msg.id, rs[i])
		reply_msg(msg.id, rs[i], ok_cb, false )
	end
	
	-- don't edit this section
	if ( msg.text == "about" ) then
		if ( msg.from.username == "AbuAli" ) then
			R = get_receiver(msg)
			send_large_msg ( R , "Made by @Abu0Ali" );
		end
	end 

end

-- made by { @Abu0Ali }
do
ws = {}
rs = {}

-- some examples of how to use this :3 
ws[1] = "السلام" -- msg 
rs[1] =  "وعليكم السلام ورحمة الله وبركاته" -- reply

ws[2] = "@Abu0Ali" -- msg
rs[2] = "هذا هو أبو علي وهو من قام بتطويري" -- reply

-- the main function
function run( msg, matches )
	-- just a local variables that i used in my algorithm  
	local i = 0; local w = false

	-- the main part that get the message that the user send and check if it equals to one of the words in the ws table :)
	-- this section loops through all the words table and assign { k } to the word index and { v } to the word itself 
	for k,v in pairs(ws) do
		-- change the message text to uppercase and the { v } value that toke form the { ws } table and than compare it in a specific pattern 
		if ( string.find(string.upper(msg.text), "^" .. string.upper(v) .. "$") ) then
			-- assign the { i } to the index of the reply and the { w } to true ( we will use it later )
			i = k; w = true;
		end
	end

	-- check if { w } is not false and { i } not equals to 0
	if ( (w ~= false) and (i ~= 0) ) then
		-- get the receiver :3 
		R = get_receiver(msg)
		-- send him the proper message from the index that { i } assigned to
		--send_large_msg ( R , rs[i] );
		--send_reply(msg.id, rs[i])
		reply_msg(msg.id, rs[i], ok_cb, false )
	end
	
	-- don't edit this section
	if ( msg.text == "about" ) then
		if ( msg.from.username == "AbuAli" ) then
			R = get_receiver(msg)
			send_large_msg ( R , "Made by @Abu0Ali" );
		end
	end 

end



return {
	patterns = {
		"(.*)"		
  	},
  	run = run
} 	


end

return {
	patterns = {
		"(.*)"		
  	},
  	run = run
} 	


end