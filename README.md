This project is an example project I have worked on for applying the clean code pattern and a concrete seperation of concern.

### Technical decisions:
I have used clean code architecture in this project and decided to make each layer as a completely seperate package for maximum seperation of conecern. As you can see in the code, the 
`data` layer has 0 idea that there is another layer other than itself, `domain` layer only knows about `data` layer, and `presentation` only knows about `domain` layer.

At the start I tried to make `data` and `domain` layers as pure dart packages, but we do not live in an ideal world and I had to add flutter dependency to them as some packages dependencies required it.

For dependency injection I used [`riverpod`](https://pub.dev/packages/riverpod), and for state management I used [`bloc`](https://pub.dev/packages/bloc).

You can find a scripts folder on each layer that does necessary actions (for the scope of this small project there is only a `build_runner` executer script), and there is a script on the root of the project that does a complete cleaning & get packages which is required sometimes to get rid of caches.

The devices list is a json file, any changes you do to the devices (for the current scope only enable/disable is available) will be executed in the current app run, but will not be available if you restart the app, as this requires also including local data providers (such as hive), which will increase the execution time of the task.

The routines are completely provided by the user, stored in the local storage (using hive).

As for tests, there is a complete coverage for the data layer.
