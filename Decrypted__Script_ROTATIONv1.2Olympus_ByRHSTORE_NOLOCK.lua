--------------> SCRIPT ROTATION FARM <------------------
------------------> v1.2 By RHx <-----------------------
-------------> Deobfuscated and Cracked <---------------
-----------------> By Natix#1316 <----------------------

--> BOT SETTINGS
BotAccount = true                         -- false = guest account and true = bot account
WorldDetecting = "x"                      -- detecting bot in here after execute
Block_ID = 4584                           -- id block tree
CustomDontPlant = false                    -- if true bot will only ht - pnb - save seed
FarmList = {"x","x","x"}                  -- list farm
FarmListDoorID = "x"                      -- all door id of farm (capital)
kordinatX = 2                             -- koordinat x in rgt
kordinatY = 4                             -- koordinat y in rgt
TileBreak = 5                             -- custom 1-5 tile
Loop = true                               -- true / false 
AutoUPBackpack = true                     -- true / false 
MaxUpgradeBP = 36                         -- max buy backpack

--> CUSTOMABLE DELAY 
delayBreak = 200                          -- delay break/pnb
delayPlace = 200                          -- delay place seed
delayHarvest = 200                        -- delay harvest
delayFindPathHT = 300                     -- delay findpath harvest
delayPlant = 200                          -- delay plant
delayJoinWorld = 5000                     -- delay waiting after join world
delayJoinIDDoor = 4000                    -- delay waiting after join id door
delayFindPathPT = 300                     -- delay findpath plant
delayFindPathPosPNB = 3500                -- delay findpath pos pnb
delayWebhook = 5000                       -- delay waiting after send webhook
delayJoinWorldFirst = 10000               -- delay waiting after join world for first time

--> CUSTOMABLE AUTO TAKE PICKAXE
AutoTakePickaxe = true                   -- true or false (if true then auto take pickaxe + use pickaxe)
SaveWorldPickaxe = "x"                   -- save world of pickaxe
SaveWorldPickaxeIDDOOR = "x"             -- id door of save world pickaxe

--> SAVE WORLD SETTINGS
Seed_Save_World = "x"                    -- save world name of seed (capital)
Seed_Save_World_IDDoor = "x"             -- id door save world of seed (capital)
BG_Drop_Seed = 4584                      -- patokan/bgid to drop seed (like pepper 4584)

Pack_Save_World = "x"                    -- save world name of pack (capital)
Pack_Save_World_IDDoor = "x"             -- id door save world of pack (capital)
BG_Drop_Pack = 16                        -- patokan/bgid to drop seed (like grass 16)

--> GEMS SETTINGS 
Pack_Name = "ssp_10_pack"                -- debug pack name
Pack_Price = 1000                        -- pack price per item to buy
Pack_Item_ID = {5706}                    -- all list id of item pack
Total_Pack_Item = 1                      -- all total pack item id at Pack_Item_ID (example: world lock = 1, ssp = 1 & surg = 14)
Pack_Counting = 5706                     -- this for scanning pack item amount at save world (only write 1 item id)
minimal_gems = 20000                     -- minimal gems to buy pack item (if wanna keep gems, write minimal_gems = 9999999)  

--> FARM NOT FULL
AutoPlantFarmNotFull = true              -- if farm not full (under 2645) bot will take seed at save world and go to plant until 2645+ planted

--> STUCK COUNTER
IDDoorID = 12                                 -- id door farm or id path farm
BotReRotationWhenStuck = "00:02:00"           -- bot will re rotation when every bot up time / bot running 00:02:00 minutes (custom)
BotReRotationWhenStuckIDDoor = "00:05:30"     -- bot will re rotation when every bot up time / bot running 00:00:30 minutes (custom)

--> REDUCE BAN WAVE SETTINGS #1 (REST WITH PER FINISHED FARM & OFFLINE = BOT REST)
RestTimeBotFeature = false               -- true or false (if true then bot will rest per finihed farm (customable))
CooldownTimeREST = 10                    -- minutes (only have 3, 5, 10, 15, 30, 60, 90, 120)
CustomFinishedFarm = 3                   -- bot will rest per every how many finished farm (dont write 1)

--> REDUCE BAN WAVE SETTINGS #2 (REST WITH TIME FROM UTC & OFFLINE = BOT REST)
RestWithTimeUTC = false                  -- true or false
timeDifferenceUTC = 7                    -- time difference from UTC (7 = UTC+7)
startOffline = {10,12,17}                -- must sequential/berurutan (UTC+7 is 05 = 05.00, 12 = 12.00, 16 = 16.00)
CooldownTimeREST2 = 5                   -- minutes (only have 3, 5, 10, 15, 30, 60, 90, 120)

--> REDUCE BAN WAVE SETTINGS #3 (REST PER UP TIME BOT & OFFLINE = BOT REST)
RestWithUpTimeBot = false
UpTimeToOffline = "00:20:00"             -- every bot running 00:10:00 minutes bot will rest (example : "00:03:00", "00:10:00", "00:20:00", "00:30:00", 01:00:00")
CooldownTimeREST3 = 5                    -- minutes (only have 3, 5, 10, 15, 30, 60, 90, 120)

--> REDUCE BAN WAVE SETTINGS #4 (AUTO CHAT MESSAGE AND JOIN RANDOM WORLD)
AutoChatMessageNjoinWorld = false
UpTimeToOffline4 = "00:15:00"            -- every bot running 00:05:00 minutes bot will be auto chat message and join to random world 
delayJoinRandomWorld = 10000             -- delay for waiting at random world

--> WEBHOOK SETTING
WebhookEdited = false                    -- false = webhook spam
WebhookEditedMessageID = 1126378813727715420                -- webhook message id
WebhookURLActivity = "x"                         -- webhook for info activity
WebhookURLStatus = "x"                         -- webhook for info status 

--> TRASH ITEM SETTING
TrashList = {5024,5026,5028, 5032, 5034, 5036, 5038, 5040, 5042, 5044, 7162, 7164} -- id trash item

StatusAllBot = false
CurrentWorldBot = ""
CurrentWorldBott = ""
CurrentBanned = 0
ErconCounterNya = 0
Seed_ID = Block_ID + 1
WorldDone = 0
ALLWorldDone = 0
AmountLoop = 0
found = true
StatusRest = 1
Player = {
  "Natix",
  "Natix",
  "Natix",
  "Natix",
  "Natix",
  "Natix",
  "Natix",
  "Natix",
  "Natix",
  "Natix"
}
function LockOwner()
  --while not found do
    --for _, own in pairs(Player) do
      --for _, plr in pairs(getPlayers()) do
        --if plr.name:gsub("`.", "") == own then
          sleep(1000)
          found = true
          say("Owner Found")
          --break
        --end
      --end
   -- end
  --end
  --sleep(1000)
end
function Webhookk(RHLOGS)
  if not WebhookEdited then
    local script = "            $webHookUrl = \"" .. WebhookURLActivity .. [[
"
            $ip = Get-NetIPAddress -AddressFamily IPv4 -InterfaceIndex $(Get-NetConnectionProfile | Select-Object -ExpandProperty InterfaceIndex) | Select-Object -ExpandProperty IPAddress
            $cpu = (Get-WmiObject win32_processor | Measure-Object -property LoadPercentage -Average | Select Average).Average
            $ram = (Get-Counter '\Memory\Available MBytes').CounterSamples.CookedValue
            [System.Collections.ArrayList]$embedArray = @()
        $thumbnailObject = [PSCustomObject]@{
        }
        $color = 16777215
        $title = '<a:Zorn_BluxDC:978651473170808842>RH ROTATION LOG v1.2<a:Zorn_BluxDC:978651473170808842>'
        $description = "**]] .. RHLOGS .. [[
**"
    
        $footer = [PSCustomObject]@{
            text = "]] .. os.date("!%a %b %d, %Y at %I:%M %p", os.time() + 25200) .. [[
"
        }


        $embedObject = [PSCustomObject]@{
            color = $color
            title = $title
            description = $description
            thumbnail = $thumbnailObject
            image = $imageObject
            footer = $footer
        
        }

        [System.Collections.ArrayList]$embedArray = @()
        $embedArray.Add($embedObject)

        $payload = [PSCustomObject]@{
            embeds = $embedArray
        }
        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
        Invoke-RestMethod -Uri $webHookUrl -Body ($payload | ConvertTo-Json -Depth 4) -Method Post -ContentType 'application/json'
        ]]
    local pipe = io.popen("powershell -command -", "w")
    pipe:write(script)
    pipe:close()
  end
  if WebhookEdited then
    local script2 = "            $webHookUrl = \"" .. WebhookURLActivity .. "/messages/" .. WebhookEditedMessageID .. [[
"
            $ip = Get-NetIPAddress -AddressFamily IPv4 -InterfaceIndex $(Get-NetConnectionProfile | Select-Object -ExpandProperty InterfaceIndex) | Select-Object -ExpandProperty IPAddress
            $cpu = (Get-WmiObject win32_processor | Measure-Object -property LoadPercentage -Average | Select Average).Average
            $ram = (Get-Counter '\Memory\Available MBytes').CounterSamples.CookedValue
            [System.Collections.ArrayList]$embedArray = @()
        $thumbnailObject = [PSCustomObject]@{
        }
        $color = 16777215
        $title = '<a:Zorn_BluxDC:978651473170808842>RH ROTATION LOG v1.2<a:Zorn_BluxDC:978651473170808842>'
        $description = "**]] .. RHLOGS .. [[
**"
    
        $footer = [PSCustomObject]@{
            text = "]] .. os.date("!%a %b %d, %Y at %I:%M %p", os.time() + 25200) .. [[
"
        }


        $embedObject = [PSCustomObject]@{
            color = $color
            title = $title
            description = $description
            thumbnail = $thumbnailObject
            image = $imageObject
            footer = $footer
        
        }

        [System.Collections.ArrayList]$embedArray = @()
        $embedArray.Add($embedObject)

        $payload = [PSCustomObject]@{
            embeds = $embedArray
        }
        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
        Invoke-RestMethod -Uri $webHookUrl -Body ($payload | ConvertTo-Json -Depth 4) -Method Patch -ContentType 'application/json'
        ]]
    local pipe2 = io.popen("powershell -command -", "w")
    pipe2:write(script2)
    pipe2:close()
  end
end
function WebhookkStatus(RHLOGS)
  local text2 = "        $webHookUrl = \"" .. WebhookURLStatus .. [[
"
        $ip = Get-NetIPAddress -AddressFamily IPv4 -InterfaceIndex $(Get-NetConnectionProfile | Select-Object -ExpandProperty InterfaceIndex) | Select-Object -ExpandProperty IPAddress
        $cpu = (Get-WmiObject win32_processor | Measure-Object -property LoadPercentage -Average | Select Average).Average
        $ram = (Get-Counter '\Memory\Available MBytes').CounterSamples.CookedValue
        $payload = @{
            content = "]] .. RHLOGS .. [[
"
        }
        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
        Invoke-RestMethod -Uri $webHookUrl -Body ($payload | ConvertTo-Json -Depth 4) -Method Post -ContentType 'application/json'
    ]]
  local file2 = io.popen("powershell -command -", "w")
  file2:write(text2)
  file2:close()
end
function StartTrashing()
  for i, trash in pairs(TrashList) do
    if findItem(trash) > 0 then
      sendPacket([[
action|trash
|itemID|]] .. trash, 2)
      sleep(500)
      sendPacket([[
action|dialog_return
dialog_name|trash_item
itemID|]] .. trash .. [[
|
count|]] .. findItem(trash), 2)
      sleep(500)
    end
  end
end
function SeedsScanner(ItemID)
  local Counter = 0
  for _, object in pairs(getObjects()) do
    if object.id == ItemID then
      Counter = Counter + object.count
    end
  end
  return Counter
end
function fossil(id)
  local m = 0
  for _, til in pairs(getTiles()) do
    if til.fg == id then
      m = m + 1
    end
  end
  return m
end
function scanReady(id)
  local count = 0
  for _, tile in pairs(getTiles()) do
    if tile.fg == id and tile.ready == true then
      count = count + 1
    end
  end
  return count
end
function scannoReady(id)
  local count = 0
  for _, tile in pairs(getTiles()) do
    if tile.fg == id and tile.ready == false then
      count = count + 1
    end
  end
  return count
end
function StartPlanting()
  CurrentWorldBot = getBot().world
  for _, tile in pairs(getTiles()) do
    if 0 ~= tile.fg and tile.y > 1 and findItem(Seed_ID) > 0 and 0 == getTile(tile.x, tile.y - 1).fg and getTile(tile.x, tile.y).fg ~= Seed_ID and getTile(tile.x, tile.y).fg ~= Block_ID and 6 ~= getTile(tile.x - 1, tile.y - 1).fg and 6 ~= getTile(tile.x + 1, tile.y - 1).fg and findItem(Seed_ID) > 0 then
      RekonekStatus()
      findPath(tile.x, tile.y - 1)
      sleep(delayFindPathPT)
      while 0 == getTile(tile.x, tile.y - 1).fg and 12 ~= getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32) + 1).fg and getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32) + 1).fg ~= Seed_ID and getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32) + 1).fg ~= Block_ID and 0 ~= getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32) + 1).fg do
        RekonekStatus()
        place(Seed_ID, 0, 0)
        sleep(delayPlant)
      end
    end
    if findItem(Seed_ID) > 80 then
      RekonekStatus()
      DroppingSeeds()
    elseif 0 == findItem(Seed_ID) then
      RekonekStatus()
      StartHarvesting()
    end
  end
end
function FinishedFarmPlanting()
  for _, tile in pairs(getTiles()) do
    if 0 ~= tile.fg and tile.y > 1 and findItem(Seed_ID) > 0 and 0 == getTile(tile.x, tile.y - 1).fg and getTile(tile.x, tile.y).fg ~= Seed_ID and getTile(tile.x, tile.y).fg ~= Block_ID and 6 ~= getTile(tile.x - 1, tile.y - 1).fg and 6 ~= getTile(tile.x + 1, tile.y - 1).fg and findItem(Seed_ID) > 0 then
      RekonekStatusPlant()
      findPath(tile.x, tile.y - 1)
      sleep(delayFindPathPT)
      while 0 == getTile(tile.x, tile.y - 1).fg and 12 ~= getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32)).fg and 12 ~= getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32) + 1).fg and getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32) + 1).fg ~= Seed_ID and getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32)).fg ~= Seed_ID and getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32) + 1).fg ~= Block_ID and 0 ~= getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32) + 1).fg do
        RekonekStatusPlant()
        place(Seed_ID, 0, 0)
        sleep(delayPlant)
      end
    end
    if 0 == findItem(Seed_ID) then
      RekonekStatusPlant()
      TakingTree()
    end
  end
end
function StartHarvesting()
  collectSet(true)
  CurrentWorldBot = getBot().world
  for _, tile in pairs(getTiles()) do
    if tile.fg == Seed_ID and getTile(tile.x, tile.y).ready then
      RekonekStatus()
      findPath(tile.x, tile.y)
      sleep(delayFindPathHT)
      while getTile(tile.x, tile.y).ready do
        RekonekStatus()
        punch(0, 0)
        sleep(delayHarvest)
      end
    end
    if findItem(Block_ID) > 190 or findItem(Block_ID) == 200 then
      RekonekStatus()
      SystemCounterfea()
      RestWithRealTime()
      CheckingTileBreak()
    elseif SeedsScannerWhenHT(Block_ID) > 20 then
      RekonekStatus()
      CheckFarmBolong()
    end
  end
end
function CheckFarmBolong()
  collectSet(false)
  if SeedsScannerWhenHT(Block_ID) > 20 then
    for _, obj in pairs(getObjects()) do
      if obj.id == Block_ID then
        repeat
          local x = math.floor((obj.x + 10) / 32)
          local y = math.floor((obj.y + 10) / 32)
          findPath(x, y)
          sleep(5000)
          collect(5)
          sleep(1000)
        until findItem(Block_ID) >= 1
        RekonekStatus()
        CheckingTileBreak()
      end
    end
  end
end
function SeedsScannerWhenHT(ItemID2)
  local Counter = 0
  for _, object in pairs(getObjects()) do
    if object.id == ItemID2 then
      Counter = Counter + object.count
    end
  end
  return Counter
end
function CheckingTileBreak()
  if 5 == TileBreak then
    StartBreakingLima()
  end
  if 4 == TileBreak then
    StartBreakingEmpat()
  end
  if 3 == TileBreak then
    StartBreakingTiga()
  end
  if 2 == TileBreak then
    StartBreakingDua()
  end
  if 1 == TileBreak then
    StartBreakingSatu()
  end
end
function StartBreakingLima()
  collectSet(true)
  if math.floor(getBot().x / 32) ~= kordinatX - 1 and math.floor(getBot().y / 32) ~= kordinatY - 1 then
    findPath(kordinatX - 1, kordinatY - 1)
    sleep(delayFindPathPosPNB)
    while findItem(Block_ID) >= 1 and math.floor(getBot().x / 32) == kordinatX - 1 and math.floor(getBot().y / 32) == kordinatY - 1 do
      if 0 == getTile(math.floor(getBot().x / 32) - 1, math.floor(getBot().y / 32) + 2).fg or 0 == getTile(math.floor(getBot().x / 32) - 1, math.floor(getBot().y / 32) + 2).bg then
        if math.floor(getBot().x / 32) == kordinatX - 1 and math.floor(getBot().y / 32) == kordinatY - 1 then
          RekonekStatus()
          place(Block_ID, -1, -2)
          sleep(delayPlace)
          place(Block_ID, -1, -1)
          sleep(delayPlace)
          place(Block_ID, -1, 0)
          sleep(delayPlace)
          place(Block_ID, -1, 1)
          sleep(delayPlace)
          place(Block_ID, -1, 2)
          sleep(delayPlace)
        end
        while findItem(Block_ID) >= 1 and 0 ~= getTile(math.floor(getBot().x / 32) - 1, math.floor(getBot().y / 32) - 2).fg and math.floor(getBot().x / 32) == kordinatX - 1 and math.floor(getBot().y / 32) == kordinatY - 1 do
          punch(-1, -2)
          sleep(delayBreak)
          RekonekStatus()
          while 6 == getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32)).fg or math.floor(getBot().x / 32) ~= kordinatX - 1 or math.floor(getBot().y / 32) ~= kordinatY - 1 do
            sleep(2000)
            local CurrentWorld1 = getBot().world
            sendPacket([[
action|join_request
name|]] .. CurrentWorld1 .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
            sleep(delayJoinIDDoor)
            findPath(kordinatX - 1, kordinatY - 1)
            sleep(delayFindPathPosPNB)
          end
        end
        while findItem(Block_ID) >= 1 and 0 ~= getTile(math.floor(getBot().x / 32) - 1, math.floor(getBot().y / 32) - 2).bg and math.floor(getBot().x / 32) == kordinatX - 1 and math.floor(getBot().y / 32) == kordinatY - 1 do
          punch(-1, -2)
          sleep(delayBreak)
          RekonekStatus()
          while 6 == getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32)).fg or math.floor(getBot().x / 32) ~= kordinatX - 1 or math.floor(getBot().y / 32) ~= kordinatY - 1 do
            sleep(2000)
            local CurrentWorld1 = getBot().world
            sendPacket([[
action|join_request
name|]] .. CurrentWorld1 .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
            sleep(delayJoinIDDoor)
            findPath(kordinatX - 1, kordinatY - 1)
            sleep(delayFindPathPosPNB)
          end
        end
        while findItem(Block_ID) >= 1 and 0 ~= getTile(math.floor(getBot().x / 32) - 1, math.floor(getBot().y / 32) - 1).fg and math.floor(getBot().x / 32) == kordinatX - 1 and math.floor(getBot().y / 32) == kordinatY - 1 do
          punch(-1, -1)
          sleep(delayBreak)
          RekonekStatus()
          while 6 == getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32)).fg or math.floor(getBot().x / 32) ~= kordinatX - 1 or math.floor(getBot().y / 32) ~= kordinatY - 1 do
            sleep(2000)
            local CurrentWorld1 = getBot().world
            sendPacket([[
action|join_request
name|]] .. CurrentWorld1 .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
            sleep(delayJoinIDDoor)
            findPath(kordinatX - 1, kordinatY - 1)
            sleep(delayFindPathPosPNB)
          end
        end
        while findItem(Block_ID) >= 1 and 0 ~= getTile(math.floor(getBot().x / 32) - 1, math.floor(getBot().y / 32) - 1).bg and math.floor(getBot().x / 32) == kordinatX - 1 and math.floor(getBot().y / 32) == kordinatY - 1 do
          punch(-1, -1)
          sleep(delayBreak)
          RekonekStatus()
          while 6 == getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32)).fg or math.floor(getBot().x / 32) ~= kordinatX - 1 or math.floor(getBot().y / 32) ~= kordinatY - 1 do
            sleep(2000)
            local CurrentWorld1 = getBot().world
            sendPacket([[
action|join_request
name|]] .. CurrentWorld1 .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
            sleep(delayJoinIDDoor)
            findPath(kordinatX - 1, kordinatY - 1)
            sleep(delayFindPathPosPNB)
          end
        end
        while findItem(Block_ID) >= 1 and 0 ~= getTile(math.floor(getBot().x / 32) - 1, math.floor(getBot().y / 32)).fg and math.floor(getBot().x / 32) == kordinatX - 1 and math.floor(getBot().y / 32) == kordinatY - 1 do
          punch(-1, 0)
          sleep(delayBreak)
          RekonekStatus()
          while 6 == getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32)).fg or math.floor(getBot().x / 32) ~= kordinatX - 1 or math.floor(getBot().y / 32) ~= kordinatY - 1 do
            sleep(2000)
            local CurrentWorld1 = getBot().world
            sendPacket([[
action|join_request
name|]] .. CurrentWorld1 .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
            sleep(delayJoinIDDoor)
            findPath(kordinatX - 1, kordinatY - 1)
            sleep(delayFindPathPosPNB)
          end
        end
        while findItem(Block_ID) >= 1 and 0 ~= getTile(math.floor(getBot().x / 32) - 1, math.floor(getBot().y / 32)).bg and math.floor(getBot().x / 32) == kordinatX - 1 and math.floor(getBot().y / 32) == kordinatY - 1 do
          punch(-1, 0)
          sleep(delayBreak)
          RekonekStatus()
          while 6 == getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32)).fg or math.floor(getBot().x / 32) ~= kordinatX - 1 or math.floor(getBot().y / 32) ~= kordinatY - 1 do
            sleep(2000)
            local CurrentWorld1 = getBot().world
            sendPacket([[
action|join_request
name|]] .. CurrentWorld1 .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
            sleep(delayJoinIDDoor)
            findPath(kordinatX - 1, kordinatY - 1)
            sleep(delayFindPathPosPNB)
          end
        end
        while findItem(Block_ID) >= 1 and 0 ~= getTile(math.floor(getBot().x / 32) - 1, math.floor(getBot().y / 32) + 1).fg and math.floor(getBot().x / 32) == kordinatX - 1 and math.floor(getBot().y / 32) == kordinatY - 1 do
          punch(-1, 1)
          sleep(delayBreak)
          RekonekStatus()
          while 6 == getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32)).fg or math.floor(getBot().x / 32) ~= kordinatX - 1 or math.floor(getBot().y / 32) ~= kordinatY - 1 do
            sleep(2000)
            local CurrentWorld1 = getBot().world
            sendPacket([[
action|join_request
name|]] .. CurrentWorld1 .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
            sleep(delayJoinIDDoor)
            findPath(kordinatX - 1, kordinatY - 1)
            sleep(delayFindPathPosPNB)
          end
        end
        while findItem(Block_ID) >= 1 and 0 ~= getTile(math.floor(getBot().x / 32) - 1, math.floor(getBot().y / 32) + 1).bg and math.floor(getBot().x / 32) == kordinatX - 1 and math.floor(getBot().y / 32) == kordinatY - 1 do
          punch(-1, 1)
          sleep(delayBreak)
          RekonekStatus()
          while 6 == getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32)).fg or math.floor(getBot().x / 32) ~= kordinatX - 1 or math.floor(getBot().y / 32) ~= kordinatY - 1 do
            sleep(2000)
            local CurrentWorld1 = getBot().world
            sendPacket([[
action|join_request
name|]] .. CurrentWorld1 .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
            sleep(delayJoinIDDoor)
            findPath(kordinatX - 1, kordinatY - 1)
            sleep(delayFindPathPosPNB)
          end
        end
        while findItem(Block_ID) >= 1 and 0 ~= getTile(math.floor(getBot().x / 32) - 1, math.floor(getBot().y / 32) + 2).fg and math.floor(getBot().x / 32) == kordinatX - 1 and math.floor(getBot().y / 32) == kordinatY - 1 do
          punch(-1, 2)
          sleep(delayBreak)
          RekonekStatus()
          while 6 == getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32)).fg or math.floor(getBot().x / 32) ~= kordinatX - 1 or math.floor(getBot().y / 32) ~= kordinatY - 1 do
            sleep(2000)
            local CurrentWorld1 = getBot().world
            sendPacket([[
action|join_request
name|]] .. CurrentWorld1 .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
            sleep(delayJoinIDDoor)
            findPath(kordinatX - 1, kordinatY - 1)
            sleep(delayFindPathPosPNB)
          end
        end
        while findItem(Block_ID) >= 1 and 0 ~= getTile(math.floor(getBot().x / 32) - 1, math.floor(getBot().y / 32) + 2).bg and math.floor(getBot().x / 32) == kordinatX - 1 and math.floor(getBot().y / 32) == kordinatY - 1 do
          punch(-1, 2)
          sleep(delayBreak)
          RekonekStatus()
          while 6 == getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32)).fg or math.floor(getBot().x / 32) ~= kordinatX - 1 or math.floor(getBot().y / 32) ~= kordinatY - 1 do
            sleep(2000)
            local CurrentWorld1 = getBot().world
            sendPacket([[
action|join_request
name|]] .. CurrentWorld1 .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
            sleep(delayJoinIDDoor)
            findPath(kordinatX - 1, kordinatY - 1)
            sleep(delayFindPathPosPNB)
          end
        end
      end
      if findItem(112) > minimal_gems then
        RekonekStatus()
        BuyingPack()
      elseif not CustomDontPlant and 0 == findItem(Block_ID) then
        RekonekStatus()
        StartTrashing()
        StartPlanting()
      end
      if CustomDontPlant and 0 == findItem(Seed_ID) then
        RekonekStatus()
        StartHarvesting()
      end
    end
  end
end
function StartBreakingEmpat()
  collectSet(true)
  if math.floor(getBot().x / 32) ~= kordinatX - 1 and math.floor(getBot().y / 32) ~= kordinatY - 1 then
    findPath(kordinatX - 1, kordinatY - 1)
    sleep(delayFindPathPosPNB)
    while findItem(Block_ID) > 0 and math.floor(getBot().x / 32) == kordinatX - 1 and math.floor(getBot().y / 32) == kordinatY - 1 do
      if 0 == getTile(math.floor(getBot().x / 32) - 1, math.floor(getBot().y / 32) + 2).fg or 0 == getTile(math.floor(getBot().x / 32) - 1, math.floor(getBot().y / 32) + 2).bg then
        if math.floor(getBot().x / 32) == kordinatX - 1 and math.floor(getBot().y / 32) == kordinatY - 1 then
          RekonekStatus()
          place(Block_ID, -1, -2)
          sleep(delayPlace)
          place(Block_ID, -1, -1)
          sleep(delayPlace)
          place(Block_ID, -1, 0)
          sleep(delayPlace)
          place(Block_ID, -1, 1)
          sleep(delayPlace)
        end
        while findItem(Block_ID) > 0 and 0 ~= getTile(math.floor(getBot().x / 32) - 1, math.floor(getBot().y / 32) - 2).fg and math.floor(getBot().x / 32) == kordinatX - 1 and math.floor(getBot().y / 32) == kordinatY - 1 do
          punch(-1, -2)
          sleep(delayBreak)
          RekonekStatus()
          while 6 == getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32)).fg or math.floor(getBot().x / 32) ~= kordinatX - 1 or math.floor(getBot().y / 32) ~= kordinatY - 1 do
            sleep(2000)
            local CurrentWorld1 = getBot().world
            sendPacket([[
action|join_request
name|]] .. CurrentWorld1 .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
            sleep(delayJoinIDDoor)
            findPath(kordinatX - 1, kordinatY - 1)
            sleep(delayFindPathPosPNB)
          end
        end
        while findItem(Block_ID) > 0 and 0 ~= getTile(math.floor(getBot().x / 32) - 1, math.floor(getBot().y / 32) - 2).bg and math.floor(getBot().x / 32) == kordinatX - 1 and math.floor(getBot().y / 32) == kordinatY - 1 do
          punch(-1, -2)
          sleep(delayBreak)
          RekonekStatus()
          while 6 == getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32)).fg or math.floor(getBot().x / 32) ~= kordinatX - 1 or math.floor(getBot().y / 32) ~= kordinatY - 1 do
            sleep(2000)
            local CurrentWorld1 = getBot().world
            sendPacket([[
action|join_request
name|]] .. CurrentWorld1 .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
            sleep(delayJoinIDDoor)
            findPath(kordinatX - 1, kordinatY - 1)
            sleep(delayFindPathPosPNB)
          end
        end
        while findItem(Block_ID) > 0 and 0 ~= getTile(math.floor(getBot().x / 32) - 1, math.floor(getBot().y / 32) - 1).fg and math.floor(getBot().x / 32) == kordinatX - 1 and math.floor(getBot().y / 32) == kordinatY - 1 do
          punch(-1, -1)
          sleep(delayBreak)
          RekonekStatus()
          while 6 == getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32)).fg or math.floor(getBot().x / 32) ~= kordinatX - 1 or math.floor(getBot().y / 32) ~= kordinatY - 1 do
            sleep(2000)
            local CurrentWorld1 = getBot().world
            sendPacket([[
action|join_request
name|]] .. CurrentWorld1 .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
            sleep(delayJoinIDDoor)
            findPath(kordinatX - 1, kordinatY - 1)
            sleep(delayFindPathPosPNB)
          end
        end
        while findItem(Block_ID) > 0 and 0 ~= getTile(math.floor(getBot().x / 32) - 1, math.floor(getBot().y / 32) - 1).bg and math.floor(getBot().x / 32) == kordinatX - 1 and math.floor(getBot().y / 32) == kordinatY - 1 do
          punch(-1, -1)
          sleep(delayBreak)
          RekonekStatus()
          while 6 == getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32)).fg or math.floor(getBot().x / 32) ~= kordinatX - 1 or math.floor(getBot().y / 32) ~= kordinatY - 1 do
            sleep(2000)
            local CurrentWorld1 = getBot().world
            sendPacket([[
action|join_request
name|]] .. CurrentWorld1 .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
            sleep(delayJoinIDDoor)
            findPath(kordinatX - 1, kordinatY - 1)
            sleep(delayFindPathPosPNB)
          end
        end
        while findItem(Block_ID) > 0 and 0 ~= getTile(math.floor(getBot().x / 32) - 1, math.floor(getBot().y / 32)).fg and math.floor(getBot().x / 32) == kordinatX - 1 and math.floor(getBot().y / 32) == kordinatY - 1 do
          punch(-1, 0)
          sleep(delayBreak)
          RekonekStatus()
          while 6 == getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32)).fg or math.floor(getBot().x / 32) ~= kordinatX - 1 or math.floor(getBot().y / 32) ~= kordinatY - 1 do
            sleep(2000)
            local CurrentWorld1 = getBot().world
            sendPacket([[
action|join_request
name|]] .. CurrentWorld1 .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
            sleep(delayJoinIDDoor)
            findPath(kordinatX - 1, kordinatY - 1)
            sleep(delayFindPathPosPNB)
          end
        end
        while findItem(Block_ID) > 0 and 0 ~= getTile(math.floor(getBot().x / 32) - 1, math.floor(getBot().y / 32)).bg and math.floor(getBot().x / 32) == kordinatX - 1 and math.floor(getBot().y / 32) == kordinatY - 1 do
          punch(-1, 0)
          sleep(delayBreak)
          RekonekStatus()
          while 6 == getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32)).fg or math.floor(getBot().x / 32) ~= kordinatX - 1 or math.floor(getBot().y / 32) ~= kordinatY - 1 do
            sleep(2000)
            local CurrentWorld1 = getBot().world
            sendPacket([[
action|join_request
name|]] .. CurrentWorld1 .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
            sleep(delayJoinIDDoor)
            findPath(kordinatX - 1, kordinatY - 1)
            sleep(delayFindPathPosPNB)
          end
        end
        while findItem(Block_ID) > 0 and 0 ~= getTile(math.floor(getBot().x / 32) - 1, math.floor(getBot().y / 32) + 1).fg and math.floor(getBot().x / 32) == kordinatX - 1 and math.floor(getBot().y / 32) == kordinatY - 1 do
          punch(-1, 1)
          sleep(delayBreak)
          RekonekStatus()
          while 6 == getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32)).fg or math.floor(getBot().x / 32) ~= kordinatX - 1 or math.floor(getBot().y / 32) ~= kordinatY - 1 do
            sleep(2000)
            local CurrentWorld1 = getBot().world
            sendPacket([[
action|join_request
name|]] .. CurrentWorld1 .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
            sleep(delayJoinIDDoor)
            findPath(kordinatX - 1, kordinatY - 1)
            sleep(delayFindPathPosPNB)
          end
        end
        while findItem(Block_ID) > 0 and 0 ~= getTile(math.floor(getBot().x / 32) - 1, math.floor(getBot().y / 32) + 1).bg and math.floor(getBot().x / 32) == kordinatX - 1 and math.floor(getBot().y / 32) == kordinatY - 1 do
          punch(-1, 1)
          sleep(delayBreak)
          RekonekStatus()
          while 6 == getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32)).fg or math.floor(getBot().x / 32) ~= kordinatX - 1 or math.floor(getBot().y / 32) ~= kordinatY - 1 do
            sleep(2000)
            local CurrentWorld1 = getBot().world
            sendPacket([[
action|join_request
name|]] .. CurrentWorld1 .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
            sleep(delayJoinIDDoor)
            findPath(kordinatX - 1, kordinatY - 1)
            sleep(delayFindPathPosPNB)
          end
        end
      end
      if findItem(112) > minimal_gems then
        RekonekStatus()
        BuyingPack()
      elseif not CustomDontPlant and 0 == findItem(Block_ID) then
        RekonekStatus()
        StartTrashing()
        StartPlanting()
      end
      if CustomDontPlant and 0 == findItem(Seed_ID) then
        RekonekStatus()
        StartHarvesting()
      end
    end
  end
end
function StartBreakingTiga()
  collectSet(true)
  if math.floor(getBot().x / 32) ~= kordinatX - 1 and math.floor(getBot().y / 32) ~= kordinatY - 1 then
    findPath(kordinatX - 1, kordinatY - 1)
    sleep(delayFindPathPosPNB)
    while findItem(Block_ID) > 0 and math.floor(getBot().x / 32) == kordinatX - 1 and math.floor(getBot().y / 32) == kordinatY - 1 do
      if 0 == getTile(math.floor(getBot().x / 32) - 1, math.floor(getBot().y / 32) + 2).fg or 0 == getTile(math.floor(getBot().x / 32) - 1, math.floor(getBot().y / 32) + 2).bg then
        if math.floor(getBot().x / 32) == kordinatX - 1 and math.floor(getBot().y / 32) == kordinatY - 1 then
          RekonekStatus()
          place(Block_ID, -1, -1)
          sleep(delayPlace)
          place(Block_ID, -1, 0)
          sleep(delayPlace)
          place(Block_ID, -1, 1)
          sleep(delayPlace)
        end
        while findItem(Block_ID) > 0 and 0 ~= getTile(math.floor(getBot().x / 32) - 1, math.floor(getBot().y / 32) - 1).fg and math.floor(getBot().x / 32) == kordinatX - 1 and math.floor(getBot().y / 32) == kordinatY - 1 do
          punch(-1, -1)
          sleep(delayBreak)
          RekonekStatus()
          while 6 == getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32)).fg or math.floor(getBot().x / 32) ~= kordinatX - 1 or math.floor(getBot().y / 32) ~= kordinatY - 1 do
            sleep(2000)
            local CurrentWorld1 = getBot().world
            sendPacket([[
action|join_request
name|]] .. CurrentWorld1 .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
            sleep(delayJoinIDDoor)
            findPath(kordinatX - 1, kordinatY - 1)
            sleep(delayFindPathPosPNB)
          end
        end
        while findItem(Block_ID) > 0 and 0 ~= getTile(math.floor(getBot().x / 32) - 1, math.floor(getBot().y / 32) - 1).bg and math.floor(getBot().x / 32) == kordinatX - 1 and math.floor(getBot().y / 32) == kordinatY - 1 do
          punch(-1, -1)
          sleep(delayBreak)
          RekonekStatus()
          while 6 == getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32)).fg or math.floor(getBot().x / 32) ~= kordinatX - 1 or math.floor(getBot().y / 32) ~= kordinatY - 1 do
            sleep(2000)
            local CurrentWorld1 = getBot().world
            sendPacket([[
action|join_request
name|]] .. CurrentWorld1 .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
            sleep(delayJoinIDDoor)
            findPath(kordinatX - 1, kordinatY - 1)
            sleep(delayFindPathPosPNB)
          end
        end
        while findItem(Block_ID) > 0 and 0 ~= getTile(math.floor(getBot().x / 32) - 1, math.floor(getBot().y / 32)).fg and math.floor(getBot().x / 32) == kordinatX - 1 and math.floor(getBot().y / 32) == kordinatY - 1 do
          punch(-1, 0)
          sleep(delayBreak)
          RekonekStatus()
          while 6 == getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32)).fg or math.floor(getBot().x / 32) ~= kordinatX - 1 or math.floor(getBot().y / 32) ~= kordinatY - 1 do
            sleep(2000)
            local CurrentWorld1 = getBot().world
            sendPacket([[
action|join_request
name|]] .. CurrentWorld1 .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
            sleep(delayJoinIDDoor)
            findPath(kordinatX - 1, kordinatY - 1)
            sleep(delayFindPathPosPNB)
          end
        end
        while findItem(Block_ID) > 0 and 0 ~= getTile(math.floor(getBot().x / 32) - 1, math.floor(getBot().y / 32)).bg and math.floor(getBot().x / 32) == kordinatX - 1 and math.floor(getBot().y / 32) == kordinatY - 1 do
          punch(-1, 0)
          sleep(delayBreak)
          RekonekStatus()
          while 6 == getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32)).fg or math.floor(getBot().x / 32) ~= kordinatX - 1 or math.floor(getBot().y / 32) ~= kordinatY - 1 do
            sleep(2000)
            local CurrentWorld1 = getBot().world
            sendPacket([[
action|join_request
name|]] .. CurrentWorld1 .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
            sleep(delayJoinIDDoor)
            findPath(kordinatX - 1, kordinatY - 1)
            sleep(delayFindPathPosPNB)
          end
        end
        while findItem(Block_ID) > 0 and 0 ~= getTile(math.floor(getBot().x / 32) - 1, math.floor(getBot().y / 32) + 1).fg and math.floor(getBot().x / 32) == kordinatX - 1 and math.floor(getBot().y / 32) == kordinatY - 1 do
          punch(-1, 1)
          sleep(delayBreak)
          RekonekStatus()
          while 6 == getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32)).fg or math.floor(getBot().x / 32) ~= kordinatX - 1 or math.floor(getBot().y / 32) ~= kordinatY - 1 do
            sleep(2000)
            local CurrentWorld1 = getBot().world
            sendPacket([[
action|join_request
name|]] .. CurrentWorld1 .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
            sleep(delayJoinIDDoor)
            findPath(kordinatX - 1, kordinatY - 1)
            sleep(delayFindPathPosPNB)
          end
        end
        while findItem(Block_ID) > 0 and 0 ~= getTile(math.floor(getBot().x / 32) - 1, math.floor(getBot().y / 32) + 1).bg and math.floor(getBot().x / 32) == kordinatX - 1 and math.floor(getBot().y / 32) == kordinatY - 1 do
          punch(-1, 1)
          sleep(delayBreak)
          RekonekStatus()
          while 6 == getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32)).fg or math.floor(getBot().x / 32) ~= kordinatX - 1 or math.floor(getBot().y / 32) ~= kordinatY - 1 do
            sleep(2000)
            local CurrentWorld1 = getBot().world
            sendPacket([[
action|join_request
name|]] .. CurrentWorld1 .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
            sleep(delayJoinIDDoor)
            findPath(kordinatX - 1, kordinatY - 1)
            sleep(delayFindPathPosPNB)
          end
        end
      end
      if findItem(112) > minimal_gems then
        RekonekStatus()
        BuyingPack()
      elseif not CustomDontPlant and 0 == findItem(Block_ID) then
        RekonekStatus()
        StartTrashing()
        StartPlanting()
      end
      if CustomDontPlant and 0 == findItem(Seed_ID) then
        RekonekStatus()
        StartHarvesting()
      end
    end
  end
end
function StartBreakingDua()
  collectSet(true)
  if math.floor(getBot().x / 32) ~= kordinatX - 1 and math.floor(getBot().y / 32) ~= kordinatY - 1 then
    findPath(kordinatX - 1, kordinatY - 1)
    sleep(delayFindPathPosPNB)
    while findItem(Block_ID) > 0 and math.floor(getBot().x / 32) == kordinatX - 1 and math.floor(getBot().y / 32) == kordinatY - 1 do
      if 0 == getTile(math.floor(getBot().x / 32) - 1, math.floor(getBot().y / 32) + 2).fg or 0 == getTile(math.floor(getBot().x / 32) - 1, math.floor(getBot().y / 32) + 2).bg then
        if math.floor(getBot().x / 32) == kordinatX - 1 and math.floor(getBot().y / 32) == kordinatY - 1 then
          RekonekStatus()
          place(Block_ID, -1, 0)
          sleep(delayPlace)
          place(Block_ID, -1, 1)
          sleep(delayPlace)
        end
        while findItem(Block_ID) > 0 and 0 ~= getTile(math.floor(getBot().x / 32) - 1, math.floor(getBot().y / 32)).fg and math.floor(getBot().x / 32) == kordinatX - 1 and math.floor(getBot().y / 32) == kordinatY - 1 do
          punch(-1, 0)
          sleep(delayBreak)
          RekonekStatus()
          while 6 == getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32)).fg or math.floor(getBot().x / 32) ~= kordinatX - 1 or math.floor(getBot().y / 32) ~= kordinatY - 1 do
            sleep(2000)
            local CurrentWorld1 = getBot().world
            sendPacket([[
action|join_request
name|]] .. CurrentWorld1 .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
            sleep(delayJoinIDDoor)
            findPath(kordinatX - 1, kordinatY - 1)
            sleep(delayFindPathPosPNB)
          end
        end
        while findItem(Block_ID) > 0 and 0 ~= getTile(math.floor(getBot().x / 32) - 1, math.floor(getBot().y / 32)).bg and math.floor(getBot().x / 32) == kordinatX - 1 and math.floor(getBot().y / 32) == kordinatY - 1 do
          punch(-1, 0)
          sleep(delayBreak)
          RekonekStatus()
          while 6 == getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32)).fg or math.floor(getBot().x / 32) ~= kordinatX - 1 or math.floor(getBot().y / 32) ~= kordinatY - 1 do
            sleep(2000)
            local CurrentWorld1 = getBot().world
            sendPacket([[
action|join_request
name|]] .. CurrentWorld1 .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
            sleep(delayJoinIDDoor)
            findPath(kordinatX - 1, kordinatY - 1)
            sleep(delayFindPathPosPNB)
          end
        end
        while findItem(Block_ID) > 0 and 0 ~= getTile(math.floor(getBot().x / 32) - 1, math.floor(getBot().y / 32) + 1).fg and math.floor(getBot().x / 32) == kordinatX - 1 and math.floor(getBot().y / 32) == kordinatY - 1 do
          punch(-1, 1)
          sleep(delayBreak)
          RekonekStatus()
          while 6 == getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32)).fg or math.floor(getBot().x / 32) ~= kordinatX - 1 or math.floor(getBot().y / 32) ~= kordinatY - 1 do
            sleep(2000)
            local CurrentWorld1 = getBot().world
            sendPacket([[
action|join_request
name|]] .. CurrentWorld1 .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
            sleep(delayJoinIDDoor)
            findPath(kordinatX - 1, kordinatY - 1)
            sleep(delayFindPathPosPNB)
          end
        end
        while findItem(Block_ID) > 0 and 0 ~= getTile(math.floor(getBot().x / 32) - 1, math.floor(getBot().y / 32) + 1).bg and math.floor(getBot().x / 32) == kordinatX - 1 and math.floor(getBot().y / 32) == kordinatY - 1 do
          punch(-1, 1)
          sleep(delayBreak)
          RekonekStatus()
          while 6 == getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32)).fg or math.floor(getBot().x / 32) ~= kordinatX - 1 or math.floor(getBot().y / 32) ~= kordinatY - 1 do
            sleep(2000)
            local CurrentWorld1 = getBot().world
            sendPacket([[
action|join_request
name|]] .. CurrentWorld1 .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
            sleep(delayJoinIDDoor)
            findPath(kordinatX - 1, kordinatY - 1)
            sleep(delayFindPathPosPNB)
          end
        end
      end
      if findItem(112) > minimal_gems then
        RekonekStatus()
        BuyingPack()
      elseif not CustomDontPlant and 0 == findItem(Block_ID) then
        RekonekStatus()
        StartTrashing()
        StartPlanting()
      end
      if CustomDontPlant and 0 == findItem(Seed_ID) then
        RekonekStatus()
        StartHarvesting()
      end
    end
  end
end
function StartBreakingSatu()
  collectSet(true)
  if math.floor(getBot().x / 32) ~= kordinatX - 1 and math.floor(getBot().y / 32) ~= kordinatY - 1 then
    findPath(kordinatX - 1, kordinatY - 1)
    sleep(delayFindPathPosPNB)
    while findItem(Block_ID) > 0 and math.floor(getBot().x / 32) == kordinatX - 1 and math.floor(getBot().y / 32) == kordinatY - 1 do
      if 0 == getTile(math.floor(getBot().x / 32) - 1, math.floor(getBot().y / 32) + 2).fg or 0 == getTile(math.floor(getBot().x / 32) - 1, math.floor(getBot().y / 32) + 2).bg then
        if math.floor(getBot().x / 32) == kordinatX - 1 and math.floor(getBot().y / 32) == kordinatY - 1 then
          RekonekStatus()
          place(Block_ID, -1, 0)
          sleep(delayPlace)
        end
        while findItem(Block_ID) > 0 and 0 ~= getTile(math.floor(getBot().x / 32) - 1, math.floor(getBot().y / 32)).fg and math.floor(getBot().x / 32) == kordinatX - 1 and math.floor(getBot().y / 32) == kordinatY - 1 do
          punch(-1, 0)
          sleep(delayBreak)
          RekonekStatus()
          while 6 == getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32)).fg or math.floor(getBot().x / 32) ~= kordinatX - 1 or math.floor(getBot().y / 32) ~= kordinatY - 1 do
            sleep(2000)
            local CurrentWorld1 = getBot().world
            sendPacket([[
action|join_request
name|]] .. CurrentWorld1 .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
            sleep(delayJoinIDDoor)
            findPath(kordinatX - 1, kordinatY - 1)
            sleep(delayFindPathPosPNB)
          end
        end
        while findItem(Block_ID) > 0 and 0 ~= getTile(math.floor(getBot().x / 32) - 1, math.floor(getBot().y / 32)).bg and math.floor(getBot().x / 32) == kordinatX - 1 and math.floor(getBot().y / 32) == kordinatY - 1 do
          punch(-1, 0)
          sleep(delayBreak)
          RekonekStatus()
          while 6 == getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32)).fg or math.floor(getBot().x / 32) ~= kordinatX - 1 or math.floor(getBot().y / 32) ~= kordinatY - 1 do
            sleep(2000)
            local CurrentWorld1 = getBot().world
            sendPacket([[
action|join_request
name|]] .. CurrentWorld1 .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
            sleep(delayJoinIDDoor)
            findPath(kordinatX - 1, kordinatY - 1)
            sleep(delayFindPathPosPNB)
          end
        end
      end
      if findItem(112) > minimal_gems then
        RekonekStatus()
        BuyingPack()
      elseif not CustomDontPlant and 0 == findItem(Block_ID) then
        RekonekStatus()
        StartTrashing()
        StartPlanting()
      end
      if CustomDontPlant and 0 == findItem(Seed_ID) then
        RekonekStatus()
        StartHarvesting()
      end
    end
  end
end
function DroppingSeedsFinish()
  local WorldNangBot = getBot().world
  collectSet(false)
  if findItem(Seed_ID) >= 1 then
    sleep(2000)
    sendPacket([[
action|join_request
name|]] .. Seed_Save_World .. [[

invitedWorld|0]], 3)
    sleep(delayJoinWorld)
    sendPacket([[
action|join_request
name|]] .. Seed_Save_World .. "|" .. Seed_Save_World_IDDoor .. [[

invitedWorld|0]], 3)
    sleep(delayJoinIDDoor)
    RekonekStatusSave()
    sleep(1000)
    for _, tile in pairs(getTiles()) do
      if tile.fg == BG_Drop_Seed or tile.bg == BG_Drop_Seed then
        JoinIfBotAtWD()
        findPath(tile.x - 1, tile.y)
        sleep(2000)
      end
    end
  end
  while findItem(Seed_ID) >= 1 and getBot().world == Seed_Save_World do
    drop(Seed_ID)
    sleep(3500)
    move(-1, 0)
    sleep(2000)
    JoinIfBotAtWD()
  end
  if 0 == findItem(Seed_ID) and getBot().world == Seed_Save_World then
    Webhookk("<:megapon:909757469306261504> | Information : " .. SeedsScanner(Seed_ID) .. [[
 Total Seed Droped 
<:huh:976112065775284264> | Bot Name : ]] .. getBot().name .. [[
 
<:ipv4:1037366002008207480> | Bot Proxy : ]] .. getBot().proxy .. " (" .. getBot().proxyStatus .. [[
)
<a:online2:1014402261918687282> | Bot Status : Online (]] .. getPing() .. [[
) 
<:redgems:1051473166087749682> | Bot Gems : ]] .. findItem(112) .. [[
 
<:wrench:985492363751342190> | Bot Level : ]] .. getBot().level .. [[
 
<:checklist:1066936985563971584> | Bot Slots : ]] .. getBot().slots .. [[
 
<:guarded:1031906221919309835> | Bot Captcha : ]] .. getBot().captcha .. [[
 
<:wold:909756145202233355> | Current World : ]] .. getBot().world .. [[
 
<:CPU:994981162588053565> | RDP CPU : $cpu% 
<:RAM:996159529966391377> | RDP Ram : $ram MB 
<:sc:1034751373041999872> | RDP Date : ]] .. os.date("%d") .. " " .. os.date("%B") .. " " .. os.date("%Y") .. [[
  
<:ip:1038500058062143660> | RDP IP : $ip 
<:Timer:1012028563047850065> | Up Time : ]] .. ALLWorldDone .. " World " .. AmountLoop .. " Loop (" .. SecondTT(os.difftime(os.time(), startT)))
    sleep(delayWebhook)
    sendPacket([[
action|join_request
name|]] .. WorldNangBot .. [[

invitedWorld|0]], 3)
    sleep(delayJoinWorld)
    sendPacket([[
action|join_request
name|]] .. WorldNangBot .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
    sleep(delayJoinIDDoor)
    RekonekStatusSave()
    CustomPlant()
  end
end
function DroppingSeeds()
  local WorldNangBot = getBot().world
  collectSet(false)
  if findItem(Seed_ID) > 80 then
    sleep(2000)
    sendPacket([[
action|join_request
name|]] .. Seed_Save_World .. [[

invitedWorld|0]], 3)
    sleep(delayJoinWorld)
    sendPacket([[
action|join_request
name|]] .. Seed_Save_World .. "|" .. Seed_Save_World_IDDoor .. [[

invitedWorld|0]], 3)
    sleep(delayJoinIDDoor)
    RekonekStatusSave()
    sleep(1000)
    for _, tile in pairs(getTiles()) do
      if tile.fg == BG_Drop_Seed or tile.bg == BG_Drop_Seed then
        JoinIfBotAtWD()
        findPath(tile.x - 1, tile.y)
        sleep(2000)
      end
    end
  end
  while findItem(Seed_ID) > 80 and getBot().world == Seed_Save_World do
    drop(Seed_ID)
    sleep(3500)
    move(-1, 0)
    sleep(2000)
    JoinIfBotAtWD()
  end
  if 0 == findItem(Seed_ID) and getBot().world == Seed_Save_World then
    Webhookk("<:megapon:909757469306261504> | Information : " .. SeedsScanner(Seed_ID) .. [[
 Total Seed Droped 
<:huh:976112065775284264> | Bot Name : ]] .. getBot().name .. [[
 
<:ipv4:1037366002008207480> | Bot Proxy : ]] .. getBot().proxy .. " (" .. getBot().proxyStatus .. [[
)
<a:online2:1014402261918687282> | Bot Status : Online (]] .. getPing() .. [[
) 
<:redgems:1051473166087749682> | Bot Gems : ]] .. findItem(112) .. [[
 
<:wrench:985492363751342190> | Bot Level : ]] .. getBot().level .. [[
 
<:checklist:1066936985563971584> | Bot Slots : ]] .. getBot().slots .. [[
 
<:guarded:1031906221919309835> | Bot Captcha : ]] .. getBot().captcha .. [[
 
<:wold:909756145202233355> | Current World : ]] .. getBot().world .. [[
 
<:CPU:994981162588053565> | RDP CPU : $cpu% 
<:RAM:996159529966391377> | RDP Ram : $ram MB 
<:sc:1034751373041999872> | RDP Date : ]] .. os.date("%d") .. " " .. os.date("%B") .. " " .. os.date("%Y") .. [[
  
<:ip:1038500058062143660> | RDP IP : $ip 
<:Timer:1012028563047850065> | Up Time : ]] .. ALLWorldDone .. " World " .. AmountLoop .. " Loop (" .. SecondTT(os.difftime(os.time(), startT)))
    sleep(delayWebhook)
    sendPacket([[
action|join_request
name|]] .. WorldNangBot .. [[

invitedWorld|0]], 3)
    sleep(delayJoinWorld)
    sendPacket([[
action|join_request
name|]] .. WorldNangBot .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
    sleep(delayJoinIDDoor)
    RekonekStatusSave()
    CustomPlant()
  end
end
function BuyThePack()
  if getBot().slots < Total_Pack_Item then
    while getBot().slots < Total_Pack_Item do
      sendPacket([[
action|buy
item|upgrade_backpack]], 2)
      sleep(2000)
    end
  end
  if AutoUPBackpack and getBot().slots < MaxUpgradeBP then
    while getBot().slots < MaxUpgradeBP do
      sendPacket([[
action|buy
item|upgrade_backpack]], 2)
      sleep(2000)
    end
  end
  if findItem(112) >= Pack_Price then
    while findItem(112) >= Pack_Price do
      sendPacket([[
action|buy
item|]] .. Pack_Name, 2)
      sleep(2000)
    end
  end
end
startT = os.time()
function SecondTT(seconds)
  local seconds = tonumber(seconds)
  if seconds <= 0 then
    return "00:00:00)"
  else
    hours = string.format("%02.f", math.floor(seconds / 3600))
    mins = string.format("%02.f", math.floor(seconds / 60 - hours * 60))
    secs = string.format("%02.f", math.floor(seconds - hours * 3600 - mins * 60))
    return hours .. ":" .. mins .. ":" .. secs .. ") "
  end
end
startT2 = os.time()
function SecondTT2(seconds)
  local seconds = tonumber(seconds)
  if seconds <= 0 then
    return "00:00:00"
  else
    hours2 = string.format("%02.f", math.floor(seconds / 3600))
    mins2 = string.format("%02.f", math.floor(seconds / 60 - hours2 * 60))
    secs2 = string.format("%02.f", math.floor(seconds - hours2 * 3600 - mins2 * 60))
    return hours2 .. ":" .. mins2 .. ":" .. secs2 .. ""
  end
end
startT3 = os.time()
function SecondTT3(seconds)
  local seconds = tonumber(seconds)
  if seconds <= 0 then
    return "00:00:00"
  else
    hours3 = string.format("%02.f", math.floor(seconds / 3600))
    mins3 = string.format("%02.f", math.floor(seconds / 60 - hours3 * 60))
    secs3 = string.format("%02.f", math.floor(seconds - hours3 * 3600 - mins3 * 60))
    return hours3 .. ":" .. mins3 .. ":" .. secs3 .. ""
  end
end
startT4 = os.time()
function SecondTT4(seconds)
  local seconds = tonumber(seconds)
  if seconds <= 0 then
    return "00:00:00"
  else
    hours4 = string.format("%02.f", math.floor(seconds / 3600))
    mins4 = string.format("%02.f", math.floor(seconds / 60 - hours4 * 60))
    secs4 = string.format("%02.f", math.floor(seconds - hours4 * 3600 - mins4 * 60))
    return hours4 .. ":" .. mins4 .. ":" .. secs4 .. ""
  end
end
startT5 = os.time()
function SecondTT5(seconds)
  local seconds = tonumber(seconds)
  if seconds <= 0 then
    return "00:00:00"
  else
    hours5 = string.format("%02.f", math.floor(seconds / 3600))
    mins5 = string.format("%02.f", math.floor(seconds / 60 - hours5 * 60))
    secs5 = string.format("%02.f", math.floor(seconds - hours5 * 3600 - mins5 * 60))
    return hours5 .. ":" .. mins5 .. ":" .. secs5 .. ""
  end
end
function DropThePack()
  for _, listpack in pairs(Pack_Item_ID) do
    while findItem(listpack) > 0 do
      sendPacket([[
action|drop
|itemID|]] .. listpack, 2)
      sleep(1000)
      sendPacket([[
action|dialog_return
dialog_name|drop_item
itemID|]] .. listpack .. [[
|
count|]] .. findItem(listpack), 2)
      sleep(2000)
      move(-1, 0)
      sleep(1000)
    end
  end
end
function DroppingSeedsFirst()
  if findItem(Seed_ID) >= 1 then
    sleep(2000)
    sendPacket([[
action|join_request
name|]] .. Seed_Save_World .. [[

invitedWorld|0]], 3)
    sleep(delayJoinWorld)
    sendPacket([[
action|join_request
name|]] .. Seed_Save_World .. "|" .. Seed_Save_World_IDDoor .. [[

invitedWorld|0]], 3)
    sleep(delayJoinIDDoor)
    RekonekStatusSave()
    sleep(1000)
    for _, tile in pairs(getTiles()) do
      if tile.fg == BG_Drop_Seed or tile.bg == BG_Drop_Seed then
        JoinIfBotAtWD()
        findPath(tile.x - 1, tile.y)
        sleep(2000)
      end
    end
  end
  while findItem(Seed_ID) >= 1 and getBot().world == Seed_Save_World do
    drop(Seed_ID)
    sleep(3500)
    move(-1, 0)
    sleep(2000)
    JoinIfBotAtWD()
  end
  if 0 == findItem(Seed_ID) and getBot().world == Seed_Save_World then
    sendPacket([[
action|join_request
name|]] .. FarmList[1] .. [[

invitedWorld|0]], 3)
    sleep(delayJoinWorld)
  end
end
function BuyingPack()
  local WorldNangBots = getBot().world
  collectSet(false)
  if findItem(112) > minimal_gems then
    sendPacket([[
action|join_request
name|]] .. Pack_Save_World .. [[

invitedWorld|0]], 3)
    sleep(delayJoinWorld)
    sendPacket([[
action|join_request
name|]] .. Pack_Save_World .. "|" .. Pack_Save_World_IDDoor .. [[

invitedWorld|0]], 3)
    sleep(delayJoinIDDoor)
    RekonekStatusSave()
    sleep(1000)
    for _, tile in pairs(getTiles()) do
      if tile.fg == BG_Drop_Pack or tile.bg == BG_Drop_Pack then
        JoinIfBotAtWDForPack()
        findPath(tile.x - 1, tile.y)
        sleep(2000)
      end
    end
  end
  if 6 ~= getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32)).fg or findItem(112) > minimal_gems then
    BuyThePack()
    DropThePack()
    Webhookk("<:megapon:909757469306261504> | Information : " .. SeedsScanner(Pack_Counting) .. [[
 Total Pack Droped 
<:huh:976112065775284264> | Bot Name : ]] .. getBot().name .. [[
 
<:ipv4:1037366002008207480> | Bot Proxy : ]] .. getBot().proxy .. " (" .. getBot().proxyStatus .. [[
) 
<a:online2:1014402261918687282> | Bot Status : Online (]] .. getPing() .. [[
) 
<:redgems:1051473166087749682> | Bot Gems : ]] .. findItem(112) .. [[
  
<:wrench:985492363751342190> | Bot Level : ]] .. getBot().level .. [[
 
<:guarded:1031906221919309835> | Bot Captcha : ]] .. getBot().captcha .. [[
 
<:wold:909756145202233355> | Current World : ]] .. getBot().world .. [[
 
<:CPU:994981162588053565> | Cpu : $cpu % 
<:RAM:996159529966391377> | RDP Ram : $ram MB 
<:sc:1034751373041999872> | RDP Date : ]] .. os.date("%d") .. " " .. os.date("%B") .. " " .. os.date("%Y") .. [[
  
<:ip:1038500058062143660> | RDP IP : $ip 
<:Timer:1012028563047850065> | Up Time : ]] .. ALLWorldDone .. " World " .. AmountLoop .. " Loop (" .. SecondTT(os.difftime(os.time(), startT)))
    sleep(delayWebhook)
    RekonekStatusSave()
    sleep(1000)
  end
  if findItem(112) < Pack_Price and getBot().world == Pack_Save_World then
    sleep(3500)
    sendPacket([[
action|join_request
name|]] .. WorldNangBots .. [[

invitedWorld|0]], 3)
    sleep(delayJoinWorld)
    sendPacket([[
action|join_request
name|]] .. WorldNangBots .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
    sleep(delayJoinIDDoor)
    RekonekStatusSave()
    CustomPlant()
  end
end
function BuyingPackBUY()
  if findItem(112) > minimal_gems then
    sleep(2000)
    sendPacket([[
action|join_request
name|]] .. Pack_Save_World .. [[

invitedWorld|0]], 3)
    sleep(delayJoinWorld)
    sendPacket([[
action|join_request
name|]] .. Pack_Save_World .. "|" .. Pack_Save_World_IDDoor .. [[

invitedWorld|0]], 3)
    sleep(delayJoinIDDoor)
    RekonekStatusSave()
    sleep(1000)
    for _, tile in pairs(getTiles()) do
      if tile.fg == BG_Drop_Pack or tile.bg == BG_Drop_Pack then
        JoinIfBotAtWDForPack()
        findPath(tile.x - 1, tile.y)
        sleep(2000)
      end
    end
  end
  if 6 ~= getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32)).fg or findItem(112) > minimal_gems then
    BuyThePack()
    DropThePack()
    sleep(2000)
    Webhookk("<:megapon:909757469306261504> | Information : " .. SeedsScanner(Pack_Counting) .. [[
 Total Pack Droped 
<:huh:976112065775284264> | Bot Name : ]] .. getBot().name .. [[
 
<:ipv4:1037366002008207480> | Bot Proxy : ]] .. getBot().proxy .. " (" .. getBot().proxyStatus .. [[
) 
<a:online2:1014402261918687282> | Bot Status : Online (]] .. getPing() .. [[
) 
<:redgems:1051473166087749682> | Bot Gems : ]] .. findItem(112) .. [[
 
<:wrench:985492363751342190> | Bot Level : ]] .. getBot().level .. [[
 
<:guarded:1031906221919309835> | Bot Captcha : ]] .. getBot().captcha .. [[
 
<:wold:909756145202233355> | Current World : ]] .. getBot().world .. [[
 
<:CPU:994981162588053565> | Cpu : $cpu % 
<:RAM:996159529966391377> | RDP Ram : $ram MB 
<:sc:1034751373041999872> | RDP Date : ]] .. os.date("%d") .. " " .. os.date("%B") .. " " .. os.date("%Y") .. [[
  
<:ip:1038500058062143660> | RDP IP : $ip 
<:Timer:1012028563047850065> | Up Time : ]] .. ALLWorldDone .. " World " .. AmountLoop .. " Loop (" .. SecondTT(os.difftime(os.time(), startT)))
    sleep(delayWebhook)
  end
  if findItem(112) < Pack_Price and getBot().world == Pack_Save_World then
    sendPacket([[
action|join_request
name|]] .. FarmList[1] .. [[

invitedWorld|0]], 3)
    sleep(delayJoinWorld)
  end
end
function JoinIfBotAtWDForPack()
  CurrentBotAtWD2 = false
  if 6 == getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32)).fg then
    CurrentBotAtWD2 = true
    sleep(2000)
    sendPacket([[
action|join_request
name|]] .. Pack_Save_World .. [[

invitedWorld|0]], 3)
    sleep(delayJoinWorld)
    sendPacket([[
action|join_request
name|]] .. Pack_Save_World .. "|" .. Pack_Save_World_IDDoor .. [[

invitedWorld|0]], 3)
    sleep(delayJoinIDDoor)
    for _, tile in pairs(getTiles()) do
      if (tile.fg == BG_Drop_Pack or tile.bg == BG_Drop_Pack) and CurrentBotAtWD2 then
        sleep(1000)
        findPath(tile.x - 1, tile.y)
        sleep(2000)
        CurrentBotAtWD2 = false
        sleep(100)
      end
    end
  end
end
function JoinIfBotAtWD()
  CurrentBotAtWD = false
  if 6 == getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32)).fg then
    CurrentBotAtWD = true
    sleep(2000)
    sendPacket([[
action|join_request
name|]] .. Seed_Save_World .. [[

invitedWorld|0]], 3)
    sleep(delayJoinWorld)
    sendPacket([[
action|join_request
name|]] .. Seed_Save_World .. "|" .. Seed_Save_World_IDDoor .. [[

invitedWorld|0]], 3)
    sleep(delayJoinIDDoor)
    for _, tile in pairs(getTiles()) do
      if (tile.fg == BG_Drop_Seed or tile.bg == BG_Drop_Seed) and CurrentBotAtWD then
        sleep(1000)
        findPath(tile.x - 1, tile.y)
        sleep(2000)
        CurrentBotAtWD = false
        sleep(100)
      end
    end
  end
end
function BuyingPackPlant()
  for _, itemlist in pairs(Pack_Item_ID) do
    if findItem(itemlist) >= 1 then
      sendPacket([[
action|join_request
name|]] .. Pack_Save_World .. [[

invitedWorld|0]], 3)
      sleep(delayJoinWorld)
      sendPacket([[
action|join_request
name|]] .. Pack_Save_World .. "|" .. Pack_Save_World_IDDoor .. [[

invitedWorld|0]], 3)
      sleep(delayJoinIDDoor)
      RekonekStatusSave()
      sleep(1000)
      for _, tile in pairs(getTiles()) do
        if tile.fg == BG_Drop_Pack or tile.bg == BG_Drop_Pack then
          findPath(tile.x - 1, tile.y)
          sleep(5000)
          DropThePack()
          sleep(1000)
          Webhookk("<:megapon:909757469306261504> | Information : " .. SeedsScanner(Pack_Counting) .. [[
 Total Pack Droped 
<:huh:976112065775284264> | Bot Name : ]] .. getBot().name .. [[

<:ipv4:1037366002008207480> | Bot Proxy : ]] .. getBot().proxy .. " (" .. getBot().proxyStatus .. [[
) 
<a:online2:1014402261918687282> | Bot Status : Online (]] .. getPing() .. [[
) 
<:redgems:1051473166087749682> | Bot Gems : ]] .. findItem(112) .. [[
  
<:wrench:985492363751342190> | Bot Level : ]] .. getBot().level .. [[
 
<:checklist:1066936985563971584> | Bot Slots : ]] .. getBot().slots .. [[
 
<:guarded:1031906221919309835> | Bot Captcha : ]] .. getBot().captcha .. [[
  
<:wold:909756145202233355> | Current World : ]] .. getBot().world .. " (" .. WorldDone .. "/" .. #FarmList .. [[
) 
<:CPU:994981162588053565> | Cpu : $cpu % 
<:RAM:996159529966391377> | RDP Ram : $ram MB 
<:sc:1034751373041999872> | RDP Date : ]] .. os.date("%d") .. " " .. os.date("%B") .. " " .. os.date("%Y") .. [[
  
<:ip:1038500058062143660> | RDP IP : $ip 
<:Timer:1012028563047850065> | Up Time : ]] .. ALLWorldDone .. " World " .. AmountLoop .. " Loop (" .. SecondTT(os.difftime(os.time(), startT)))
          sleep(delayWebhook)
          if 0 == findItem(itemlist) then
            sleep(2000)
            sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. [[

invitedWorld|0]], 3)
            sleep(delayJoinWorld)
          end
        end
      end
    end
  end
end
function BuyingPackFirst()
  for _, itemlist in pairs(Pack_Item_ID) do
    if findItem(itemlist) >= 1 then
      sendPacket([[
action|join_request
name|]] .. Pack_Save_World .. [[

invitedWorld|0]], 3)
      sleep(delayJoinWorld)
      sendPacket([[
action|join_request
name|]] .. Pack_Save_World .. "|" .. Pack_Save_World_IDDoor .. [[

invitedWorld|0]], 3)
      sleep(delayJoinIDDoor)
      RekonekStatusSave()
      sleep(1000)
      for _, tile in pairs(getTiles()) do
        if tile.fg == BG_Drop_Pack or tile.bg == BG_Drop_Pack then
          findPath(tile.x - 1, tile.y)
          sleep(5000)
          DropThePack()
          sleep(1000)
          Webhookk("<:megapon:909757469306261504> | Information : " .. SeedsScanner(Pack_Counting) .. [[
 Total Pack Droped 
<:huh:976112065775284264> | Bot Name : ]] .. getBot().name .. [[

<:ipv4:1037366002008207480> | Bot Proxy : ]] .. getBot().proxy .. " (" .. getBot().proxyStatus .. [[
) 
<a:online2:1014402261918687282> | Bot Status : Online (]] .. getPing() .. [[
) 
<:redgems:1051473166087749682> | Bot Gems : ]] .. findItem(112) .. [[
  
<:wrench:985492363751342190> | Bot Level : ]] .. getBot().level .. [[
 
<:checklist:1066936985563971584> | Bot Slots : ]] .. getBot().slots .. [[
 
<:guarded:1031906221919309835> | Bot Captcha : ]] .. getBot().captcha .. [[
  
<:wold:909756145202233355> | Current World : ]] .. getBot().world .. " (" .. WorldDone .. "/" .. #FarmList .. [[
) 
<:CPU:994981162588053565> | Cpu : $cpu % 
<:RAM:996159529966391377> | RDP Ram : $ram MB 
<:sc:1034751373041999872> | RDP Date : ]] .. os.date("%d") .. " " .. os.date("%B") .. " " .. os.date("%Y") .. [[
  
<:ip:1038500058062143660> | RDP IP : $ip 
<:Timer:1012028563047850065> | Up Time : ]] .. ALLWorldDone .. " World " .. AmountLoop .. " Loop (" .. SecondTT(os.difftime(os.time(), startT)))
          sleep(delayWebhook)
          if 0 == findItem(itemlist) then
            sleep(2000)
            sendPacket([[
action|join_request
name|]] .. FarmList[1] .. [[

invitedWorld|0]], 3)
            sleep(delayJoinWorld)
          end
        end
      end
    end
  end
end
function CheckErcon()
  if getBot().status == "online" then
    WebhookkStatus("Bot ||" .. getBot().name .. "|| Online (Successfully To Reconnect)")
    sleep(delayWebhook)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. [[

invitedWorld|0]], 3)
    sleep(delayJoinWorld)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
    sleep(delayJoinIDDoor)
    findPath(kordinatX - 1, kordinatY - 1)
    sleep(delayFindPathPosPNB)
    CustomPlant()
  end
  if getBot().status == "offline" and getPing() == 500 then
    WebhookkStatus("Bot ||" .. getBot().name .. "|| Ercon (Check Your Bot Or Proxy)")
    sleep(delayWebhook)
    repeat
      sleep(30000)
      connect()
      sleep(20000)
    until getBot().status == "online"
    WebhookkStatus("Bot ||" .. getBot().name .. "|| Online (Successfully To Reconnect)")
    sleep(delayWebhook)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. [[

invitedWorld|0]], 3)
    sleep(delayJoinWorld)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
    sleep(delayJoinIDDoor)
    findPath(kordinatX - 1, kordinatY - 1)
    sleep(delayFindPathPosPNB)
    CustomPlant()
  end
  if getBot().status == "offline" and getPing() < 500 then
    WebhookkStatus("Bot ||" .. getBot().name .. "|| Server Overloaded (Trying To Reconnected)")
    sleep(delayWebhook)
    repeat
      sleep(30000)
      connect()
      sleep(20000)
    until getBot().status == "online"
    WebhookkStatus("Bot ||" .. getBot().name .. "|| Online (Successfully To Reconnected)")
    sleep(delayWebhook)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. [[

invitedWorld|0]], 3)
    sleep(delayJoinWorld)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
    sleep(delayJoinIDDoor)
    findPath(kordinatX - 1, kordinatY - 1)
    sleep(delayFindPathPosPNB)
    CustomPlant()
  end
end
function CheckErconPlant()
  if getBot().status == "online" then
    WebhookkStatus("Bot ||" .. getBot().name .. "|| Online (Successfully To Reconnect)")
    sleep(delayWebhook)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. [[

invitedWorld|0]], 3)
    sleep(delayJoinIDDoor)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
    sleep(delayJoinIDDoor)
    findPath(kordinatX - 1, kordinatY - 1)
    sleep(delayFindPathPosPNB)
    FinishedFarmPlanting()
  end
  if getBot().status == "offline" and getPing() == 500 then
    WebhookkStatus("Bot ||" .. getBot().name .. "|| Ercon (Check Your Bot Or Proxy)")
    sleep(delayWebhook)
    repeat
      sleep(30000)
      connect()
      sleep(20000)
    until getBot().status == "online"
    WebhookkStatus("Bot ||" .. getBot().name .. "|| Online (Successfully To Reconnect)")
    sleep(delayWebhook)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. [[

invitedWorld|0]], 3)
    sleep(delayJoinWorld)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
    sleep(delayJoinIDDoor)
    findPath(kordinatX - 1, kordinatY - 1)
    sleep(delayFindPathPosPNB)
    FinishedFarmPlanting()
  end
  if getBot().status == "offline" and getPing() < 500 then
    WebhookkStatus("Bot ||" .. getBot().name .. "|| Server Overloaded (Trying To Reconnected)")
    sleep(delayWebhook)
    repeat
      sleep(30000)
      connect()
      sleep(20000)
    until getBot().status == "online"
    WebhookkStatus("Bot ||" .. getBot().name .. "|| Online Successfully To Reconnected)")
    sleep(delayWebhook)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. [[

invitedWorld|0]], 3)
    sleep(delayJoinWorld)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
    sleep(delayJoinIDDoor)
    findPath(kordinatX - 1, kordinatY - 1)
    sleep(delayFindPathPosPNB)
    FinishedFarmPlanting()
  end
end
function RekonekStatusPlant()
  if getBot().status == "offline" then
    WebhookkStatus("Bot ||" .. getBot().name .. "|| Offline (Trying To Reconnected)")
    sleep(30000)
    connect()
    sleep(20000)
    CheckErconPlant()
  end
  if getBot().status == "suspended" then
    WebhookkStatus("Bot ||" .. getBot().name .. "|| Suspended (Change Your Bot)")
    sleep(delayWebhook)
    repeat
      sleep(300000)
    until getBot().status == "online"
  end
  if getBot().status == "temporary ban" then
    WebhookkStatus("Bot ||" .. getBot().name .. "|| Temporary Ban (Re-add Bot Or Change Your Bot/VPN/Proxy)")
    sleep(delayWebhook)
    repeat
      sleep(30000)
      connect()
      sleep(30000)
    until getBot().status == "online"
    WebhookkStatus("Bot ||" .. getBot().name .. "|| Online (Temporary Ban Is Cleared)")
    sleep(delayWebhook)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. [[

invitedWorld|0]], 3)
    sleep(delayJoinWorld)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
    sleep(delayJoinIDDoor)
    findPath(kordinatX - 1, kordinatY - 1)
    sleep(delayFindPathPosPNB)
    FinishedFarmPlanting()
  end
  if getBot().status == "version update" then
    WebhookkStatus("Bot ||" .. getBot().name .. "|| Offline (Version Update)")
    sleep(delayWebhook)
    repeat
      sleep(300000)
    until getBot().status == "online"
  end
  if getBot().status == "maintenance" then
    WebhookkStatus("Bot ||" .. getBot().name .. "|| Offline (Maintenance And Bot Will Auto Reconnect)")
    sleep(delayWebhook)
    repeat
      sleep(30000)
      connect()
      sleep(30000)
    until getBot().status == "online"
    WebhookkStatus("Bot ||" .. getBot().name .. "|| Online (Maintenance Is Done)")
    sleep(delayWebhook)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. [[

invitedWorld|0]], 3)
    sleep(delayJoinWorld)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
    sleep(delayJoinIDDoor)
    findPath(kordinatX - 1, kordinatY - 1)
    sleep(delayFindPathPosPNB)
    FinishedFarmPlanting()
  end
  if getBot().proxyStatus == "disconnected" then
    WebhookkStatus("Bot ||" .. getBot().name .. "|| Offline (Proxy Disconnected / Ercon)")
    sleep(delayWebhook)
    repeat
      seep(30000)
      connect()
      sleep(30000)
    until getBot().status == "online"
    WebhookkStatus("Bot ||" .. getBot().name .. "|| Online (Proxy Connected)")
    sleep(delayWebhook)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. [[

invitedWorld|0]], 3)
    sleep(delayJoinWorld)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
    sleep(delayJoinIDDoor)
    findPath(kordinatX - 1, kordinatY - 1)
    sleep(delayFindPathPosPNB)
    FinishedFarmPlanting()
  end
  if 6 == getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32)).fg then
    sleep(2000)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. [[

invitedWorld|0]], 3)
    sleep(delayJoinWorld)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
    sleep(delayJoinIDDoor)
    findPath(kordinatX - 1, kordinatY - 1)
    sleep(delayFindPathPosPNB)
    FinishedFarmPlanting()
  end
  if SecondTT2(os.difftime(os.time(), startT2)) > BotReRotationWhenStuck then
    sleep(1000)
    local worldlocallobby2 = "EXIT"
    sleep(1000)
    startT2 = os.time()
    sleep(2000)
    sendPacket([[
action|join_request
name|]] .. worldlocallobby2 .. [[

invitedWorld|0]], 3)
    sleep(delayJoinWorld)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. [[

invitedWorld|0]], 3)
    sleep(delayJoinWorld)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
    sleep(delayJoinIDDoor)
    findPath(kordinatX - 1, kordinatY - 1)
    sleep(delayFindPathPosPNB)
    FinishedFarmPlanting()
  end
  if "EXIT" == getBot().world or getBot().world == "START" or getBot().world == "START1" or getBot().world == "START2" or getBot().world == "START3" or getBot().world == "START4" or getBot().world == "START5" then
    sleep(2000)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. [[

invitedWorld|0]], 3)
    sleep(delayJoinWorld)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
    sleep(delayJoinIDDoor)
    findPath(kordinatX - 1, kordinatY - 1)
    sleep(delayFindPathPosPNB)
    FinishedFarmPlanting()
  end
  if RestWithUpTimeBot and SecondTT3(os.difftime(os.time(), startT3)) > UpTimeToOffline then
    sleep(2000)
    WebhookkStatus("Bot ||" .. getBot().name .. "|| Rest (Because Bot Up Time " .. UpTimeToOffline .. " And Bot " .. getBot().name .. " Rest For " .. CooldownTimeREST3 .. ":00 Minutes) ")
    sleep(delayWebhook)
    setBool("Auto Reconnect", false)
    sleep(1000)
    startT3 = os.time()
    sleep(1000)
    disconnect()
    sleep(10000)
    RestTimeBotProsesUpTime()
    if getBot().status == "offline" then
      repeat
        sleep(1000)
        connect()
        sleep(20000)
      until getBot().status == "online"
      WebhookkStatus("Bot ||" .. getBot().name .. "|| Bot Finished Rest (Bot Back To Starting)")
      sleep(delayWebhook)
      setBool("Auto Reconnect", true)
      sleep(1000)
      sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. [[

invitedWorld|0]], 3)
      sleep(delayJoinWorld)
      sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
      sleep(delayJoinIDDoor)
      findPath(kordinatX - 1, kordinatY - 1)
      sleep(delayFindPathPosPNB)
      FinishedFarmPlanting()
    end
  end
  if AutoChatMessageNjoinWorld and SecondTT4(os.difftime(os.time(), startT4)) > UpTimeToOffline4 then
    sleep(2000)
    Webhookk("<:megapon:909757469306261504> | Information : Bot Up Time " .. UpTimeToOffline4 .. [[
, So Bot Will Be Auto Chat Random Message And Join To Random World 
<:huh:976112065775284264> | Bot Name : ]] .. getBot().name .. [[

<:ipv4:1037366002008207480> | Bot Proxy : ]] .. getBot().proxy .. " (" .. getBot().proxyStatus .. [[
) 
<a:online2:1014402261918687282> | Bot Status : Online (]] .. getPing() .. [[
) 
<:guarded:1031906221919309835> | Bot Captcha : ]] .. getBot().captcha .. [[
 
<:wold:909756145202233355> | Current World : ]] .. getBot().world .. " (" .. WorldDone .. "/" .. #FarmList .. [[
) 
<:CPU:994981162588053565> | RDP CPU : $cpu% 
<:RAM:996159529966391377> | RDP Ram : $ram MB 
<:sc:1034751373041999872> | RDP Date : ]] .. os.date("%d") .. " " .. os.date("%B") .. " " .. os.date("%Y") .. [[
  
<:ip:1038500058062143660> | RDP IP : $ip 
<:Timer:1012028563047850065> | Up Time : ]] .. ALLWorldDone .. " World " .. AmountLoop .. " Loop (" .. SecondTT(os.difftime(os.time(), startT)))
    sleep(delayWebhook)
    startT4 = os.time()
    sleep(1000)
    local ChatMessage = ""
    sleep(1000)
    ChatMessage = ChatMessage .. string.char(math.random(97, 122))
    sleep(100)
    ChatMessage = ChatMessage .. string.char(math.random(97, 122))
    sleep(100)
    ChatMessage = ChatMessage .. string.char(math.random(97, 122))
    sleep(100)
    ChatMessage = ChatMessage .. string.char(math.random(97, 122))
    sleep(100)
    ChatMessage = ChatMessage .. string.char(math.random(97, 122))
    sleep(100)
    ChatMessage = ChatMessage .. string.char(math.random(97, 122))
    sleep(100)
    ChatMessage = ChatMessage .. string.char(math.random(97, 122))
    sleep(100)
    ChatMessage = ChatMessage .. string.char(math.random(97, 122))
    sleep(500)
    say("" .. ChatMessage .. "")
    sleep(10000)
    ChatMessage = ""
    sleep(100)
    local totTxt = ""
    sleep(100)
    local totTxt2 = ""
    sleep(100)
    local totTxt3 = ""
    sleep(100)
    totTxt = totTxt .. string.char(math.random(97, 122))
    sleep(100)
    totTxt = totTxt .. string.char(math.random(97, 122))
    sleep(100)
    totTxt = totTxt .. string.char(math.random(97, 122))
    sleep(100)
    totTxt = totTxt .. string.char(math.random(97, 122))
    sleep(100)
    totTxt = totTxt .. string.char(math.random(97, 122))
    sleep(100)
    totTxt = totTxt .. string.char(math.random(97, 122))
    sleep(100)
    totTxt = totTxt .. string.char(math.random(97, 122))
    sleep(100)
    totTxt = totTxt .. string.char(math.random(97, 122))
    sleep(100)
    totTxt = totTxt .. string.char(math.random(97, 122))
    sleep(100)
    totTxt = totTxt .. string.char(math.random(97, 122))
    sleep(100)
    totTxt = totTxt .. string.char(math.random(97, 122))
    sleep(100)
    totTxt = totTxt .. string.char(math.random(97, 122))
    sleep(100)
    totTxt = totTxt .. string.char(math.random(97, 122))
    sleep(100)
    totTxt = totTxt .. string.char(math.random(97, 122))
    sleep(100)
    totTxt = totTxt .. string.char(math.random(97, 122))
    sleep(100)
    totTxt = totTxt .. string.char(math.random(97, 122))
    sleep(100)
    totTxt2 = totTxt2 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt2 = totTxt2 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt2 = totTxt2 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt2 = totTxt2 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt2 = totTxt2 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt2 = totTxt2 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt2 = totTxt2 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt2 = totTxt2 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt2 = totTxt2 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt2 = totTxt2 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt2 = totTxt2 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt2 = totTxt2 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt2 = totTxt2 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt2 = totTxt2 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt3 = totTxt3 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt3 = totTxt3 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt3 = totTxt3 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt3 = totTxt3 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt3 = totTxt3 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt3 = totTxt3 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt3 = totTxt3 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt3 = totTxt3 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt3 = totTxt3 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt3 = totTxt3 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt3 = totTxt3 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt3 = totTxt3 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt3 = totTxt3 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt3 = totTxt3 .. string.char(math.random(97, 122))
    sleep(100)
    sleep(3000)
    sendPacket([[
action|join_request
name|]] .. totTxt .. [[

invitedWorld|0]], 3)
    sleep(delayJoinRandomWorld)
    sendPacket([[
action|join_request
name|]] .. totTxt2 .. [[

invitedWorld|0]], 3)
    sleep(delayJoinRandomWorld)
    sendPacket([[
action|join_request
name|]] .. totTxt3 .. [[

invitedWorld|0]], 3)
    sleep(delayJoinRandomWorld)
    totTxt = ""
    sleep(100)
    totTxt2 = ""
    sleep(100)
    totTxt3 = ""
    sleep(100)
    Webhookk([[
<:megapon:909757469306261504> | Information : Bot Done Auto Chat Random Message And Join To Random World 
<:huh:976112065775284264> | Bot Name : ]] .. getBot().name .. [[

<:ipv4:1037366002008207480> | Bot Proxy : ]] .. getBot().proxy .. " (" .. getBot().proxyStatus .. [[
) 
<a:online2:1014402261918687282> | Bot Status : Online (]] .. getPing() .. [[
) 
<:guarded:1031906221919309835> | Bot Captcha : ]] .. getBot().captcha .. [[
 
<:wold:909756145202233355> | Current World : ]] .. getBot().world .. " (" .. WorldDone .. "/" .. #FarmList .. [[
) 
<:CPU:994981162588053565> | RDP CPU : $cpu% 
<:RAM:996159529966391377> | RDP Ram : $ram MB 
<:sc:1034751373041999872> | RDP Date : ]] .. os.date("%d") .. " " .. os.date("%B") .. " " .. os.date("%Y") .. [[
  
<:ip:1038500058062143660> | RDP IP : $ip 
<:Timer:1012028563047850065> | Up Time : ]] .. ALLWorldDone .. " World " .. AmountLoop .. " Loop (" .. SecondTT(os.difftime(os.time(), startT)))
    sleep(delayWebhook)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. [[

invitedWorld|0]], 3)
    sleep(delayJoinWorld)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
    sleep(delayJoinIDDoor)
    findPath(kordinatX - 1, kordinatY - 1)
    sleep(delayFindPathPosPNB)
    FinishedFarmPlanting()
  end
  if getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32)).fg == IDDoorID and SecondTT5(os.difftime(os.time(), startT5)) > BotReRotationWhenStuckIDDoor then
    sleep(2000)
    local worldlocallobby = "EXIT"
    sleep(100)
    startT5 = os.time()
    sleep(1000)
    sendPacket([[
action|join_request
name|]] .. worldlocallobby .. [[

invitedWorld|0]], 3)
    sleep(delayJoinWorld)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. [[

invitedWorld|0]], 3)
    sleep(delayJoinWorld)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
    sleep(delayJoinIDDoor)
    findPath(kordinatX - 1, kordinatY - 1)
    sleep(delayFindPathPosPNB)
    FinishedFarmPlanting()
  end
end
function RekonekStatusSave()
  if getBot().status == "offline" then
    WebhookkStatus("Bot ||" .. getBot().name .. "|| Offline (Trying To Reconnected) @everyone")
    sleep(10000)
    connect()
    sleep(25000)
    CheckErcon()
  end
  if getBot().status == "suspended" then
    WebhookkStatus("Bot ||" .. getBot().name .. "|| Suspended (Change Your Bot) @everyone")
    sleep(delayWebhook)
    repeat
      sleep(300000)
    until getBot().status == "online"
  end
  if getBot().status == "temporary ban" then
    WebhookkStatus("Bot ||" .. getBot().name .. "|| Temporary Ban (Re-add Bot Or Change Your Bot/VPN/Proxy) @everyone")
    sleep(delayWebhook)
    repeat
      sleep(30000)
      connect()
      sleep(30000)
    until getBot().status == "online"
    WebhookkStatus("Bot ||" .. getBot().name .. "|| Online (Temporary Ban Is Cleared)")
    sleep(delayWebhook)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. [[

invitedWorld|0]], 3)
    sleep(delayJoinWorld)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
    sleep(delayJoinIDDoor)
    findPath(kordinatX - 1, kordinatY - 1)
    sleep(delayFindPathPosPNB)
    CustomPlant()
  end
  if getBot().status == "version update" then
    WebhookkStatus("Bot ||" .. getBot().name .. "|| Offline (Version Update) @everyone")
    sleep(delayWebhook)
    repeat
      sleep(300000)
    until getBot().status == "online"
  end
  if getBot().status == "maintenance" then
    WebhookkStatus("Bot ||" .. getBot().name .. "|| Offline (Maintenance And Bot Will Auto Reconnect) @everyone")
    sleep(delayWebhook)
    repeat
      sleep(30000)
      connect()
      sleep(30000)
    until getBot().status == "online"
    WebhookkStatus("Bot ||" .. getBot().name .. "|| Online (Maintenance Is Done)")
    sleep(delayWebhook)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. [[

invitedWorld|0]], 3)
    sleep(delayJoinWorld)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
    sleep(delayJoinIDDoor)
    findPath(kordinatX - 1, kordinatY - 1)
    sleep(delayFindPathPosPNB)
    CustomPlant()
  end
  if getBot().proxyStatus == "disconnected" then
    WebhookkStatus("Bot ||" .. getBot().name .. "|| Offline (Proxy Disconnected / Ercon) @everyone")
    sleep(delayWebhook)
    repeat
      seep(30000)
      connect()
      sleep(30000)
    until getBot().status == "online"
    WebhookkStatus("Bot ||" .. getBot().name .. "|| Online (Proxy Connected")
    sleep(delayWebhook)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. [[

invitedWorld|0]], 3)
    sleep(delayJoinWorld)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
    sleep(delayJoinIDDoor)
    findPath(kordinatX - 1, kordinatY - 1)
    sleep(delayFindPathPosPNB)
    CustomPlant()
  end
  if getBot().world == "EXIT" or getBot().world == "START" or getBot().world == "START1" or getBot().world == "START2" or getBot().world == "START3" or getBot().world == "START4" or getBot().world == "START5" then
    sleep(2000)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. [[

invitedWorld|0]], 3)
    sleep(delayJoinWorld)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
    sleep(delayJoinIDDoor)
    findPath(kordinatX - 1, kordinatY - 1)
    sleep(delayFindPathPosPNB)
    CustomPlant()
  end
end
function RekonekStatus()
  if getBot().status == "offline" then
    WebhookkStatus("Bot ||" .. getBot().name .. "|| Offline (Trying To Reconnected) @everyone")
    sleep(10000)
    connect()
    sleep(25000)
    CheckErcon()
  end
  if getBot().status == "suspended" then
    WebhookkStatus("Bot ||" .. getBot().name .. "|| Suspended (Change Your Bot) @everyone")
    sleep(5000)
    repeat
      sleep(300000)
    until getBot().status == "online"
  end
  if getBot().status == "temporary ban" then
    WebhookkStatus("Bot ||" .. getBot().name .. "|| Temporary Ban (Re-add Bot / Change Your Bot / Change Proxy / Change VPN) @everyone")
    sleep(delayWebhook)
    repeat
      sleep(30000)
      connect()
      sleep(30000)
    until getBot().status == "online"
    WebhookkStatus("Bot ||" .. getBot().name .. "|| Online (Temporary Ban Is Cleared)")
    sleep(delayWebhook)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. [[

invitedWorld|0]], 3)
    sleep(delayJoinWorld)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
    sleep(delayJoinIDDoor)
    findPath(kordinatX - 1, kordinatY - 1)
    sleep(delayFindPathPosPNB)
    CustomPlant()
  end
  if getBot().status == "version update" then
    WebhookkStatus("Bot ||" .. getBot().name .. "|| Offline (Version Update) @everyone")
    sleep(delayWebhook)
    repeat
      sleep(300000)
    until getBot().status == "online"
  end
  if getBot().status == "maintenance" then
    WebhookkStatus("Bot ||" .. getBot().name .. "|| Offline (Maintenance) @everyone")
    sleep(delayWebhook)
    repeat
      sleep(300000)
      connect()
      sleep(30000)
    until getBot().status == "online"
    WebhookkStatus("Bot ||" .. getBot().name .. "|| Online (Maintenance Is Done)")
    sleep(delayWebhook)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. [[

invitedWorld|0]], 3)
    sleep(delayJoinWorld)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
    sleep(delayJoinIDDoor)
    findPath(kordinatX - 1, kordinatY - 1)
    sleep(delayFindPathPosPNB)
    CustomPlant()
  end
  if getBot().proxyStatus == "disconnected" then
    WebhookkStatus("Bot ||" .. getBot().name .. "|| Offline (Proxy Disconnected / Ercon) @everyone")
    sleep(delayWebhook)
    repeat
      seep(300000)
      connect()
      sleep(30000)
    until getBot().status == "online"
    WebhookkStatus("Bot ||" .. getBot().name .. "|| Online (Proxy Is Connected)")
    sleep(delayWebhook)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. [[

invitedWorld|0]], 3)
    sleep(delayJoinWorld)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
    sleep(delayJoinIDDoor)
    findPath(kordinatX - 1, kordinatY - 1)
    sleep(delayFindPathPosPNB)
    CustomPlant()
  end
  if getBot().world == Seed_Save_World or getBot().world == Pack_Save_World then
    sleep(2000)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. [[

invitedWorld|0]], 3)
    sleep(delayJoinWorld)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
    sleep(delayJoinIDDoor)
    findPath(kordinatX - 1, kordinatY - 1)
    sleep(delayFindPathPosPNB)
    CustomPlant()
  end
  if 6 == getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32)).fg then
    sleep(2000)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. [[

invitedWorld|0]], 3)
    sleep(delayJoinWorld)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
    sleep(delayJoinIDDoor)
    findPath(kordinatX - 1, kordinatY - 1)
    sleep(delayFindPathPosPNB)
    CustomPlant()
  end
  if SecondTT2(os.difftime(os.time(), startT2)) > BotReRotationWhenStuck then
    sleep(1000)
    local worldlocallobby2 = "EXIT"
    sleep(1000)
    startT2 = os.time()
    sleep(2000)
    sendPacket([[
action|join_request
name|]] .. worldlocallobby2 .. [[

invitedWorld|0]], 3)
    sleep(delayJoinWorld)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. [[

invitedWorld|0]], 3)
    sleep(delayJoinWorld)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
    sleep(delayJoinIDDoor)
    findPath(kordinatX - 1, kordinatY - 1)
    sleep(delayFindPathPosPNB)
    CustomPlant()
  end
  if getBot().world == "EXIT" or getBot().world == "START" or getBot().world == "START1" or getBot().world == "START2" or getBot().world == "START3" or getBot().world == "START4" or getBot().world == "START5" then
    sleep(2000)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. [[

invitedWorld|0]], 3)
    sleep(delayJoinWorld)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
    sleep(delayJoinIDDoor)
    findPath(kordinatX - 1, kordinatY - 1)
    sleep(delayFindPathPosPNB)
    CustomPlant()
  end
  if RestWithUpTimeBot and SecondTT3(os.difftime(os.time(), startT3)) > UpTimeToOffline then
    sleep(2000)
    WebhookkStatus("Bot ||" .. getBot().name .. "|| Rest (Because Bot Up Time " .. UpTimeToOffline .. " And Bot Rest For " .. CooldownTimeREST3 .. ":00 Minutes)")
    sleep(delayWebhook)
    setBool("Auto Reconnect", false)
    sleep(1000)
    startT3 = os.time()
    sleep(1000)
    disconnect()
    sleep(10000)
    RestTimeBotProsesUpTime()
    if getBot().status == "offline" then
      repeat
        sleep(1000)
        connect()
        sleep(20000)
      until getBot().status == "online"
      WebhookkStatus("Bot Finished Rest (Bot Back To Starting)")
      sleep(delayWebhook)
      setBool("Auto Reconnect", true)
      sleep(1000)
      sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. [[

invitedWorld|0]], 3)
      sleep(delayJoinWorld)
      sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
      sleep(delayJoinIDDoor)
      findPath(kordinatX - 1, kordinatY - 1)
      sleep(delayFindPathPosPNB)
      CustomPlant()
    end
  end
  if AutoChatMessageNjoinWorld and SecondTT4(os.difftime(os.time(), startT4)) > UpTimeToOffline4 then
    sleep(2000)
    Webhookk("<:megapon:909757469306261504> | Information : Bot Up Time " .. UpTimeToOffline4 .. [[
, So Bot Will Be Auto Chat Random Message And Join To Random World 
<:huh:976112065775284264> | Bot Name : ]] .. getBot().name .. [[

<:ipv4:1037366002008207480> | Bot Proxy : ]] .. getBot().proxy .. " (" .. getBot().proxyStatus .. [[
) 
<a:online2:1014402261918687282> | Bot Status : Online (]] .. getPing() .. [[
) 
<:guarded:1031906221919309835> | Bot Captcha : ]] .. getBot().captcha .. [[
 
<:wold:909756145202233355> | Current World : ]] .. getBot().world .. " (" .. WorldDone .. "/" .. #FarmList .. [[
) 
<:CPU:994981162588053565> | RDP CPU : $cpu% 
<:RAM:996159529966391377> | RDP Ram : $ram MB 
<:sc:1034751373041999872> | RDP Date : ]] .. os.date("%d") .. " " .. os.date("%B") .. " " .. os.date("%Y") .. [[
  
<:ip:1038500058062143660> | RDP IP : $ip 
<:Timer:1012028563047850065> | Up Time : ]] .. ALLWorldDone .. " World " .. AmountLoop .. " Loop (" .. SecondTT(os.difftime(os.time(), startT)))
    sleep(delayWebhook)
    startT4 = os.time()
    sleep(1000)
    local ChatMessage = ""
    sleep(1000)
    ChatMessage = ChatMessage .. string.char(math.random(97, 122))
    sleep(100)
    ChatMessage = ChatMessage .. string.char(math.random(97, 122))
    sleep(100)
    ChatMessage = ChatMessage .. string.char(math.random(97, 122))
    sleep(100)
    ChatMessage = ChatMessage .. string.char(math.random(97, 122))
    sleep(100)
    ChatMessage = ChatMessage .. string.char(math.random(97, 122))
    sleep(100)
    ChatMessage = ChatMessage .. string.char(math.random(97, 122))
    sleep(100)
    ChatMessage = ChatMessage .. string.char(math.random(97, 122))
    sleep(100)
    ChatMessage = ChatMessage .. string.char(math.random(97, 122))
    sleep(500)
    say("" .. ChatMessage .. "")
    sleep(10000)
    ChatMessage = ""
    sleep(100)
    local totTxt = ""
    sleep(100)
    local totTxt2 = ""
    sleep(100)
    local totTxt3 = ""
    sleep(100)
    totTxt = totTxt .. string.char(math.random(97, 122))
    sleep(100)
    totTxt = totTxt .. string.char(math.random(97, 122))
    sleep(100)
    totTxt = totTxt .. string.char(math.random(97, 122))
    sleep(100)
    totTxt = totTxt .. string.char(math.random(97, 122))
    sleep(100)
    totTxt = totTxt .. string.char(math.random(97, 122))
    sleep(100)
    totTxt = totTxt .. string.char(math.random(97, 122))
    sleep(100)
    totTxt = totTxt .. string.char(math.random(97, 122))
    sleep(100)
    totTxt = totTxt .. string.char(math.random(97, 122))
    sleep(100)
    totTxt = totTxt .. string.char(math.random(97, 122))
    sleep(100)
    totTxt = totTxt .. string.char(math.random(97, 122))
    sleep(100)
    totTxt = totTxt .. string.char(math.random(97, 122))
    sleep(100)
    totTxt = totTxt .. string.char(math.random(97, 122))
    sleep(100)
    totTxt = totTxt .. string.char(math.random(97, 122))
    sleep(100)
    totTxt = totTxt .. string.char(math.random(97, 122))
    sleep(100)
    totTxt = totTxt .. string.char(math.random(97, 122))
    sleep(100)
    totTxt = totTxt .. string.char(math.random(97, 122))
    sleep(100)
    totTxt2 = totTxt2 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt2 = totTxt2 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt2 = totTxt2 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt2 = totTxt2 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt2 = totTxt2 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt2 = totTxt2 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt2 = totTxt2 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt2 = totTxt2 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt2 = totTxt2 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt2 = totTxt2 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt2 = totTxt2 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt2 = totTxt2 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt2 = totTxt2 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt2 = totTxt2 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt3 = totTxt3 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt3 = totTxt3 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt3 = totTxt3 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt3 = totTxt3 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt3 = totTxt3 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt3 = totTxt3 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt3 = totTxt3 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt3 = totTxt3 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt3 = totTxt3 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt3 = totTxt3 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt3 = totTxt3 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt3 = totTxt3 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt3 = totTxt3 .. string.char(math.random(97, 122))
    sleep(100)
    totTxt3 = totTxt3 .. string.char(math.random(97, 122))
    sleep(100)
    sleep(3000)
    sendPacket([[
action|join_request
name|]] .. totTxt .. [[

invitedWorld|0]], 3)
    sleep(delayJoinRandomWorld)
    sendPacket([[
action|join_request
name|]] .. totTxt2 .. [[

invitedWorld|0]], 3)
    sleep(delayJoinRandomWorld)
    sendPacket([[
action|join_request
name|]] .. totTxt3 .. [[

invitedWorld|0]], 3)
    sleep(delayJoinRandomWorld)
    totTxt = ""
    sleep(100)
    totTxt2 = ""
    sleep(100)
    totTxt3 = ""
    sleep(100)
    Webhookk([[
<:megapon:909757469306261504> | Information : Bot Done Auto Chat Random Message And Join To Random World 
<:huh:976112065775284264> | Bot Name : ]] .. getBot().name .. [[

<:ipv4:1037366002008207480> | Bot Proxy : ]] .. getBot().proxy .. " (" .. getBot().proxyStatus .. [[
) 
<a:online2:1014402261918687282> | Bot Status : Online (]] .. getPing() .. [[
) 
<:guarded:1031906221919309835> | Bot Captcha : ]] .. getBot().captcha .. [[
 
<:wold:909756145202233355> | Current World : ]] .. getBot().world .. " (" .. WorldDone .. "/" .. #FarmList .. [[
) 
<:CPU:994981162588053565> | RDP CPU : $cpu% 
<:RAM:996159529966391377> | RDP Ram : $ram MB 
<:sc:1034751373041999872> | RDP Date : ]] .. os.date("%d") .. " " .. os.date("%B") .. " " .. os.date("%Y") .. [[
  
<:ip:1038500058062143660> | RDP IP : $ip 
<:Timer:1012028563047850065> | Up Time : ]] .. ALLWorldDone .. " World " .. AmountLoop .. " Loop (" .. SecondTT(os.difftime(os.time(), startT)))
    sleep(delayWebhook)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. [[

invitedWorld|0]], 3)
    sleep(delayJoinWorld)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
    sleep(delayJoinIDDoor)
    findPath(kordinatX - 1, kordinatY - 1)
    sleep(delayFindPathPosPNB)
    CustomPlant()
  end
  if getTile(math.floor(getBot().x / 32), math.floor(getBot().y / 32)).fg == IDDoorID and SecondTT5(os.difftime(os.time(), startT5)) > BotReRotationWhenStuckIDDoor then
    sleep(2000)
    local worldlocallobby = "EXIT"
    sleep(100)
    startT5 = os.time()
    sleep(1000)
    sendPacket([[
action|join_request
name|]] .. worldlocallobby .. [[

invitedWorld|0]], 3)
    sleep(delayJoinWorld)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. [[

invitedWorld|0]], 3)
    sleep(delayJoinWorld)
    sendPacket([[
action|join_request
name|]] .. CurrentWorldBot .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
    sleep(delayJoinIDDoor)
    findPath(kordinatX - 1, kordinatY - 1)
    sleep(delayFindPathPosPNB)
    CustomPlant()
  end
end
function RestTimeBotProsesUpTime()
  if 15 == CooldownTimeREST3 then
    sleep(900000)
  end
  if 30 == CooldownTimeREST3 then
    sleep(1800000)
  end
  if 60 == CooldownTimeREST3 then
    sleep(3600000)
  end
  if 90 == CooldownTimeREST3 then
    sleep(5400000)
  end
  if 120 == CooldownTimeREST3 then
    sleep(7200000)
  end
  if 10 == CooldownTimeREST3 then
    sleep(600000)
  end
  if 5 == CooldownTimeREST3 then
    sleep(300000)
  end
  if 3 == CooldownTimeREST3 then
    sleep(180000)
  end
end
function RestTimeBotProses()
  if 15 == CooldownTimeREST then
    sleep(900000)
  end
  if 30 == CooldownTimeREST then
    sleep(1800000)
  end
  if 60 == CooldownTimeREST then
    sleep(3600000)
  end
  if 90 == CooldownTimeREST then
    sleep(5400000)
  end
  if 120 == CooldownTimeREST then
    sleep(7200000)
  end
  if 10 == CooldownTimeREST then
    sleep(600000)
  end
  if 5 == CooldownTimeREST then
    sleep(300000)
  end
  if 3 == CooldownTimeREST then
    sleep(180000)
  end
end
function RestTimeBotProsesUTC()
  if 15 == CooldownTimeREST2 then
    sleep(900000)
  end
  if 30 == CooldownTimeREST2 then
    sleep(1800000)
  end
  if 60 == CooldownTimeREST2 then
    sleep(3600000)
  end
  if 90 == CooldownTimeREST2 then
    sleep(5400000)
  end
  if 120 == CooldownTimeREST2 then
    sleep(7200000)
  end
  if 10 == CooldownTimeREST2 then
    sleep(600000)
  end
  if 5 == CooldownTimeREST2 then
    sleep(300000)
  end
  if 3 == CooldownTimeREST2 then
    sleep(180000)
  end
end
function RestWithRealTime()
  if RestWithTimeUTC then
    for _, v in pairs(startOffline) do
      if os.date("!*t", os.time() + timeDifferenceUTC * 60 * 60).hour == startOffline[StatusRest] then
        local savworldbotu = getBot().world
        sleep(1000)
        Webhookk("<:megapon:909757469306261504> | Information : Time UTC+" .. timeDifferenceUTC .. " Is " .. os.date("!*t", os.time() + timeDifferenceUTC * 60 * 60).hour .. ":00 (Bot Rest For " .. CooldownTimeREST2 .. [[
 Minutes) 
<:huh:976112065775284264> | Bot Name : ]] .. getBot().name .. [[
 
<:ipv4:1037366002008207480> | Bot Proxy : ]] .. getBot().proxy .. " (" .. getBot().proxyStatus .. [[
) 
<a:offline2:1007062612799913984> | Bot Status : Offline (]] .. getPing() .. [[
) 
<:guarded:1031906221919309835> | Bot Captcha : ]] .. getBot().captcha .. [[
 
<:CPU:994981162588053565> | RDP CPU : $cpu% 
<:RAM:996159529966391377> | RDP Ram : $ram MB 
<:sc:1034751373041999872> | RDP Date : ]] .. os.date("%d") .. " " .. os.date("%B") .. " " .. os.date("%Y") .. [[
  
<:ip:1038500058062143660> | RDP IP : $ip 
<:Timer:1012028563047850065> | Up Time : ]] .. ALLWorldDone .. " World " .. AmountLoop .. " Loop (" .. SecondTT(os.difftime(os.time(), startT)))
        sleep(delayWebhook)
        setBool("Auto Reconnect", false)
        sleep(1000)
        disconnect()
        sleep(10000)
        RestTimeBotProsesUTC()
        if getBot().status == "offline" then
          repeat
            sleep(1000)
            connect()
            sleep(20000)
          until getBot().status == "online"
          Webhookk([[
<:megapon:909757469306261504> | Information : Bot Finished Rest (Bot Back To Starting) 
<:huh:976112065775284264> | Bot Name : ]] .. getBot().name .. [[

<:ipv4:1037366002008207480> | Bot Proxy : ]] .. getBot().proxy .. " (" .. getBot().proxyStatus .. [[
) 
<a:online2:1014402261918687282> | Bot Status : Online (]] .. getPing() .. [[
) 
<:guarded:1031906221919309835> | Bot Captcha : ]] .. getBot().captcha .. [[
 
<:wold:909756145202233355> | Current World : ]] .. getBot().world .. " (" .. WorldDone .. "/" .. #FarmList .. [[
) 
<:CPU:994981162588053565> | RDP CPU : $cpu% 
<:RAM:996159529966391377> | RDP Ram : $ram MB 
<:sc:1034751373041999872> | RDP Date : ]] .. os.date("%d") .. " " .. os.date("%B") .. " " .. os.date("%Y") .. [[
  
<:ip:1038500058062143660> | RDP IP : $ip 
<:Timer:1012028563047850065> | Up Time : ]] .. ALLWorldDone .. " World " .. AmountLoop .. " Loop (" .. SecondTT(os.difftime(os.time(), startT)))
          sleep(delayWebhook)
          setBool("Auto Reconnect", true)
          sleep(1000)
          StatusRest = StatusRest + 1
          sleep(1000)
          sendPacket([[
action|join_request
name|]] .. savworldbotu .. [[

invitedWorld|0]], 3)
          sleep(delayJoinWorld)
          sendPacket([[
action|join_request
name|]] .. savworldbotu .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
          sleep(delayJoinIDDoor)
          CheckStatusRest()
          RekonekStatus()
          CustomPlant()
        end
      end
    end
  end
end
function CheckStatusRest()
  if StatusRest > #startOffline then
    StatusRest = 1
  end
end
function SystemCounterfea()
  if RestTimeBotFeature and WorldDone == CustomFinishedFarm then
    local WDBotLoh = getBot().world
    Webhookk("<:megapon:909757469306261504> | Information : Bot Rest For " .. CooldownTimeREST .. " Minutes, Because " .. WorldDone .. [[
 Are Finished 
<:huh:976112065775284264> | Bot Name : ]] .. getBot().name .. [[
 
<:ipv4:1037366002008207480> | Bot Proxy : ]] .. getBot().proxy .. " (" .. getBot().proxyStatus .. [[
) 
<a:offline2:1007062612799913984> | Bot Status : Offline (]] .. getPing() .. [[
) 
<:guarded:1031906221919309835> | Bot Captcha : ]] .. getBot().captcha .. [[
 
<:CPU:994981162588053565> | RDP CPU : $cpu% 
<:RAM:996159529966391377> | RDP Ram : $ram MB 
<:sc:1034751373041999872> | RDP Date : ]] .. os.date("%d") .. " " .. os.date("%B") .. " " .. os.date("%Y") .. [[
  
<:ip:1038500058062143660> | RDP IP : $ip 
<:Timer:1012028563047850065> | Up Time : ]] .. ALLWorldDone .. " World " .. AmountLoop .. " Loop (" .. SecondTT(os.difftime(os.time(), startT)))
    sleep(delayWebhook)
    local Savenamegrowid = getBot().name
    setBool("Auto Reconnect", false)
    sleep(3000)
    disconnect()
    sleep(3500)
    RestTimeBotProses()
    sleep(3500)
    if getBot().status == "offline" then
      repeat
        sleep(1000)
        connect()
        sleep(20000)
      until getBot().status == "online"
      setBool("Auto Reconnect", true)
      sleep(3500)
      sendPacket([[
action|join_request
name|]] .. WDBotLoh .. [[

invitedWorld|0]], 3)
      sleep(delayJoinWorld)
      sendPacket([[
action|join_request
name|]] .. WDBotLoh .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
      sleep(delayJoinIDDoor)
      CustomFinishedFarm = CustomFinishedFarm + WorldDone
      CustomPlant()
    end
  end
end
function puncc()
  for i = 4, 1, -1 do
    punch(1, 0)
    sleep(200)
  end
end
function sekiptutorpick()
  sleep(2000)
  sendPacket("ftue_start_popup_close", 2)
  sleep(3000)
  move(5, 0)
  sleep(1000)
  move(5, 0)
  sleep(1000)
  move(7, -3)
  sleep(1000)
  enter()
  sleep(3000)
  move(2, 0)
  sleep(1000)
  move(5, 0)
  sleep(1000)
  puncc()
  place(2, 1, 0)
  sleep(1000)
  puncc()
  collectSet(true, 2)
  sleep(1000)
  place(3, 1, 0)
  sleep(1000)
  place(10672, 1, 0)
  sleep(1000)
  punch(1, 0)
  sleep(2000)
  wear(48)
  sleep(1000)
  collectSet(false, 2)
  sleep(1000)
  sendPacket("action|quit_to_exit", 3)
  sleep(1000)
  totTxt = ""
  for i = 19, 1, -1 do
    totTxt = totTxt .. string.char(math.random(97, 122))
  end
  sendPacket([[
action|join_request
name|]] .. totTxt .. [[

invitedWorld|0]], 3)
  sleep(delayJoinWorld)
  place(9640, 0, -1)
  sleep(5000)
end
function dropp()
  itemid = 98
  icount = findItem(itemid)
  sendPacket([[
action|drop
|itemID|]] .. itemid, 2)
  sendPacket([[
action|dialog_return
dialog_name|drop_item
itemID|]] .. itemid .. [[
|
count|]] .. icount - 1, 2)
end
function TakingTree()
  collectSet(false)
  sleep(100)
  local CurrentWworld = getBot().world
  sleep(100)
  if 0 == findItem(Seed_ID) then
    sleep(2000)
    sendPacket([[
action|join_request
name|]] .. Seed_Save_World .. [[

invitedWorld|0]], 3)
    sleep(delayJoinWorld)
    sendPacket([[
action|join_request
name|]] .. Seed_Save_World .. "|" .. Seed_Save_World_IDDoor .. [[

invitedWorld|0]], 3)
    sleep(delayJoinIDDoor)
    for _, obj in pairs(getObjects()) do
      if obj.id == Seed_ID and 0 == findItem(Seed_ID) then
        repeat
          local x = math.floor((obj.x + 10) / 32)
          local y = math.floor((obj.y + 10) / 32)
          findPath(x, y)
          sleep(2000)
          collect(1)
          sleep(500)
        until findItem(Seed_ID) >= 1
      end
      if findItem(Seed_ID) >= 1 then
        sleep(3500)
        sendPacket([[
action|join_request
name|]] .. CurrentWworld .. [[

invitedWorld|0]], 3)
        sleep(delayJoinWorld)
        sendPacket([[
action|join_request
name|]] .. CurrentWworld .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
        sleep(delayJoinIDDoor)
        RekonekStatusPlant()
        BuyingPackPlant()
        FinishedFarmPlanting()
      elseif 0 == findItem(Seed_ID) then
        sleep(2000)
      end
    end
  end
end
function TakePickaxe()
  if AutoTakePickaxe then
    local StatusTake = false
    if 0 == findItem(98) then
      CurrentWorldBotts = getBot().world
      sleep(3500)
      sendPacket([[
action|join_request
name|]] .. SaveWorldPickaxe .. [[

invitedWorld|0]], 3)
      sleep(delayJoinWorld)
      sendPacket([[
action|join_request
name|]] .. SaveWorldPickaxe .. "|" .. SaveWorldPickaxeIDDOOR .. [[

invitedWorld|0]], 3)
      sleep(delayJoinIDDoor)
      for _, obj in pairs(getObjects()) do
        if 98 == obj.id and 0 == findItem(98) then
          repeat
            local x = math.floor((obj.x + 10) / 32)
            local y = math.floor((obj.y + 10) / 32)
            findPath(x, y)
            sleep(2000)
            collect(1)
            sleep(500)
          until findItem(98) >= 1
          sleep(1000)
          wear(98)
          sleep(1500)
          move(-1, 0)
          sleep(2000)
          dropp()
          sleep(3500)
          StatusTake = true
        end
        if StatusTake and 1 == findItem(98) then
          sleep(3500)
          sendPacket([[
action|join_request
name|]] .. CurrentWorldBotts .. [[

invitedWorld|0]], 3)
          sleep(delayJoinWorld)
          sendPacket([[
action|join_request
name|]] .. CurrentWorldBotts .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
          sleep(delayJoinIDDoor)
        end
      end
    end
  end
end
function TakePickaxeNilAmount()
  if AutoTakePickaxe and getBot().status == "online" and 0 == findItem(98) then
    Webhookk([[
<:megapon:909757469306261504> | Information : Bot Can't Taking Pickaxe Because 0 Pickaxe Amount Then Bot Removed & Script Stopped 
<:huh:976112065775284264> | Bot Name : ]] .. getBot().name .. [[
 
<:ipv4:1037366002008207480> | Bot Proxy : ]] .. getBot().proxy .. " (" .. getBot().proxyStatus .. [[
) 
<a:online2:1014402261918687282> | Bot Status : Online (]] .. getPing() .. [[
) 
<:redgems:1051473166087749682> | Bot Gems : ]] .. findItem(112) .. [[
 
<:wrench:985492363751342190> | Bot Level : ]] .. getBot().level .. [[
 
<:checklist:1066936985563971584> | Bot Slots : ]] .. getBot().slots .. [[
 
<:wold:909756145202233355> | Current World : ]] .. getBot().world .. [[
 
<:guarded:1031906221919309835> | Bot Captcha : ]] .. getBot().captcha .. [[
 
<:CPU:994981162588053565> | RDP CPU : $cpu% 
<:RAM:996159529966391377> | RDP Ram : $ram MB 
<:sc:1034751373041999872> | RDP Date : ]] .. os.date("%d") .. " " .. os.date("%B") .. " " .. os.date("%Y") .. [[
 
<:ip:1038500058062143660> | RDP IP : $ip 
<:Timer:1012028563047850065> | Up Time : ]] .. ALLWorldDone .. " World " .. AmountLoop .. " Loop (" .. SecondTT(os.difftime(os.time(), startT)))
    sleep(delayWebhook)
    removeBot(getBot().name)
    sleep(3500)
    error()
  end
end
function LoginFailBot()
  if getBot().status == "offline" then
    sleep(300000)
  end
  if getBot().status == "login fail" then
    for _, v in pairs(BotAccountConfig) do
      repeat
        removeBot(getBot().name)
        sleep(5000)
        addBot(v.username, v.password, v.proxy)
        sleep(20000)
      until getBot().status == "online" or getBot().status == "suspended" or getBot().status == "banned" or getBot().status == "temporary ban"
    end
  end
end
function TryingOutRotation()
  if not BotAccount then
    sekiptutorpick()
    sleep(1000)
    sendPacket([[
action|join_request
name|]] .. WorldDetecting .. [[

invitedWorld|0]], 3)
    sleep(delayJoinWorld)
    LockOwner()
    TakePickaxe()
    TakePickaxeNilAmount()
    sleep(100)
    collectSet(false, 3)
    sleep(100)
  elseif BotAccount then
    sleep(500)
    sendPacket([[
action|join_request
name|]] .. WorldDetecting .. [[

invitedWorld|0]], 3)
    sleep(delayJoinWorld)
    LockOwner()
    TakePickaxe()
    TakePickaxeNilAmount()
    sleep(100)
    collectSet(false, 3)
    sleep(100)
  end
  if (getBot().world == "EXIT" or getBot().world ~= FarmList[1]) and getBot().status == "online" then
    sendPacket([[
action|join_request
name|]] .. FarmList[1] .. [[

invitedWorld|0]], 3)
    sleep(delayJoinWorld)
  end
  if findItem(Seed_ID) >= 1 then
    DroppingSeedsFirst()
  end
  if findItem(112) > minimal_gems then
    BuyingPackBUY()
  end
  for _, listitem in pairs(Pack_Item_ID) do
    if findItem(listitem) >= 1 then
      BuyingPackFirst()
    end
  end
  if getBot().status == "online" then
    repeat
      for _, list in pairs(FarmList) do
        join(list)
        CurrentWorldBot = getBot().world
        sleep(100)
        RekonekStatus()
        sleep(100)
        CheckReadyWebhook()
        sleep(100)
        CustomPlant()
        sleep(100)
        StartHarvesting()
        sleep(100)
        CustomPlant()
        sleep(100)
        CheckTileHarvestReady()
        sleep(100)
        CheckTilePlantReady()
        sleep(100)
      end
    until Loop == false
    Webhookk([[
<:megapon:909757469306261504> | Information : Removed Bot Because All Farm Are Done (Loop = false) 
<:huh:976112065775284264> | Bot Name : ]] .. getBot().name .. [[
 
<:ipv4:1037366002008207480> | Bot Proxy : ]] .. getBot().proxy .. " (" .. getBot().proxyStatus .. [[
) 
<:guarded:1031906221919309835> | Bot Captcha : ]] .. getBot().captcha .. [[
  
<a:offline2:1007062612799913984> | Bot Status : Offline (]] .. getPing() .. [[
) 
<:CPU:994981162588053565> | RDP CPU : $cpu% 
<:RAM:996159529966391377> | RDP Ram : $ram MB 
<:sc:1034751373041999872> | RDP Date : ]] .. os.date("%d") .. " " .. os.date("%B") .. " " .. os.date("%Y") .. [[
  
<:ip:1038500058062143660> | RDP IP : $ip 
<:Timer:1012028563047850065> | Up Time : ]] .. ALLWorldDone .. " World " .. AmountLoop .. " Loop (" .. SecondTT(os.difftime(os.time(), startT)))
    sleep(delayWebhook)
    removeBot(getBot().name)
    sleep(3500)
    error()
  end
end
function CheckTilePlantReady()
  if AutoPlantFarmNotFull and scannoReady(Seed_ID) < 2645 then
    RekonekStatusPlant()
    FinishedFarmPlanting()
  end
end
function CheckSeedWhenHT()
  if findItem(Seed_ID) >= 1 then
    RekonekStatus()
    DroppingSeedsFinish()
  end
end
function CheckTileHarvestReady()
  if scanReady(Seed_ID) >= 1 then
    RekonekStatus()
    CheckSeedWhenHT()
    StartHarvesting()
  end
end
function CustomPlant()
  if CustomDontPlant then
    AllTheFunctionsDontPlant()
  end
  if not CustomDontPlant then
    AllTheFunctionsPlant()
  end
end
function AllTheFunctionsDontPlant()
  RekonekStatus()
  RestWithRealTime()
  StartTrashing()
  CurrentWorldBot = getBot().world
  sleep(200)
  if 0 == findItem(Block_ID) and 0 == findItem(Seed_ID) then
    RekonekStatus()
    SystemCounterfea()
    RestWithRealTime()
    StartHarvesting()
  end
  if findItem(Block_ID) > 0 and 0 == findItem(Seed_ID) then
    RekonekStatus()
    SystemCounterfea()
    RestWithRealTime()
    CheckingTileBreak()
  end
  if findItem(Block_ID) > 0 and findItem(Seed_ID) > 0 then
    RekonekStatus()
    SystemCounterfea()
    RestWithRealTime()
    CheckingTileBreak()
  end
  if findItem(Seed_ID) > 0 and 0 == findItem(Block_ID) then
    RekonekStatus()
    SystemCounterfea()
    RestWithRealTime()
    StartHarvesting()
  end
end
function AllTheFunctionsPlant()
  RekonekStatus()
  RestWithRealTime()
  StartTrashing()
  CurrentWorldBot = getBot().world
  sleep(200)
  if 0 == findItem(Block_ID) and 0 == findItem(Seed_ID) then
    RekonekStatus()
    SystemCounterfea()
    RestWithRealTime()
    StartHarvesting()
  end
  if findItem(Block_ID) > 0 and 0 == findItem(Seed_ID) then
    RekonekStatus()
    SystemCounterfea()
    RestWithRealTime()
    CheckingTileBreak()
  end
  if findItem(Seed_ID) > 0 and 0 == findItem(Block_ID) then
    RekonekStatus()
    SystemCounterfea()
    RestWithRealTime()
    StartPlanting()
  end
  if findItem(Seed_ID) > 0 and findItem(Block_ID) > 0 then
    RekonekStatus()
    SystemCounterfea()
    RestWithRealTime()
    StartPlanting()
  end
end
function CheckReadyWebhook()
  for _, tile in pairs(getTiles()) do
    if tile.fg == Seed_ID and getTile(tile.x, tile.y).ready then
      sleep(500)
      Webhookk("<:megapon:909757469306261504> | Information : " .. scanReady(Seed_ID) .. [[
 Ready To Harvest (Bot Starting Harvest - Plant - PNB) 
<:huh:976112065775284264> | Bot Name : ]] .. getBot().name .. [[
 
<:ipv4:1037366002008207480> | Bot Proxy : ]] .. getBot().proxy .. " (" .. getBot().proxyStatus .. [[
) 
<a:online2:1014402261918687282> | Bot Status : Online (]] .. getPing() .. [[
) 
<:redgems:1051473166087749682> | Bot Gems : ]] .. findItem(112) .. [[
 
<:wrench:985492363751342190> | Bot Level : ]] .. getBot().level .. [[
 
<:checklist:1066936985563971584> | Bot Slots : ]] .. getBot().slots .. [[
 
<:wold:909756145202233355> | Current World : ]] .. getBot().world .. " (" .. WorldDone .. "/" .. #FarmList .. [[
) 
<:guarded:1031906221919309835> | Bot Captcha : ]] .. getBot().captcha .. [[
 
<:READY:1057333124377350244> | Tree Ready : ]] .. scanReady(Seed_ID) .. [[
 
<:READY:1057333124377350244> | Tree UnReady : ]] .. scannoReady(Seed_ID) .. [[
 
<:posil:989484591029026867> | Fossil : ]] .. fossil(3918) .. [[
 
<:CPU:994981162588053565> | RDP CPU : $cpu% 
<:RAM:996159529966391377> | RDP Ram : $ram MB 
<:sc:1034751373041999872> | RDP Date : ]] .. os.date("%d") .. " " .. os.date("%B") .. " " .. os.date("%Y") .. [[
  
<:ip:1038500058062143660> | RDP IP : $ip 
<:Timer:1012028563047850065> | Up Time : ]] .. ALLWorldDone .. " World " .. AmountLoop .. " Loop (" .. SecondTT(os.difftime(os.time(), startT)))
      sleep(delayWebhook)
      break
    end
  end
end
function join(world)
  for _, tile in pairs(getTiles()) do
    if tile.fg == Seed_ID then
      if getTile(tile.x, tile.y).ready then
        FarmFinishedFirst()
        ResetWorldDone()
        sleep(2000)
        sendPacket([[
action|join_request
name|]] .. string.upper(world) .. [[

invitedWorld|0]], 3)
        sleep(delayJoinWorldFirst)
        sendPacket([[
action|join_request
name|]] .. string.upper(world) .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
        sleep(delayJoinWorldFirst)
        break
      end
      if getTile(tile.x, tile.y) ~= getTile(tile.x, tile.y).ready then
        FarmFinishedFirst()
        ResetWorldDone()
        sleep(2000)
        Webhookk("<:megapon:909757469306261504> | Information : " .. scanReady(Seed_ID) .. " Ready To Harvest (Bot Move To ||" .. string.upper(world) .. [[
||) 
<:huh:976112065775284264> | Bot Name : ||]] .. getBot().name .. [[
|| 
<:ipv4:1037366002008207480> | Bot Proxy : ]] .. getBot().proxy .. " (" .. getBot().proxyStatus .. [[
) 
<a:online2:1014402261918687282> | Bot Status : Online (]] .. getPing() .. [[
) 
<:redgems:1051473166087749682> | Bot Gems : ]] .. findItem(112) .. [[
 
<:wrench:985492363751342190> | Bot Level : ]] .. getBot().level .. [[
 
<:checklist:1066936985563971584> | Bot Slots : ]] .. getBot().slots .. [[
 
<:wold:909756145202233355> | Current World : ||]] .. getBot().world .. "|| (" .. WorldDone .. "/" .. #FarmList .. [[
) 
<:guarded:1031906221919309835> | Bot Captcha : ]] .. getBot().captcha .. [[
 
<:READY:1057333124377350244> | Tree Ready : ]] .. scanReady(Seed_ID) .. [[
 
<:READY:1057333124377350244> | Tree UnReady : ]] .. scannoReady(Seed_ID) .. [[
 
<:posil:989484591029026867> | Fossil : ]] .. fossil(3918) .. [[
 
<:CPU:994981162588053565> | RDP CPU : $cpu% 
<:RAM:996159529966391377> | RDP Ram : $ram MB 
<:sc:1034751373041999872> | RDP Date : ]] .. os.date("%d") .. " " .. os.date("%B") .. " " .. os.date("%Y") .. [[
 
<:ip:1038500058062143660> | RDP IP : ||$ip||  
<:Timer:1012028563047850065> | Up Time : ]] .. ALLWorldDone .. " World " .. AmountLoop .. " Loop (" .. SecondTT(os.difftime(os.time(), startT)))
        sleep(delayWebhook)
        sendPacket([[
action|join_request
name|]] .. string.upper(world) .. [[

invitedWorld|0]], 3)
        sleep(delayJoinWorldFirst)
        sendPacket([[
action|join_request
name|]] .. string.upper(world) .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
        sleep(delayJoinWorldFirst)
        break
      end
    end
  end
end
function FarmFinishedFirst()
  if 0 == scanReady(Seed_ID) then
    ALLWorldDone = ALLWorldDone + 1
    sleep(100)
    WorldDone = WorldDone + 1
    sleep(100)
  end
end
function ResetWorldDone()
  if WorldDone > #FarmList then
    WorldDone = 1
    sleep(100)
    AmountLoop = AmountLoop + 1
    sleep(100)
  end
end
function gabung1(world)
  sleep(2000)
  sendPacket([[
action|join_request
name|]] .. string.upper(world) .. [[

invitedWorld|0]], 3)
  sleep(delayJoinWorld)
  Webhookk("<:megapon:909757469306261504> | Information : " .. scanReady(Seed_ID) .. " Ready To Harvest (" .. string.upper(world) .. [[
)
<:huh:976112065775284264> | Bot Name : ]] .. getBot().name .. [[
 
<:ipv4:1037366002008207480> | Bot Proxy : ]] .. getBot().proxy .. " (" .. getBot().proxyStatus .. [[
) 
<a:online2:1014402261918687282> | Bot Status : Online (]] .. getPing() .. [[
) 
<:redgems:1051473166087749682> | Bot Gems : ]] .. findItem(112) .. [[
 
<:wrench:985492363751342190> | Bot Level : ]] .. getBot().level .. [[
 
<:checklist:1066936985563971584> | Bot Slots : ]] .. getBot().slots .. [[
 
<:wold:909756145202233355> | Current World : ]] .. getBot().world .. " (" .. WorldDone .. "/" .. #FarmList .. [[
) 
<:guarded:1031906221919309835> | Bot Captcha : ]] .. getBot().captcha .. [[
 
<:READY:1057333124377350244> | Tree Ready : ]] .. scanReady(Seed_ID) .. [[
 
<:READY:1057333124377350244> | Tree UnReady : ]] .. scannoReady(Seed_ID) .. [[
 
<:posil:989484591029026867> | Fossil : ]] .. fossil(3918) .. [[
 
<:CPU:994981162588053565> | RDP CPU : $cpu% 
<:RAM:996159529966391377> | RDP Ram : $ram MB 
<:sc:1034751373041999872> | RDP Date : ]] .. os.date("%d") .. " " .. os.date("%B") .. " " .. os.date("%Y") .. [[
  
<:ip:1038500058062143660> | RDP IP : $ip 
<:Timer:1012028563047850065> | Up Time : ]] .. ALLWorldDone .. " World " .. AmountLoop .. " Loop (" .. SecondTT(os.difftime(os.time(), startT)))
  sleep(delayWebhook)
end
function gabung(world)
  sleep(2000)
  sendPacket([[
action|join_request
name|]] .. string.upper(world) .. [[

invitedWorld|0]], 3)
  sleep(delayJoinWorld)
  sendPacket([[
action|join_request
name|]] .. string.upper(world) .. "|" .. FarmListDoorID .. [[

invitedWorld|0]], 3)
  sleep(delayJoinIDDoor)
  Webhookk("<:megapon:909757469306261504> | Information : " .. scanReady(Seed_ID) .. " Ready To Harvest (" .. string.upper(world) .. [[
)
<:huh:976112065775284264> | Bot Name : ]] .. getBot().name .. [[
 
<:ipv4:1037366002008207480> | Bot Proxy : ]] .. getBot().proxy .. " (" .. getBot().proxyStatus .. [[
) 
<a:online2:1014402261918687282> | Bot Status : Online (]] .. getPing() .. [[
) 
<:redgems:1051473166087749682> | Bot Gems : ]] .. findItem(112) .. [[
 
<:wrench:985492363751342190> | Bot Level : ]] .. getBot().level .. [[
 
<:checklist:1066936985563971584> | Bot Slots : ]] .. getBot().slots .. [[
 
<:wold:909756145202233355> | Current World : ]] .. getBot().world .. " (" .. WorldDone .. "/" .. #FarmList .. [[
) 
<:guarded:1031906221919309835> | Bot Captcha : ]] .. getBot().captcha .. [[
 
<:READY:1057333124377350244> | Tree Ready : ]] .. scanReady(Seed_ID) .. [[
 
<:READY:1057333124377350244> | Tree UnReady : ]] .. scannoReady(Seed_ID) .. [[
 
<:posil:989484591029026867> | Fossil : ]] .. fossil(3918) .. [[
 
<:CPU:994981162588053565> | RDP CPU : $cpu% 
<:RAM:996159529966391377> | RDP Ram : $ram MB 
<:sc:1034751373041999872> | RDP Date : ]] .. os.date("%d") .. " " .. os.date("%B") .. " " .. os.date("%Y") .. [[
  
<:ip:1038500058062143660> | RDP IP : $ip 
<:Timer:1012028563047850065> | Up Time : ]] .. ALLWorldDone .. " World " .. AmountLoop .. " Loop (" .. SecondTT(os.difftime(os.time(), startT)))
  sleep(delayWebhook)
end
while true do
  if getBot().status == "online" then
    TryingOutRotation()
  else
  end
end
