import 'package:dashboard_timeline_ui_demo/model/day_model.dart';
import 'package:dashboard_timeline_ui_demo/model/task_model.dart';
import 'package:dashboard_timeline_ui_demo/model/type_note_model.dart';
import 'package:flutter/material.dart';

List<Day> data = <Day>[
  Day(monthNumber: 1, weekDay: 'MON', tasks: [
    Task(
        title: 'Morning run in the park',
        description: 'Mon - Fri',
        done: true,
        notificable: false,
        time: '8:00'),
    Task(
        title: 'Skype meeting',
        description: 'Delivery overview',
        done: false,
        notificable: true,
        time: '10:00'),
    Task(
        title: 'Meeting with the design team',
        description: 'Project objectives',
        done: false,
        notificable: false,
        time: '11:00'),
    Task(
        title: 'Weekly Meeting with the team',
        description: 'On the list of issues',
        done: false,
        notificable: true,
        time: '12:00')
  ]),
  Day(monthNumber: 2, weekDay: 'TUE', tasks: [
    Task(
      title: 'Morning run in the park',
      description: 'Mon - Fri',
      done: true,
      notificable: false,
      time: '8:00',
    ),
    Task(
      title: 'Skype meeting',
      description: 'Delivery overview',
      done: false,
      notificable: true,
      time: '10:00',
    ),
    Task(
        title: 'Meeting with the design team',
        description: 'Project objectives',
        done: false,
        notificable: false,
        time: '12:00'),
    Task(
        title: 'Weekly Meeting with the team',
        description: 'On the list of issues',
        done: false,
        notificable: false,
        time: '13:00')
  ]),
  Day(monthNumber: 3, weekDay: 'WED', currentDay: true, tasks: [
    Task(
        title: 'Morning run in the park',
        description: 'Mon - Fri',
        done: true,
        notificable: false,
        time: '8:00'),
    Task(
        title: 'Skype meeting',
        description: 'Delivery overview',
        done: false,
        notificable: true,
        time: '11:00',
        currentTime: true),
    Task(
        title: 'Meeting with the design team',
        description: 'Project objectives',
        done: false,
        notificable: false,
        time: '12:00'),
    Task(
        title: 'Weekly Meeting with the team',
        description: 'On the list of issues',
        done: false,
        notificable: true,
        time: '16:00')
  ]),
  Day(monthNumber: 4, weekDay: 'THU', tasks: [
    Task(
        title: 'Morning run in the park',
        description: 'Mon - Fri',
        done: true,
        notificable: false,
        time: '8:00'),
    Task(
        title: 'Skype meeting',
        description: 'Delivery overview',
        done: false,
        notificable: false,
        time: '10:00'),
    Task(
        title: 'Meeting with the design team',
        description: 'Project objectives',
        done: false,
        notificable: true,
        time: '12:00'),
    Task(
        title: 'Weekly Meeting with the team',
        description: 'On the list of issues',
        done: false,
        notificable: true,
        time: '13:00')
  ]),
  Day(monthNumber: 5, weekDay: 'FRI', tasks: [
    Task(
        title: 'Morning run in the park',
        description: 'Mon - Fri',
        done: true,
        notificable: false,
        time: '8:00'),
    Task(
        title: 'Skype meeting',
        description: 'Delivery overview',
        done: false,
        notificable: true,
        time: '10:00'),
    Task(
        title: 'Meeting with the design team',
        description: 'Project objectives',
        done: false,
        notificable: true,
        time: '11:00'),
    Task(
        title: 'Weekly Meeting with the team',
        description: 'On the list of issues',
        done: false,
        notificable: false,
        time: '17:00')
  ]),
  Day(monthNumber: 6, weekDay: 'SAT', tasks: []),
  Day(monthNumber: 7, weekDay: 'SUN', tasks: []),
  Day(monthNumber: 8, weekDay: 'MON', tasks: [
    Task(
        title: 'Morning run in the park',
        description: 'Mon - Fri',
        done: true,
        notificable: false,
        time: '8:00'),
    Task(
        title: 'Skype meeting',
        description: 'Delivery overview',
        done: false,
        notificable: true,
        time: '10:00'),
    Task(
        title: 'Meeting with the design team',
        description: 'Project objectives',
        done: false,
        notificable: false,
        time: '11:00'),
    Task(
        title: 'Weekly Meeting with the team',
        description: 'On the list of issues',
        done: false,
        notificable: true,
        time: '12:00')
  ]),
  Day(monthNumber: 9, weekDay: 'TUE', tasks: [
    Task(
        title: 'Morning run in the park',
        description: 'Mon - Fri',
        done: true,
        notificable: false,
        time: '8:00'),
    Task(
        title: 'Skype meeting',
        description: 'Delivery overview',
        done: false,
        notificable: false,
        time: '10:00'),
    Task(
        title: 'Meeting with the design team',
        description: 'Project objectives',
        done: false,
        notificable: true,
        time: '12:00'),
    Task(
        title: 'Weekly Meeting with the team',
        description: 'On the list of issues',
        done: false,
        notificable: false,
        time: '15:00')
  ]),
];

List<TypeNote> typeNotes = <TypeNote>[
  TypeNote(title: 'All Tasks', items: 20, iconData: Icons.note),
  TypeNote(title: 'Personal', items: 100, iconData: Icons.person),
  TypeNote(title: 'Work', items: 100, iconData: Icons.work),
  TypeNote(title: 'Ideas', items: 1000, iconData: Icons.lightbulb_outline),
  TypeNote(title: 'Art Work', items: 42, iconData: Icons.art_track),
  TypeNote(title: 'Urgent', items: 2, iconData: Icons.warning),
];
