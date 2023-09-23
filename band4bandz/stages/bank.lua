function onCreate()
	-- background shit
	makeLuaSprite('bg', 'bg', -1500, -1200)
	addLuaSprite('bg', false)
	
	makeLuaSprite('floor', 'carpet', -1500, -1200)
	addLuaSprite('floor', false)
	
	makeLuaSprite('atm', 'atm', 700, -1000)
	setScrollFactor('atm', 1.05, 1)
	addLuaSprite('atm', false)
	
	makeLuaSprite('moneybag', 'moneybag', -1500, 0)
	setScrollFactor('moneybag', 1.05, 1)
	addLuaSprite('moneybag', false)

	makeLuaSprite('moneybag2', 'moneybag2', -1500, 900)
	setScrollFactor('moneybag2', 1.1, 1)
	addLuaSprite('moneybag2', false)

	makeLuaSprite('coins', 'coins', -1500, 800)
	addLuaSprite('coins', false)
	
	makeLuaSprite('light', 'light', -900, -1200)
	addLuaSprite('light', true)
	
end