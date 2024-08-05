# Singleton Design Pattern

The Singleton Design Pattern is another creational design pattern that ensures a class has only one instance and provides a global point of access to that instance. This pattern is useful when exactly one object is needed to coordinate actions across a system.

## Basics

### Problem Statement

Suppose you have a situation where multiple instances of a class can cause inconsistent behavior, like managing configuration settings or logging.

### Solution

The Singleton Design Pattern ensures that a class has only one instance and provides a global point of access to it.

## Basic Implementation

Let's start with a basic example to illustrate the Singleton Design Pattern in Ruby.

## Advanced Concepts

### Thread Safety

Ensure the Singleton implementation is thread-safe, especially in a multi-threaded environment.

### Lazy Initialization

Delay the creation of the Singleton instance until it's needed.

### Global State Management

Use Singleton to manage global states like configuration settings, logging, or connection pooling.

## Summary

- **Singleton Pattern**: Ensures a class has only one instance and provides a global point of access to it.
- **Use Cases**: Managing configuration settings, logging, connection pooling, etc.
- **Thread Safety**: Ensure the implementation is thread-safe.
- **Lazy Initialization**: Delay creation of the instance until it's needed.

## Alternate

To make a Singleton implementation thread-safe in Ruby, you can use a mutex. A mutex (short for "mutual exclusion") is a synchronization primitive used to protect shared resources from concurrent access by multiple threads.

### Implementing a Thread-safe Singleton with Mutex

Let's enhance the Singleton pattern to ensure thread safety using a mutex.

### Step-by-step Explanation

- **Mutex Initialization**: Create a mutex to synchronize access to the instance creation.
- **Lazy Initialization**: Create the Singleton instance only when it's needed, ensuring it's done in a thread-safe manner.

### Explanation

- **Initialization of Mutex**: `@mutex = Mutex.new` initializes a new mutex.
- **Lazy Initialization with Synchronization**:
  - `@mutex.synchronize do` ensures that only one thread can execute the block inside at a time.
  - `@instance ||= new` ensures that the instance is created only once. The `||=` operator assigns a new instance to `@instance` only if it is currently `nil`.

### Testing Thread Safety

To test the thread safety of this implementation, we can create multiple threads that attempt to access the Singleton instance concurrently.

```ruby
threads = 10.times.map do
  Thread.new do
    config = Configuration.instance
    puts config.object_id
  end
end

threads.each(&:join)
```

In this test, each thread will print the object ID of the Singleton instance. If the implementation is correct, all threads should print the same object ID, indicating that only one instance was created.

## Summary

- **Thread-safe Singleton**: Using a mutex to ensure that only one instance is created even when accessed by multiple threads concurrently.
- **Lazy Initialization**: The Singleton instance is created only when needed.
- **Use Cases**: This pattern is useful in multi-threaded environments to manage shared resources like configuration settings, logging, or connection pooling safely.
