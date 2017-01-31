#!/usr/bin/env python

from datetime import datetime
from collections import namedtuple
from collections


import sys

Event = namedtuple('Event', ['id', 'start_time', 'end_time'])

ConflictedTimeWindow = namedtuple('ConflictedTimeWindow', ['start_time', 'end_time', 'conflicted_event_ids'])

class Calendar(object):
    time_dict = dict()
    
    # Should allow multiple events to be scheduled over the same time window.
    def schedule(self, event):
        # IMPLEMENT ME
        
        #create a dictionary to store the events with id
        
        time_dict[getattr(event, 'id')] = [getattr(event, 'start_time'), getattr(event, 'end_time')]
        
        pass

    def find_conflicted_time_windows(self):
        # IMPLEMENT ME
        
        
        pass
    
    #create a function to check if two events overlaps
    def doOverlapself, (event1, event2)
        if even1.start_time < event2.end_time && event2.start)time < event1.end_time
            return true
        return false


def main(argv):
    calendar = Calendar()
    calendar.schedule(Event(1,
        datetime.strptime('2014-01-01 10:00', '%Y-%m-%d %H:%M'),
        datetime.strptime('2014-01-01 11:00', '%Y-%m-%d %H:%M')))
    calendar.schedule(Event(2,
        datetime.strptime('2014-01-01 11:00', '%Y-%m-%d %H:%M'),
        datetime.strptime('2014-01-01 12:00', '%Y-%m-%d %H:%M')))
    calendar.schedule(Event(3,
        datetime.strptime('2014-01-01 12:00', '%Y-%m-%d %H:%M'),
        datetime.strptime('2014-01-01 13:00', '%Y-%m-%d %H:%M')))

    calendar.schedule(Event(4,
        datetime.strptime('2014-01-02 10:00', '%Y-%m-%d %H:%M'),
        datetime.strptime('2014-01-02 11:00', '%Y-%m-%d %H:%M')))
    calendar.schedule(Event(5,
        datetime.strptime('2014-01-02 09:30', '%Y-%m-%d %H:%M'),
        datetime.strptime('2014-01-02 11:30', '%Y-%m-%d %H:%M')))
    calendar.schedule(Event(6,
        datetime.strptime('2014-01-02 08:30', '%Y-%m-%d %H:%M'),
        datetime.strptime('2014-01-02 12:30', '%Y-%m-%d %H:%M')))

    calendar.schedule(Event(7,
        datetime.strptime('2014-01-03 10:00', '%Y-%m-%d %H:%M'),
        datetime.strptime('2014-01-03 11:00', '%Y-%m-%d %H:%M')))
    calendar.schedule(Event(8,
        datetime.strptime('2014-01-03 09:30', '%Y-%m-%d %H:%M'),
        datetime.strptime('2014-01-03 10:30', '%Y-%m-%d %H:%M')))
    calendar.schedule(Event(9,
        datetime.strptime('2014-01-03 09:45', '%Y-%m-%d %H:%M'),
        datetime.strptime('2014-01-03 10:45', '%Y-%m-%d %H:%M')))

    print calendar.find_conflicted_time_windows()
    # Should print something like the following

    # [ConflictedTimeWindow(start_time=datetime.datetime(2014, 1, 2, 9, 30),
    #                       end_time=datetime.datetime(2014, 1, 2, 10, 0),
    #                       conflicted_event_ids=[5, 6]),
    #  ConflictedTimeWindow(start_time=datetime.datetime(2014, 1, 2, 10, 0),
    #                       end_time=datetime.datetime(2014, 1, 2, 11, 0),
    #                       conflicted_event_ids=[4, 5, 6]),
    #  ConflictedTimeWindow(start_time=datetime.datetime(2014, 1, 2, 11, 0),
    #                       end_time=datetime.datetime(2014, 1, 2, 11, 30),
    #                       conflicted_event_ids=[5, 6]),
    #  ConflictedTimeWindow(start_time=datetime.datetime(2014, 1, 3, 9, 45),
    #                       end_time=datetime.datetime(2014, 1, 3, 10, 0),
    #                       conflicted_event_ids=[8, 9]),
    #  ConflictedTimeWindow(start_time=datetime.datetime(2014, 1, 3, 10, 0),
    #                       end_time=datetime.datetime(2014, 1, 3, 10, 30),
    #                       conflicted_event_ids=[7, 8, 9]),
    #  ConflictedTimeWindow(start_time=datetime.datetime(2014, 1, 3, 10, 30),
    #                       end_time=datetime.datetime(2014, 1, 3, 10, 45),
    #                       conflicted_event_ids=[7, 9])]

main("")

