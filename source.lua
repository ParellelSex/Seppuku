repeat task.wait() until game:IsLoaded() == true

local user = 'ParellelSex'
local branch = 'Seppuku'
local link = 'https://raw.githubusercontent.com/'

local function GetURL(url)
    local get = '%s/%s/%s/main/%s'
    return game:HttpGet(string.format(get,link,user,branch,url))
end

local getasset = getsynasset or getcustomasset
local requestfunc = syn and syn.request or http and http.request or http_request

local function getfile(file)
    local get = '%s/%s/%s/main/%s'
	local req = requestfunc({
		Url = string.format(get,link,user,branch,file),
		Method = 'GET'
	})
	if req.StatusCode == 200 then
		return req.Body
	else
		return nil
	end
end

--Start

if shared.Seppuku then
	error("Seppuku Already Executed")
	return
else
	shared.Seppuku = true
end
