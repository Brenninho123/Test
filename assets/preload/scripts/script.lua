function onCreatePost()
    makeLuaSprite('black',nil)
    makeGraphic('black',screenWidth,screenHeight,'000000')
    setObjectCamera('black','other')
    addLuaSprite('black',true)

noteTweenAlpha('0','0', 0,0.001, 'linear')
noteTweenAlpha('1','1', 0,0.001, 'linear')
noteTweenAlpha('2','2', 0,0.001, 'linear')
noteTweenAlpha('3','3', 0,0.001, 'linear')

    makeLuaSprite('whiteBG',nil,-200,-100)
    makeGraphic('whiteBG',screenWidth + 500,screenHeight + 400,'FFFFFF')
    setScrollFactor('whiteBG',0,0)
    addLuaSprite('whiteBG',true)
    setProperty('whiteBG.alpha',0.001)
end
function onSongStart()
    setProperty('camGame.zoom',getProperty('defaultCamZoom')+0.2)
    doTweenZoom('gameZoom','camGame',getProperty('defaultCamZoom'),3,'quartOut')
    doTweenAlpha('blackAlpha','black',0,3,'cubeOut')
    end