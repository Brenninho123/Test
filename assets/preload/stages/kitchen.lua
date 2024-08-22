function onCreate()
setProperty('skipCountdown', true)
makeLuaSprite('bg2', 'backgroundd/bg2', -3600, -1900);
   scaleObject('bg2', 4.5, 4.5);
	addLuaSprite('bg2', false);

makeLuaSprite('bg3', 'backgroundd/bg3', -3600, -1900);
   scaleObject('bg3', 4.5, 4.5);
   setProperty('bg3.visible', false)
	addLuaSprite('bg3', false);

makeLuaSprite('overlay', 'backgroundd/overlay', 0, 0)
        setObjectCamera('overlay', 'HUD')
        setProperty('overlay.visible', false)
        addLuaSprite('overlay', true)
       
       makeAnimatedLuaSprite('hand1', 'backgroundd/hand1', 200, 400)
addAnimationByPrefix('hand1', 'hand1', 'hand1', 6, true);
scaleObject('hand1', 4, 4)
setProperty('hand1.alpha', 0)
setProperty('hand1.flipX', true)
    addLuaSprite('hand1', true)
       
       makeAnimatedLuaSprite('hand2', 'backgroundd/hand2', 600, 400)
addAnimationByPrefix('hand2', 'hand2', 'hand2', 6, true);
scaleObject('hand2', 4, 4)
setProperty('hand2.alpha', 0)
    addLuaSprite('hand2', true)
    
    makeAnimatedLuaSprite('hand3', 'backgroundd/hand3', 1200, 400)
addAnimationByPrefix('hand3', 'hand3', 'hand3', 6, true);
scaleObject('hand3', 4, 4)
setProperty('hand3.alpha', 0)
    addLuaSprite('hand3', true)
    
    makeLuaSprite('fruit1', 'backgroundd/fruit1', 0, 600);
    addLuaSprite('fruit1', false);
    setObjectCamera('fruit1', 'Other')
    
    makeLuaSprite('fruit2', 'backgroundd/fruit2', -500, -500);
    addLuaSprite('fruit2', false);
    setObjectCamera('fruit2', 'Other')
    
    makeLuaSprite('fruit3', 'backgroundd/fruit3', 500, -500);
    addLuaSprite('fruit3', false);
    setObjectCamera('fruit3', 'Other')
   
    makeLuaSprite('fruit4', 'backgroundd/fruit4', 1200, 700);
    addLuaSprite('fruit4', false);
    setObjectCamera('fruit4', 'Other')
   
end

function onStepHit()
if curStep == 511 then
        makeLuaSprite('sexo', 'jumpscare', 0, 0)
        setObjectCamera('sexo', 'HUD')
        addLuaSprite('sexo', false)
        runTimer('makeInvisible', 1.5)
    end
	if curStep == 784 then
	setHealthBarColors('B00000', '80FF00')
	makeLuaSprite('black1',nil)
    makeGraphic('black1',screenWidth,screenHeight,'000000')
    setObjectCamera('black1','camHUD')
    addLuaSprite('black1', false)
	doTweenAlpha('black1','black1', 0, 6, 'linear')
end
if curStep == 1304 then
setProperty('black.alpha', 1)
setProperty('L.visible', false)
setProperty('healthBar.visible', false)
setProperty('Health.visible', false)
setProperty('ScoreRotten.visible', false)
setProperty('iconP1.visible', false)
setProperty('iconP2.visible', false)
makeLuaSprite('WHAT', 'backgroundd/WHAT', 0, 0)
        setObjectCamera('WHAT', 'Other')
        scaleObject('WHAT', 1, 1)
        addLuaSprite('WHAT', true)
        noteTweenAlpha('4','4', 0, 1, 'linear')
    noteTweenAlpha('5','5', 0, 1, 'linear')
    noteTweenAlpha('6','6', 0, 1, 'linear')
    noteTweenAlpha('7','7', 0, 1, 'linear')
        end
    if curStep == 1308 then
    doTweenAlpha('black','black', 0, 2, 'linear')
    doTweenAlpha('WHAT','WHAT', 0, 1, 'linear')
        callScript('scripts/VideoSpriteHandler', 'makeVideoSprite', {'rottenSmoothie_cutscene_noaudio', 'rottenSmoothie_cutscene_noaudio', 0, 0, 'camHUD', false})
scaleObject('rottenSmoothie_cutscene_noaudio', 1, 1)
    end
    if curStep == 1560 then
    noteTweenAlpha('4','4', 1, 1, 'linear')
    noteTweenAlpha('5','5', 1, 1, 'linear')
    noteTweenAlpha('6','6', 1, 1, 'linear')
    noteTweenAlpha('7','7', 1, 1, 'linear')
    end
    if curStep == 1824 then
    makeLuaSprite('black1',nil)
    makeGraphic('black1',screenWidth,screenHeight,'000000')
    setObjectCamera('black1','HUD')
    addLuaSprite('black1', false)
    doTweenAlpha('black1.1','black1', 0, 2, 'linear')
    setProperty('rottenSmoothie_cutscene_noaudio.alpha', 0)
     setProperty('healthBar.visible', true)
     setProperty('L.visible', true)
setProperty('Health.visible', true)
setProperty('ScoreRotten.visible', true)
setProperty('iconP1.visible', true)
setProperty('iconP2.visible', true)
     setProperty('bg3.visible', true)
     setProperty('bg2.visible', false)
     setProperty('overlay.visible', true)
    end
    if curStep == 1912 then
    doTweenY('hand1','hand1', -400, 1, 'linear')
    setProperty('hand1.alpha', 1)
    doTweenY('hand2','hand2', 0, 1, 'linear')
  setProperty('hand2.alpha', 1)
    doTweenY('hand3','hand3', -400, 1, 'linear')
    setProperty('hand3.alpha', 1)
    end
    if curStep == 1953 then
    doTweenX('fruit1.1','fruit1',1200,5,'linear')
    doTweenAngle('fruit1.2','fruit1',360,9,'linear')
    doTweenY('fruit1.2','fruit1',-400,5,'linear')
end
    if curStep == 2080 then
   makeLuaSprite('black1',nil)
    makeGraphic('black1',screenWidth,screenHeight,'000000')
    setObjectCamera('black1','Other')
    addLuaSprite('black1', false)
    makeLuaText('word', 'amazing grace', 1250, 0, 300) 
    setObjectCamera('word','Other')
    screenCenter('word', 'x')
    addLuaText('word', true)
    setTextSize('word', 68)
    setTextFont('word', 'Domine-Regular.ttf')
    setObjectOrder('word', getObjectOrder('black1') + 1)
runTimer('bye', 0.5)
    end
    if curStep == 2144 then
    doTweenX('fruit2.3','fruit2',1000,5,'linear')
    doTweenAngle('fruit2.2','fruit2',360,11,'linear')
    doTweenY('fruit2.1','fruit2',600,5,'linear')
end
    if curStep == 2208 then
    makeLuaSprite('black1',nil)
    makeGraphic('black1',screenWidth,screenHeight,'000000')
    setObjectCamera('black1','Other')
    addLuaSprite('black1', false)
    makeLuaText('words', 'how', 1250, 0, 300) 
    setObjectCamera('words','Other')
    screenCenter('words', 'x')
    addLuaText('words', true)
    setTextSize('words', 68)
    setTextFont('words', 'Domine-Regular.ttf')
runTimer('1', 0.4)
    end
    if curStep == 2224 then
    doTweenX('fruit3.1','fruit3',100,7,'linear')
    doTweenAngle('fruit3.2','fruit3',360,9,'linear')
    doTweenY('fruit3.3','fruit3',800,7,'linear')
end
    if curStep == 2287 then
    doTweenX('fruit4.3','fruit4',0,5,'linear')
    doTweenAngle('fruit4.2','fruit4',360,9,'linear')
    doTweenY('fruit4.1','fruit4',-600,5,'linear')
    end
    if curStep == 2370 then
    makeLuaSprite('black',nil)
    makeGraphic('black',screenWidth,screenHeight,'000000')
    setObjectCamera('black','Other')
    addLuaSprite('black',true)
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'makeInvisible' then
        setProperty('sexo.alpha', 0)
    end
    if tag == '1' then
        makeLuaText('words', 'how sweet', 1250, 0, 300) 
        setObjectCamera('words','Other')
    screenCenter('words', 'x')
    addLuaText('words')
    setTextSize('words', 68)
    setTextFont('words', 'Domine-Regular.ttf')
    runTimer('2', 0.4)
    end
    if tag == '2' then
        makeLuaText('words', 'how sweet the', 1250, 0, 300) 
    screenCenter('words', 'x')
    setObjectCamera('words','Other')
    addLuaText('words')
    setTextSize('words', 68)
    setTextFont('words', 'Domine-Regular.ttf')
    runTimer('3', 0.4)
    end
    if tag == '3' then
        makeLuaText('words', 'how sweet the sound.', 1250, 0, 300) 
    screenCenter('words', 'x')
    setObjectCamera('words','Other')
    addLuaText('words')
    setTextSize('words', 68)
    setTextFont('words', 'Domine-Regular.ttf')
    runTimer('bye', 0.5)
    end
    if tag == 'bye' then
    doTweenAlpha('black1','black1', 0, 1.5, 'linear')
        setProperty('word.alpha', 0)
        setProperty('words.alpha', 0)
    end
end