function onCreatePost()
makeLuaSprite('Health', 'healthBarOrange',280, 580)
	setObjectCamera('Health', 'hud')
	setHealthBarColors('B00000', '80FF00')
	addLuaSprite('Health', true)
	setObjectOrder('iconP1', getObjectOrder('Health') + 1)
	setObjectOrder('iconP2', getObjectOrder('Health') + 1)

	setProperty('healthBarBG.visible', false)	
setProperty('timeTxt.visible', false)
setProperty('scoreTxt.visible', false)
setProperty('timeBar.visible', false)
setProperty('timeBarBG.visible', false)

makeLuaText('ScoreRotten','Score: 0 ',1450,0,0)   
        setProperty('ScoreRotten.y',getProperty('scoreTxt.y')- 0)
       setProperty('ScoreRotten.x',getProperty('scoreTxt.x')- 0)
       setTextWidth('ScoreRotten',getTextWidth('scoreTxt'))
       screenCenter('ScoreRotten', 'x')
       setObjectCamera('ScoreRotten', 'HUD')
       setTextColor('ScoreRotten','FF8000')
       setTextSize('ScoreRotten', 20)
       setTextFont('ScoreRotten', 'CREABBB_.ttf')
       addLuaText('ScoreRotten')
       
if downscroll then
makeLuaSprite('Health', 'healthBarOrange',280, 48)
	setObjectCamera('Health', 'hud')
	setHealthBarColors('B00000', '80FF00')
	addLuaSprite('Health', true)
	setObjectOrder('iconP1', getObjectOrder('Health') + 1)
	setObjectOrder('iconP2', getObjectOrder('Health') + 1)

	setProperty('healthBarBG.visible', false)	
setProperty('timeTxt.visible', false)
setProperty('scoreTxt.visible', false)
setProperty('timeBar.visible', false)
setProperty('timeBarBG.visible', false)

makeLuaText('ScoreRotten','Score: 0 ',1450,0,0)   
        setProperty('ScoreRotten.y',getProperty('scoreTxt.y')+ 40)
       setProperty('ScoreRotten.x',getProperty('scoreTxt.x')- 0)
       setTextWidth('ScoreRotten',getTextWidth('scoreTxt'))
       screenCenter('ScoreRotten', 'x')
       setObjectCamera('ScoreRotten', 'HUD')
       setTextColor('ScoreRotten','FF8000')
       setTextSize('ScoreRotten', 20)
       setTextFont('ScoreRotten', 'CREABBB_.ttf')
       addLuaText('ScoreRotten')
end
end

function onUpdatePost(elapsed)
setProperty('healthBar.scale.x', 0.7)
	setProperty('healthBar.scale.y', 4)
	setProperty('healthBar.x', 320)
	setProperty('healthBar.y', 640)
	setProperty('iconP1.x', 850)
	setProperty('iconP2.x', 250)
if downscroll then
	setProperty('healthBar.scale.x', 0.7)
	setProperty('healthBar.scale.y', 4)
	setProperty('healthBar.x', 320)
	setProperty('healthBar.y', 100)
	setProperty('iconP1.x', 850)
	setProperty('iconP2.x', 250)
end
end

function onRecalculateRating()
setTextString('ScoreRotten','Score: '..score..'')
end
function onUpdate()
    makeLuaText("L", "Port by Samudani3yo", "0", "20", "650")
    addLuaText("L")
    setTextFont('L', 'Cooper Black Regular.ttf')
    setTextSize("L", "25");
end
