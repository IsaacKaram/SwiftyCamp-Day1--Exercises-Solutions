// SwiftyCamp iOS Development Bootcamp
// This our first day code excercises
// Thank you.

// Swift Method Overriding 2

// When a method in a subclass overrides a method in superclass, it is still possible to call the overridden method using super keyword. If you write super.func() to call the function func(), it will call the method that was defined in the superclass.

// Task
// Imagine and write the code that could make this output.

// Hello I am a motorcycle, I am a cycle with an engine.
private class Cycle{
    func Hello() -> String {
       return "I am a cycle"
    }
}

private class Motorcycle : Cycle{
    override func Hello() -> String{
        return "Hello I am a motorcycle , \(super.Hello()) with an engine."
    }
}

private let motorcycle = Motorcycle()
print(motorcycle.Hello())

