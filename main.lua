--D Background for battle
local battleBG = display.newImageRect( "Assets/BattleBG.png", 1280, 720 )
battleBG.x = display.contentCenterX
battleBG.y = display.contentCenterY

 


--D player characters 
local player1 = {name = "Player", hp = 100, mp = 50, atk = 10, def = 5, spd = 8, 
  Img = display.newImageRect("Assets/Player1.png", 100, 175), mdl = display.newImageRect("Assets/Player1.png", 75, 75 )}
player1.Img.x = display.screenOriginX + (player1.Img.width / 2)
player1.Img.y = display.screenOriginY + (player1.Img.height / 2)
player1.mdl.x = display.contentCenterX - 250
player1.mdl.y = display.contentCenterY - 50
player1HpText = display.newText( {
    text = player1.hp,
    x = player1.Img.x + 100,
    y = player1.Img.y,
    font = native.systemFontBold,
    fontSize = 24,
    align = "center",
    color = {1,1,1},
    strokeWidth = 3,
    strokeColor = {0,0,0}
        } )


local player2 = {name = "Player 2", hp = 75, mp = 25, atk = 8, def = 3, spd = 6, 
  Img = display.newImageRect("Assets/Player2.png", 100, 175), mdl = display.newImageRect("Assets/Player2.png", 75, 75 ) }
player2.Img.x = player1.Img.x
player2.Img.y = player1.Img.y + player2.Img.height + 25
player2.mdl.x = player1.mdl.x
player2.mdl.y = player1.mdl.y + 100
player2HpText = display.newText( {
    text = player2.hp,
    x = player2.Img.x + 100,
    y = player2.Img.y,
    font = native.systemFontBold,
    fontSize = 24,
    align = "center",
    color = {1,1,1},
    strokeWidth = 3,
    strokeColor = {0,0,0}
        } )


local player3 = {name = "Player 3", hp = 54, mp = 72, atk = 6, def = 2, spd = 5, 
  Img = display.newImageRect("Assets/Player3.png", 100, 175), mdl = display.newImageRect("Assets/Player3.png", 75, 75 )}
player3.Img.x = player1.Img.x
player3.Img.y = player2.Img.y + player2.Img.height + 25
player3.mdl.x = player1.mdl.x 
player3.mdl.y = player2.mdl.y + 100
player3HpText = display.newText( {
    text = player3.hp,
    x = player3.Img.x + 100,
    y = player3.Img.y,
    font = native.systemFontBold,
    fontSize = 24,
    align = "center",
    color = {1,1,1},
    strokeWidth = 3,
    strokeColor = {0,0,0}
        } )


--D enemy characters

local enemy1 = {name = "Enemy 1", hp = 80, mp = 20, atk = 8, def = 4, spd = 2, 
  Img = display.newImageRect("Assets/Enemy1.png", 100, 175), mdl = display.newImageRect("Assets/Enemy1.png", 75, 75 )}
enemy1.Img.x = display.contentWidth - (enemy1.Img.width / 2)
enemy1.Img.y = player1.Img.y 
enemy1.mdl.x = display.contentCenterX + 250
enemy1.mdl.y = player1.mdl.y
enemy1HpText = display.newText( {
    text = enemy1.hp,
    x = enemy1.Img.x - 100,
    y = enemy1.Img.y,
    font = native.systemFontBold,
    fontSize = 24,
    align = "center",
    color = {1,1,1},
    strokeWidth = 3,
    strokeColor = {0,0,0}
        } )

 
local enemy2 = {name = "Enemy 2", hp = 70, mp = 15, atk = 9, def = 5, spd = 4, 
  Img = display.newImageRect("Assets/Enemy2.png", 100, 175), mdl = display.newImageRect("Assets/Enemy2.png", 75, 75 )}
enemy2.Img.x = enemy1.Img.x
enemy2.Img.y = player2.Img.y 
enemy2.mdl.x = enemy1.mdl.x 
enemy2.mdl.y = player2.mdl.y 
enemy2HpText = display.newText( {
    text = enemy2.hp,
    x = enemy2.Img.x - 100,
    y = enemy2.Img.y,
    font = native.systemFontBold,
    fontSize = 24,
    align = "center",
    color = {1,1,1},
    strokeWidth = 3,
    strokeColor = {0,0,0}
        } )


local enemy3 = {name = "Enemy 3", hp = 76, mp = 40, atk = 8, def = 3, spd = 3, 
  Img = display.newImageRect("Assets/Enemy3.png", 100, 175), mdl = display.newImageRect("Assets/Enemy3.png", 75, 75 )}
enemy3.Img.x = enemy1.Img.x
enemy3.Img.y = player3.Img.y
enemy3.mdl.x = enemy1.mdl.x 
enemy3.mdl.y = player3.mdl.y 
enemy3HpText = display.newText( {
    text = enemy3.hp,
    x = enemy3.Img.x - 100,
    y = enemy3.Img.y,
    font = native.systemFontBold,
    fontSize = 24,
    align = "center",
    color = {1,1,1},
    strokeWidth = 3,
    strokeColor = {0,0,0}
        } )

function updateHp()
  player1HpText.text = player1.hp
  player2HpText.text = player2.hp
  player3HpText.text = player3.hp
  enemy1HpText.text = enemy1.hp
  enemy2HpText.text = enemy2.hp 
  enemy3HpText.text = enemy3.hp 
end
Runtime:addEventListener( "enterFrame", updateHp )



--D Battle hud buttons for "Attack, Ability, Item, and Flee"
local attackBtn = display.newImageRect("Assets/Attack.png", 150, 75)
attackBtn.x = display.screenOriginX + (attackBtn.width)
attackBtn.y = display.contentHeight - (attackBtn.height)
attackBtn.alpha = 0.5 

local abilityBtn = display.newImageRect( "Assets/Ability.png", 150, 75 )
abilityBtn.x = attackBtn.x * 2
abilityBtn.y = attackBtn.y 
abilityBtn.alpha= 0.5

local itemBtn = display.newImageRect("Assets/Item.png", 150, 75)
itemBtn.x = attackBtn.x * 3
itemBtn.y = attackBtn.y 
itemBtn.alpha = 0.5

local fleeBtn = display.newImageRect("Assets/Flee.png", 150, 75)
fleeBtn.x = attackBtn.x * 6
fleeBtn.y = attackBtn.y
fleeBtn.alpha = 0.5

local battleHud = {attackBtn,abilityBtn,itemBtn,fleeBtn}




--D This piece of code makes the buttons at the bottom of the battle screen light up when hovered over.
--D Really pround of this one took a while to make work but is fairly modular.

-- Define a function to be called when an object is hovered over

local function onHover(object)
  object.alpha = 1
end
-- Add an "enterFrame" event listener to continuously check if the mouse is over any of the objects
Runtime:addEventListener("mouse", function(event) 
  for i, object in ipairs(battleHud) do
    local beingHovered = false
    if event.x >= object.contentBounds.xMin and event.x <= object.contentBounds.xMax and event.y >= object.contentBounds.yMin and event.y <= object.contentBounds.yMax then
      beingHovered = true
    end
    
    if beingHovered then
      onHover(object) -- Call onHover function if the current object is being hovered over
    else
      object.alpha = 0.5 -- Reset alpha if the current object is not being hovered over
    end
  end
end)


--D battle loop code, still in the works, comment all following code if program wont work.
--
--
--
--
-- Initialize turn order
local turnOrder = {player1, player2, player3, enemy1, enemy2, enemy3}
--D Sort the table in descending order based on spd 
table.sort(turnOrder, function(a,b) return a.spd > b.spd end)




-- Function to calculate damage
local function calculateDamage(attacker, defender)
    transition.to(attacker.mdl, {time=500, x=defender.mdl.x - 50, y=defender.mdl.y})
    transition.to(attacker.mdl, {time=500, x=attacker.mdl.x, y=attacker.mdl.y, delay=1000})
  local damage = attacker.atk - defender.def
  if damage < 0 then
    damage = 0
  end
  defender.hp = defender.hp - damage
  return damage  
end




--D Need to work on this part, want the indivdual character actions to be stored elsewhere
--D also need to change the number based input system, to something where there are multiple 
--D options that the player can select and confirm with directional inputs and a universal confirm input.

--D Initialize table that holds the possible targets to attack. One for allied players and one for enemies.
--D This table should be updated based on what characters are in the players party.
local alliesTrg = {player1, player2, player3}
--D Not sure how but this table is going to have to be based off whatever encounter the player has, I have a few ideas just not
--D sure how yet. The final build of this will most likly have this table be left empty and then populated once the encounter starts.

local enemyTrg = {enemy1, enemy2, enemy3}

--D Going to have to rewrite a lot of the stuff below based on the changes made above. Need to
--D figure out how to make the target based on player choice or random/priority for the enemy.
--D Above tables might have to be made global and the target re-code will be implented along with the change 
--D in input system.
-- Main battle loop


local function selectAction(event)
  if event.phase == "ended" then 
    if attackBtn.alpha == 1 then 
      local damage = calculateDamage(player1, enemy1)
      enemy1.hp = enemy1.hp - damage
      


      
      

    elseif abilityBtn.alpha == 1 then 
      turnCounter = turnCounter + 1

    elseif itemBtn.alpha == 1 then 
      turnCounter = turnCounter + 1

    elseif fleeBtn.alpha == 1 then 
      turnCounter = turnCounter + 1

    end
  end

end


attackBtn:addEventListener( "touch", selectAction )


--D Rewrite of battle loop code below, kept for refrence 

--[[for i, actor in ipairs( turnOrder ) do
  --D Player Turn
  if actor == player1 then 
    Player1Turn()

  
    elseif actor == player2 then 

    elseif actor == player3 then 

  end

 


  if actor == player1 or player2 or player3 then
    for i, button in ipairs( battleHud ) do 
      button.alpha = 0.5
    end  
  else
    for i, button in ipairs( battleHud ) do
      button.alpha = 0
    end
  end
end
--]]












--[[
while true do
  -- Iterate through actors in turn order
  for i, actor in ipairs(turnOrder) do
    -- Perform turn
    if actor == player1 then
      -- Player turn
      print("Player turn. Choose an action:")
      -- Display inital options for the player, attack, defend, spell, run, item, etc. Then display more options based on
      -- which inital option they chose, alot of this will have to be rewritten, maybe ill just get chatgpt to do it.
      local action = io.read("*n")
      if action == 1 then
        local target = turnOrder[2] -- Attack first enemy by default
        if target.hp <= 0 then
          target = turnOrder[3] -- Attack second enemy if first is defeated
        end
        local damage = calculateDamage(player1Stats, target)
        print(player1Stats.name .. " attacks " .. target.name .. " for " .. damage .. " damage.")
        if target.hp <= 0 then
          print(target.name .. " is defeated!")
        end
      elseif action == 2 then
        player1Stats.def = player1Stats.def + 5
        print(player1Stats.name .. " defends.")
      end
    else
      -- Enemy turn
      local target = player1Stats
      local damage = calculateDamage(actor, target)
      print(actor.name .. " attacks " .. target.name .. " for " .. damage .. " damage.")
      if target.hp <= 0 then
        print(target.name .. " is defeated!")
      end
    end
    
    -- Check if battle is over
    local battleOver = true
    for j, actor in ipairs(turnOrder) do
      if actor.hp > 0 then
        battleOver = false
        break
      end
    end
    if battleOver then
      print("Battle over.")
      -- I believe here should be where a function is run to return the player to the overworld.
      break
    end
  end
end
--]]