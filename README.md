

# Arc Slider

A highly customizable Arc slider for Flutter.

![Example 01](doc/slider00.gif) ![Example 02](doc/slider01.gif)


## Getting Started

- [Installation](#installation)

- [SleekCircularSlider parameters](#sleekcircularslider-parameters)


### Installation

Add

```bash

arc_slider : ^lastest_version

```

to your pubspec.yaml, and run

```bash
flutter packages get
```

in your project's root directory.

### Basic Usage


Import it to your project file

```dart
import 'package:arc_slider/arc_slider.dart';
```

And add it in its most basic form like it:

```dart
final slider = ArcSlider(
                      trackWidth: 14,
                      trackColor:Colors.red.
                      onChange : (double value) {
                        print(value);
                      });
```




### ArcSlider parameters


| Parameter                 |                       Default                       | Description                                                                                                             |
| :------------------------ | :-------------------------------------------------: | :---------------------------------------------------------------------------------------------------------------------- |
| **min** *double*                     |                         0                           | The minimum value the user can select.  Must be less than or equal to max. |
| **max** *double*                     |                         100                         | The maximum value the user can select. Must be greater than or equal to min.  |
| **onChange** *OnChange(double value)*|                                                     | Called during a drag when the user is selecting a new value for the slider by dragging. |




### ArcSlider width parameters

| Parameter                 |                       Default                       | Description                                                                                                             |
| :------------------------ | :-------------------------------------------------: | :---------------------------------------------------------------------------------------------------------------------- |
| **trackWidth** *double*              |                22                | The width of the slider's track.                        |
| **progressBarWidth** *double*        |                22                | The width of the slider's progress bar.                 |
| **thumbsize** *double*             |                44              | The size of the slider's thumb. |



### Arc slider color parameters

| Parameter                 |                       Default                       | Description                                                                                                             |
| :------------------------ | :-------------------------------------------------: | :---------------------------------------------------------------------------------------------------------------------- |
| **trackColor** *Color*               |                white with opacity                             | The color of the slider's track.                        |
| **fillColor** *Color*         |                    black                                 | The color of the slider's fill bar.  |
| **dotColor** *Color*                 |                black                             | The color of the slider's dot.                       |
| **thumbColor** *Color*                 |                black                             | The color of the slider's thumb.                       |




