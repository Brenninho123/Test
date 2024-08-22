function onCreate()
	video.Load("game_over_apple.mp4")
end
function onGameOverStart()
		startVideo('game_over_apple')
		setProperty('GameOverStart.visible', false)
end