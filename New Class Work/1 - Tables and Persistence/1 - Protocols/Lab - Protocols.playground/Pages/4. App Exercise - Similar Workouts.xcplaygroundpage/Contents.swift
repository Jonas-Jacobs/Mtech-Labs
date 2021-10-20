/*:
## App Exercise - Similar Workouts
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 Previously in app exercises, you've used inheritance to enforce similar behavior between different kinds of workouts. However, you can enforce this behavior between different workouts using protocols.
 
 Create a protocol `Workout` with two requirements: a settable property called `distance` and a settable property called `time`, both of type `Double`.
 */
protocol Workout {
    var time: Double { get set }
    var distance: Double { get set}
}

//:  Create two structs, `RunningWorkout` and `SwimmingWorkout`. Both should conform to the `Workout` protocol. Uncomment the function `simpleWorkoutDescription` below, create an instance of each of your structs, and call `simpleWorkoutDescription` twice, passing in a `RunningWorkout` object and then a `SwimmingWorkout` object.
func simpleWorkoutDescription(workout: Workout) {
    print("You went \(workout.distance) meters in \(workout.time) seconds.")
}
struct RunningWorkout: Workout {
    var time: Double
    var distance: Double
}
struct SwimmingWorkout: Workout {
    var time: Double
    var distance: Double
}
let Workout1 = RunningWorkout(time: 12.0, distance: 12000.2)
let Workout2 = SwimmingWorkout(time: 145.35, distance: 123123.78)
simpleWorkoutDescription(workout: Workout1)
simpleWorkoutDescription(workout: Workout2)
/*:
[Previous](@previous)  |  page 4 of 5  |  [Next: App Exercise - Heart Rate Delegate](@next)
 */
