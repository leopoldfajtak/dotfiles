#!python3
import time
from datetime import datetime, date
import subprocess
from astral import LocationInfo
from astral.sun import sun

# Enter your location info here
L = LocationInfo(
    name='Vienna',
    region='Austria',
    timezone='Europe/Vienna',
    latitude=48.2,
    longitude=16.4)

def set_theme(daylight):
    subprocess.run(
        '~/.config/themechange/settheme ' + ('bright' if daylight else 'dark'),
        shell=True)

def next_switch_in():
    s = sun(L.observer, date=date.today(), tzinfo=L.timezone)
    sunrise = seconds(s['dawn'])
    sunset = seconds(s['dusk'])
    """ Returns (daylight, time), where time is the time in seconds to the next sunrise or sunset,
    and daylight denotes whether or not the sun is up"""
    t = seconds(datetime.now())
    times = [(False, time_between(t, sunrise)),
        (True, time_between(t, sunset))]
    return min(times, key=lambda p: p[1])

def seconds(t):
    """Ignores date and calculates seconds from midnight"""
    return 60*(60*t.hour + t.minute) + t.second

def time_between(a, b):
    """a and b are in seconds from midnight, b is always after a (on the next day if necessary)"""
    return (b-a) % (24*60*60)

while True:
    sundata = next_switch_in()
    set_theme(sundata[0])
    # sleep for one second longer than necessary
    time.sleep(sundata[1])
