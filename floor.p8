pico-8 cartridge // http://www.pico-8.com
version 19
__lua__
function _init()
	maxn1 = 8
	maxn2 = 12
	v1 = 100
	v2 = 50
end

function _update60()
if btnp(3) then maxn1-=1 end
if btnp(2) then maxn1+=1 end
if btnp(1) then maxn2-=1 end
if btnp(0) then maxn2+=1 end

n1 = 0.5*maxn1+flr(maxn1*0.5*abs(cos(time()/2)))
n2 = 0.5*maxn1+flr(maxn1*0.5*abs(sin(time()/6)))

end

function _draw()
if not btn(5) then cls() end
	
	for i=0,n1 do
		for j=0,n2 do
			if (i+j)%2==1 then
			x = (i*(128/n1)+v1*time()+8*sin(i/n1+time()))%(128+128/n1)-128/n1
			y = (j*(128/n2)+v2*time()+16*cos(j/n2+time()))%(128+128/n2)-128/n2
			c = max(1,(j+i+16*sin(time()/5))%16)*((i+j)%2)
			rectfill(x, y, x+(128/n1), y+(128/n2), c)
		end
		end
	end
end
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__label__
bbbbb000000ddddd000000fffff00001111100033333005555507777799999bbbbbddddd00000fffff0111110003333300005555500000777770000009999900
bbbbb000000ddddd000000fffff00001111100033333005555507777799999bbbbbddddd00000fffff0111110003333300005555500000777770000009999900
bbbbb000000ddddd000000fffff00001111100033333005555507777799999bbbbbddddd00000fffff0111110003333300005555500000777770000009999900
bbbbb000000ddddd000000fffff00001111100033333005555507777799999bbbbbddddd00000fffff0111110003333300005555500000777770000009999900
bbbbb000000ddddd000000fffff00001111100033333005555507777799999bbbbbddddd00000fffff0111110003333300005555500000777770000009999900
bbbbb000000ddddd000000fffff00001111100033333005555507777799999bbbbbddddd00000fffff0111110003333300005555500000777770000009999900
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000ddddd000000fffff00001111100003333300055555077777099999bbbbddddd0fffffffff011111003333300005555500007777700000099999000000b
000000ddddd000000fffff00001111100003333300055555077777099999bbbbddddd0fffffffff011111003333300005555500007777700000099999000000b
000000ddddd000000fffff00001111100003333300055555077777099999bbbbddddd0fffffffff011111003333300005555500007777700000099999000000b
000000ddddd000000fffff00001111100003333300055555077777099999bbbbddddd0fffffffff011111003333300005555500007777700000099999000000b
000000ddddd000000fffff00001111100003333300055555077777099999bbbbddddd0fffffffff011111003333300005555500007777700000099999000000b
000000ddddd000000fffff00001111100003333300055555077777099999bbbbddddd0fffffffff011111003333300005555500007777700000099999000000b
000000ddddd000000fffff00001111100003333300055555077777099999bbbbddddd0fffffffff011111003333300005555500007777700000099999000000b
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
ddddd000000fffff00000011111000033333000555550077777099999bbbbbdddddfffff0000011111033333000555550000777770000099999000000bbbbb00
ddddd000000fffff00000011111000033333000555550077777099999bbbbbdddddfffff0000011111033333000555550000777770000099999000000bbbbb00
ddddd000000fffff00000011111000033333000555550077777099999bbbbbdddddfffff0000011111033333000555550000777770000099999000000bbbbb00
ddddd000000fffff00000011111000033333000555550077777099999bbbbbdddddfffff0000011111033333000555550000777770000099999000000bbbbb00
ddddd000000fffff00000011111000033333000555550077777099999bbbbbdddddfffff0000011111033333000555550000777770000099999000000bbbbb00
ddddd000000fffff00000011111000033333000555550077777099999bbbbbdddddfffff0000011111033333000555550000777770000099999000000bbbbb00
ddddd000000fffff00000011111000033333000555550077777099999bbbbbdddddfffff0000011111033333000555550000777770000099999000000bbbbb00
000000fffff00000011111000033333000055555000777770999990bbbbbddddfffff01111111110333330055555000077777000099999000000bbbbb000000d
000000fffff00000011111000033333000055555000777770999990bbbbbddddfffff01111111110333330055555000077777000099999000000bbbbb000000d
000000fffff00000011111000033333000055555000777770999990bbbbbddddfffff01111111110333330055555000077777000099999000000bbbbb000000d
000000fffff00000011111000033333000055555000777770999990bbbbbddddfffff01111111110333330055555000077777000099999000000bbbbb000000d
000000fffff00000011111000033333000055555000777770999990bbbbbddddfffff01111111110333330055555000077777000099999000000bbbbb000000d
fffff0fffff11111011111333333333555555557777777999999bbbbbdddddfffff1111111111333333555555557777777779999999999bbbbb0bbbbbddddd0d
fffff0fffff11111011111333333333555555557777777999999bbbbbdddddfffff1111111111333333555555557777777779999999999bbbbb0bbbbbddddd0d
fffff0fffff11111011111333333333555555557777777999999bbbbbdddddfffff1111111111333333555555557777777779999999999bbbbb0bbbbbddddd0d
fffff00000011111000000333330000555550007777700999990bbbbbdddddfffff1111100000333330555550007777700009999900000bbbbb000000ddddd00
fffff01111111111033333333355555555577777777999999bbbbbbdddddffff11111133333333335555555777777777999999999bbbbbbbbbb0dddddddddd0f
fffff01111111111033333333355555555577777777999999bbbbbbdddddffff11111133333333335555555777777777999999999bbbbbbbbbb0dddddddddd0f
fffff01111111111033333333355555555577777777999999bbbbbbdddddffff11111133333333335555555777777777999999999bbbbbbbbbb0dddddddddd0f
fffff01111111111033333333355555555577777777999999bbbbbbdddddffff11111133333333335555555777777777999999999bbbbbbbbbb0dddddddddd0f
0000001111100000033333000055555000077777000999990bbbbb0dddddffff11111033333333305555500777770000999990000bbbbb000000ddddd000000f
0000001111100000033333000055555000077777000999990bbbbb0dddddffff11111033333333305555500777770000999990000bbbbb000000ddddd000000f
0000001111100000033333000055555000077777000999990bbbbb0dddddffff11111033333333305555500777770000999990000bbbbb000000ddddd000000f
ddddd011111fffff033333111155555333377775555999777bbb999ddbbbffdd111fff33333331115553333777755555999977777bbbbb999990dddddbbbbb0f
ddddd000000fffff00000011111000033333000555550077777099999bbbbbdddddfffff0000011111033333000555550000777770000099999000000bbbbb00
ddddd000000fffff00000011111000033333000555550077777099999bbbbbdddddfffff0000011111033333000555550000777770000099999000000bbbbb00
ddddd0ffffffffff011111111133333333355555555777777999999bbbbbddddffffff1111111111333333355555555577777777799999999990bbbbbbbbbb0d
fffff0fffff11111011111333333333555555557777777999999bbbbbdddddfffff1111111111333333555555557777777779999999999bbbbb0bbbbbddddd0d
fffff0fffff11111011111333333333555555557777777999999bbbbbdddddfffff1111111111333333555555557777777779999999999bbbbb0bbbbbddddd0d
fffff01111111111033333333355555555577777777999999bbbbbbdddddffff11111133333333335555555777777777999999999bbbbbbbbbb0dddddddddd0f
fffff01111111111033333333355555555577777777999999bbbbbbdddddffff11111133333333335555555777777777999999999bbbbbbbbbb0dddddddddd0f
1111101111133333033333555555555777777779999999bbbbbbdddddfffff11111333333333355555577777777999999999bbbbbbbbbbddddd0dddddfffff0f
1111101111133333033333555555555777777779999999bbbbbbdddddfffff11111333333333355555577777777999999999bbbbbbbbbbddddd0dddddfffff0f
1111103333333333055555555577777777799999999bbbbbbddddddfffff111133333355555555557777777999999999bbbbbbbbbdddddddddd0ffffffffff01
1111103333333333055555555577777777799999999bbbbbbddddddfffff111133333355555555557777777999999999bbbbbbbbbdddddddddd0ffffffffff01
1111103333333333055555555577777777799999999bbbbbbddddddfffff111133333355555555557777777999999999bbbbbbbbbdddddddddd0ffffffffff01
1111103333333333055555555577777777799999999bbbbbbddddddfffff111133333355555555557777777999999999bbbbbbbbbdddddddddd0ffffffffff01
333330333335555505555577777777799999999bbbbbbbddddddfffff1111133333555555555577777799999999bbbbbbbbbddddddddddfffff0fffff1111101
333330333335555505555577777777799999999bbbbbbbddddddfffff1111133333555555555577777799999999bbbbbbbbbddddddddddfffff0fffff1111101
333330333335555505555577777777799999999bbbbbbbddddddfffff1111133333555555555577777799999999bbbbbbbbbddddddddddfffff0fffff1111101
333330333335555505555577777777799999999bbbbbbbddddddfffff1111133333555555555577777799999999bbbbbbbbbddddddddddfffff0fffff1111101
333330000005555500000077777000099999000bbbbb00ddddd0fffff1111133333555550000077777099999000bbbbb0000ddddd00000fffff0000001111100
33333055555555550777777777999999999bbbbbbbbddddddffffff11111333355555577777777779999999bbbbbbbbbdddddddddffffffffff0111111111103
33333055555555550777777777999999999bbbbbbbbddddddffffff11111333355555577777777779999999bbbbbbbbbdddddddddffffffffff0111111111103
33333055555555550777777777999999999bbbbbbbbddddddffffff11111333355555577777777779999999bbbbbbbbbdddddddddffffffffff0111111111103
00000055555000000777770000999990000bbbbb000ddddd0fffff011111333355555077777777709999900bbbbb0000ddddd0000fffff000000111110000003
00000055555000000777770000999990000bbbbb000ddddd0fffff011111333355555077777777709999900bbbbb0000ddddd0000fffff000000111110000003
00000055555000000777770000999990000bbbbb000ddddd0fffff011111333355555077777777709999900bbbbb0000ddddd0000fffff000000111110000003
00000055555000000777770000999990000bbbbb000ddddd0fffff011111333355555077777777709999900bbbbb0000ddddd0000fffff000000111110000003
5555505555577777077777999999999bbbbbbbbdddddddffffff1111133333555557777777777999999bbbbbbbbdddddddddffffffffff111110111113333303
5555500000077777000000999990000bbbbb000ddddd00fffff01111133333555557777700000999990bbbbb000ddddd0000fffff00000111110000003333300
5555500000077777000000999990000bbbbb000ddddd00fffff01111133333555557777700000999990bbbbb000ddddd0000fffff00000111110000003333300
5555500000077777000000999990000bbbbb000ddddd00fffff01111133333555557777700000999990bbbbb000ddddd0000fffff00000111110000003333300
5555500000077777000000999990000bbbbb000ddddd00fffff01111133333555557777700000999990bbbbb000ddddd0000fffff00000111110000003333300
5555500000077777000000999990000bbbbb000ddddd00fffff01111133333555557777700000999990bbbbb000ddddd0000fffff00000111110000003333300
5555500000077777000000999990000bbbbb000ddddd00fffff01111133333555557777700000999990bbbbb000ddddd0000fffff00000111110000003333300
5555500000077777000000999990000bbbbb000ddddd00fffff01111133333555557777700000999990bbbbb000ddddd0000fffff00000111110000003333300
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000077777000000999990000bbbbb0000ddddd000fffff01111103333355557777709999999990bbbbb00ddddd0000fffff000011111000000333330000005
00000077777000000999990000bbbbb0000ddddd000fffff01111103333355557777709999999990bbbbb00ddddd0000fffff000011111000000333330000005
00000077777000000999990000bbbbb0000ddddd000fffff01111103333355557777709999999990bbbbb00ddddd0000fffff000011111000000333330000005
00000077777000000999990000bbbbb0000ddddd000fffff01111103333355557777709999999990bbbbb00ddddd0000fffff000011111000000333330000005
00000077777000000999990000bbbbb0000ddddd000fffff01111103333355557777709999999990bbbbb00ddddd0000fffff000011111000000333330000005
00000077777000000999990000bbbbb0000ddddd000fffff01111103333355557777709999999990bbbbb00ddddd0000fffff000011111000000333330000005
00000077777000000999990000bbbbb0000ddddd000fffff01111103333355557777709999999990bbbbb00ddddd0000fffff000011111000000333330000005
00000077777000000999990000bbbbb0000ddddd000fffff01111103333355557777709999999990bbbbb00ddddd0000fffff000011111000000333330000005
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
7777700000099999000000bbbbb0000ddddd000fffff001111103333355555777779999900000bbbbb0ddddd000fffff00001111100000333330000005555500
7777700000099999000000bbbbb0000ddddd000fffff001111103333355555777779999900000bbbbb0ddddd000fffff00001111100000333330000005555500
7777700000099999000000bbbbb0000ddddd000fffff001111103333355555777779999900000bbbbb0ddddd000fffff00001111100000333330000005555500
7777700000099999000000bbbbb0000ddddd000fffff001111103333355555777779999900000bbbbb0ddddd000fffff00001111100000333330000005555500
7777700000099999000000bbbbb0000ddddd000fffff001111103333355555777779999900000bbbbb0ddddd000fffff00001111100000333330000005555500
7777700000099999000000bbbbb0000ddddd000fffff001111103333355555777779999900000bbbbb0ddddd000fffff00001111100000333330000005555500
7777700000099999000000bbbbb0000ddddd000fffff001111103333355555777779999900000bbbbb0ddddd000fffff00001111100000333330000005555500
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000099999000000bbbbb0000ddddd0000fffff000111110333330555557777999990bbbbbbbbb0ddddd00fffff000011111000033333000000555550000007
00000099999000000bbbbb0000ddddd0000fffff000111110333330555557777999990bbbbbbbbb0ddddd00fffff000011111000033333000000555550000007
00000099999000000bbbbb0000ddddd0000fffff000111110333330555557777999990bbbbbbbbb0ddddd00fffff000011111000033333000000555550000007
00000099999000000bbbbb0000ddddd0000fffff000111110333330555557777999990bbbbbbbbb0ddddd00fffff000011111000033333000000555550000007
00000099999000000bbbbb0000ddddd0000fffff000111110333330555557777999990bbbbbbbbb0ddddd00fffff000011111000033333000000555550000007
00000099999000000bbbbb0000ddddd0000fffff000111110333330555557777999990bbbbbbbbb0ddddd00fffff000011111000033333000000555550000007
00000099999000000bbbbb0000ddddd0000fffff000111110333330555557777999990bbbbbbbbb0ddddd00fffff000011111000033333000000555550000007
00000099999000000bbbbb0000ddddd0000fffff000111110333330555557777999990bbbbbbbbb0ddddd00fffff000011111000033333000000555550000007
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
99999000000bbbbb000000ddddd0000fffff0001111100333330555557777799999bbbbb00000ddddd0fffff0001111100003333300000555550000007777700
99999000000bbbbb000000ddddd0000fffff0001111100333330555557777799999bbbbb00000ddddd0fffff0001111100003333300000555550000007777700
99999000000bbbbb000000ddddd0000fffff0001111100333330555557777799999bbbbb00000ddddd0fffff0001111100003333300000555550000007777700
99999000000bbbbb000000ddddd0000fffff0001111100333330555557777799999bbbbb00000ddddd0fffff0001111100003333300000555550000007777700
99999000000bbbbb000000ddddd0000fffff0001111100333330555557777799999bbbbb00000ddddd0fffff0001111100003333300000555550000007777700
99999000000bbbbb000000ddddd0000fffff0001111100333330555557777799999bbbbb00000ddddd0fffff0001111100003333300000555550000007777700
99999000000bbbbb000000ddddd0000fffff0001111100333330555557777799999bbbbb00000ddddd0fffff0001111100003333300000555550000007777700
99999000000bbbbb000000ddddd0000fffff0001111100333330555557777799999bbbbb00000ddddd0fffff0001111100003333300000555550000007777700
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000bbbbb000000ddddd0000fffff000011111000333330555550777779999bbbbb0ddddddddd0fffff0011111000033333000055555000000777770000009
000000bbbbb000000ddddd0000fffff000011111000333330555550777779999bbbbb0ddddddddd0fffff0011111000033333000055555000000777770000009
000000bbbbb000000ddddd0000fffff000011111000333330555550777779999bbbbb0ddddddddd0fffff0011111000033333000055555000000777770000009
000000bbbbb000000ddddd0000fffff000011111000333330555550777779999bbbbb0ddddddddd0fffff0011111000033333000055555000000777770000009
000000bbbbb000000ddddd0000fffff000011111000333330555550777779999bbbbb0ddddddddd0fffff0011111000033333000055555000000777770000009
000000bbbbb000000ddddd0000fffff000011111000333330555550777779999bbbbb0ddddddddd0fffff0011111000033333000055555000000777770000009
