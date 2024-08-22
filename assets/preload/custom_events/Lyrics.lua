function onEvent(n,v1,v2)
if n == 'Lyrics' then
makeLuaText('Text', v1 ,3000,0,500)
addLuaText('Text',true)
setObjectCamera('Text','Other')
setTextFont('Text', 'CREABBRG.ttf') 
scaleObject('Text',1,1)
setTextSize('Text', 30)
screenCenter('Text', 'x')
doTweenAlpha('Text','Text', 0, 3, 'linear')
end
end