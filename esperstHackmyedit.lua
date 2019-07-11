gg.toast('FFEXVIUS')
--var globals
stats = {''}
characters = {'Hack all spers'}
hackValue = 10000000
logHack = ''
--ESPERS:
-- -----------------------------------------------
table.insert(characters, 'Ifrit 3🌟 lvl60')
table.insert(stats, '7000;4500;7480;5060;3880;3880')
-- --------------------------------------------
-- --------------------------------------------
table.insert(characters, 'Siren 3🌟 lvl60')
table.insert(stats, '5400;6240;4200;4680;6120;6120')
-- --------------------------------------------
-- --------------------------------------------
table.insert(characters, 'Golem 3🌟 lvl30')
table.insert(stats, '6900;5250;4250;6140;2260;2260')
-- -----------------------------------------------
-- -----------------------------------------------
table.insert(characters, 'Shiva 3🌟 lvl60')
table.insert(stats, '5800;7500;3960;4460;7020;7020')
-- -----------------------------------------------
-- -----------------------------------------------
table.insert(characters, 'Ramuh(Lamú) 3🌟 lvl60')
table.insert(stats, '4480;8000;3600;2920;7640;6440')
-- -----------------------------------------------
-- -----------------------------------------------
table.insert(characters, 'Diabolos(Diablo) 3🌟 lvl60')
table.insert(stats, '6680;7580;2860;4440;6480;4360')
-- -----------------------------------------------
-- -----------------------------------------------
table.insert(characters, 'Carbuncle(Rubi) 3🌟 lvl60')
table.insert(stats, '5280;7200;2560;6160;5280;7760')
-- -----------------------------------------------
-- -----------------------------------------------
table.insert(characters, 'Odin 3🌟 lvl60')
table.insert(stats, '7340;6100;8040;6640;4800;5000')
-- -----------------------------------------------
-- -----------------------------------------------
table.insert(characters, 'Titan 3🌟 lvl60')
table.insert(stats, '8640;3360;7120;6280;3160;4320')
-- -----------------------------------------------
-- -----------------------------------------------
table.insert(characters, 'Lakshmi 3🌟 lvl10')
table.insert(stats, '5450;5510;2470;2830;3650;6110')
-- -------------------------------------------------
-- -------------------------------------------------
table.insert(characters, 'Tetra Sylphid 3🌟 lvl50')
table.insert(stats, '5700;6650;4050;3600;7550;4800')
-- -------------------------------------------------
-- -------------------------------------------------
table.insert(characters, 'Bahamut 1🌟 lvl30')
table.insert(stats, '6400;6300;6000;6000;6000;6000')
-- -------------------------------------------------
-- -------------------------------------------------
table.insert(characters, 'Fenril 3🌟 lvl40')
table.insert(stats, '6200;4320;6780;3540;6780;3540')
-- -------------------------------------------------
-- -------------------------------------------------
table.insert(characters, 'Leviathan 3🌟 lvl30')
table.insert(stats, '8480;6410;5850;4580;6880;4640')
-- -------------------------------------------------
-- -------------------------------------------------
table.insert(characters, 'Phoenix 3🌟 lvl60')
table.insert(stats, '7640;6480;3900;4760;4860;7080')
-- -------------------------------------------------
-- -------------------------------------------------
table.insert(characters, 'Alexander 2🌟 lvl40')
table.insert(stats, '5000;2100;2200;4600;4500;5800')
---functions
function hackCharacter(menu)
  gg.searchNumber(stats[menu], gg.TYPE_DWORD)
  local cont = gg.getResultCount ()
  local numHacked = 0
  local msg = ''
  if(cont>5)then
    gg.getResults(cont)
    local results = gg.getResults(cont)
    local thisStats = split(stats[menu], ";")
    for i=1,cont do
      if (((i+5)<=cont) and (results[i].value == thisStats[1]) and (results[i+1].value == thisStats[2]) and (results[i+2].value == thisStats[3]) and (results[i+3].value == thisStats[4]) and (results[i+4].value == thisStats[5]) and (results[i+5].value == thisStats[6])) then
        results[i].value = hackValue
        results[i+1].value = hackValue
        results[i+2].value = hackValue
        results[i+3].value = hackValue
        results[i+4].value = hackValue
        results[i+5].value = hackValue
        numHacked = numHacked+1
      end
    end
    gg.setValues(results)
    msg = ""..characters[menu].." Modified 👍"
  else
    msg = ""..characters[menu].." Error ⛔ check stats"
  end
  print(msg)
  logHack = logHack.."\n"..msg
  gg.clearResults()
end
function todos()
  for Index, Value in pairs( characters ) do
    if (Index >1) then
      hackCharacter(Index);
    end
  end
end
function split(s, delimiter)
    result = {};
    for match in (s..delimiter):gmatch("(.-)"..delimiter) do
        table.insert(result, match);
    end
    return result;
end
print('Script 1.0.1 by furthurr')
if gg.isVisible(true) then
   gg.setVisible(false)
   end
gg.clearResults()
goto START
::START::
count = 0
for _ in pairs(characters) do count = count + 1 end
if (count>2) then
    menu = gg.choice(characters,nil)
    if menu == nil then goto noselect end
    if menu == 1 then todos() goto sdone end
    if menu > 1 then hackCharacter(menu) goto sdone  end
  goto noselect
else
  hackCharacter(2)
end
::sdone::
print('script only for testing..')
gg.toast(logHack..'\nDesarrollado por ..::@furthurr::..')
os.exit()
::noselect::
print('Sin selección')
goto sdone
