TotalRandom = myRand(AllColorRandom)

R = R + RedSpeed + myRand(RedRandom) + TotalRandom
G = G + GreenSpeed + myRand(GreenRandom) + TotalRandom
B = B + BlueSpeed + myRand(BlueRandom) + TotalRandom

R,RedSpeed = cleanColor(R, RedSpeed, RedRev)
G,GreenSpeed = cleanColor(G, GreenSpeed, GreenRev)
B,BlueSpeed = cleanColor(B, BlueSpeed, BlueRev)

for i = 1, LightCount do
	debugPrint("Light "..i.." set to : "..R..","..G..","..B)
	Lights[i].setRGBColor(R, G, B)
end

if LoopRandom > 0 then
	unit.setTimer("loop", looptime + myRand(LoopRandom))
end 