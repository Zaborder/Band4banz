local shakePower = 4
local allowCountdown = false
function onStartCountdown()
	if not allowCountdown then
    	playSound('johngutter', 1);
		runTimer('countdown', 3.2)
		allowCountdown = true;
		--startCountdown()
		return Function_Stop;
	end
	return Function_Continue;
end

function onCreate()
	makeLuaSprite('w', 'WANTED/white', 0, 0)
	setObjectCamera('w', 'other')
	scaleObject('w', 0.51, 0.51)
	addLuaSprite('w', false)
	
	makeLuaSprite('back', 'WANTED/bg', 0, 0)
	setObjectCamera('back', 'other')
	scaleObject('back', 0.51, 0.51)
	addLuaSprite('back', false)

	makeLuaSprite('poster', 'WANTED/' .. dadName, 650, 50)
	setObjectCamera('poster', 'other')
	scaleObject('poster', 0.51, 0.51)
	addLuaSprite('poster', false)
	
	makeLuaSprite('lower', 'WANTED/lower', 0, 0)
	setObjectCamera('lower', 'other')
	scaleObject('lower', 0.51, 0.51)
	addLuaSprite('lower', false)
	
	makeLuaSprite('upper', 'WANTED/upper', 0, 0)
	setObjectCamera('upper', 'other')
	scaleObject('upper', 0.51, 0.51)
	addLuaSprite('upper', false)
	
	makeLuaSprite('splat', 'WANTED/splat', 0, 0)
	setObjectCamera('splat', 'other')
	scaleObject('splat', 0.51, 0.51)
	addLuaSprite('splat', false)
	
	makeLuaSprite('foe', 'WANTED/foe', 0, 0)
	setObjectCamera('foe', 'other')
	scaleObject('foe', 0.51, 0.51)
	addLuaSprite('foe', false)

	makeLuaSprite('appeared', 'WANTED/appeared', 0, 0)
	setObjectCamera('appeared', 'other')
	scaleObject('appeared', 0.51, 0.51)
	addLuaSprite('appeared', false)

	makeLuaSprite('city', 'WANTED/bg', 0, 0)
	setObjectCamera('city', 'other')
	scaleObject('city', 0.51, 0.51)
	addLuaSprite('city', false)
	setProperty('city.alpha', 0.25)
	
	makeLuaSprite('black', '', 0, 0) 
	makeGraphic('black', 1300, 750, '000000')
	setObjectCamera('black', 'other')
	addLuaSprite('black', true)
	setProperty('black.alpha', 0)

	runTimer('wait', 3)
	runTimer('wait2', 3.5)
	

	doTweenY('1','dogintro', 700,1,'sineOut')
	doTweenY('1','dogintro', 700,1,'sineOut')
	doTweenY('1','dogintro', 700,1,'sineOut')
	doTweenY('1','dogintro', 700,1,'sineOut')
	doTweenY('1','dogintro', 700,1,'sineOut')
	doTweenY('1','dogintro', 700,1,'sineOut')

end

function onUpdate()
  setProperty('appeared.x', getRandomFloat(0,shakePower))
  setProperty('appeared.y', getRandomFloat(0,shakePower))
end
function onTimerCompleted(tag, loops, loopsleft)
	if tag == 'wait' then
		doTweenAlpha('hi', 'black', 1, 0.3, 'linear')
	end
	if tag == 'countdown' then
		startCountdown()
	end
end
function onTweenCompleted(tag)
	if tag == 'hi' then		
		removeLuaSprite('w', true)
		removeLuaSprite('back', true)
		removeLuaSprite('poster', true)
		removeLuaSprite('lower', true)
		removeLuaSprite('upper', true)
		removeLuaSprite('splat', true)
		removeLuaSprite('foe', true)
		removeLuaSprite('appeared', true)
		removeLuaSprite('city', true)
		doTweenAlpha('bye', 'black', 0, 0.3, 'linear')
	end
end