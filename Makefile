redis-oled-display: redis-oled-display.c
	gcc redis-oled-display.c -o redis-oled-display -lwiringPi -lhiredis

clean:
	rm -rf redis-oled-display
	
