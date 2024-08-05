# The Template Method Pattern

The Template Method Pattern is a behavioral design pattern that defines the skeleton of an algorithm in a method, deferring some steps to subclasses. It allows subclasses to redefine certain steps of an algorithm without changing its structure.

## Basics

**Problem Statement:** Suppose you have an algorithm with multiple steps, and some of these steps can vary depending on the context. You want to allow subclasses to provide specific implementations for these steps while keeping the overall structure of the algorithm unchanged.

**Solution:** The Template Method Pattern suggests creating an abstract base class that defines the algorithm's structure in a method (the template method), and leaving the implementation of some steps to subclasses.

## Advanced Concepts

- **Hook Methods:** Optional methods in the base class that can be overridden by subclasses to provide additional behavior. These methods are usually empty in the base class.
- **Non-overridable Methods:** Methods in the base class that provide common functionality and cannot be overridden by subclasses. These methods can be marked as final in some languages, but Ruby does not have a built-in mechanism for this.
- **Template Method Inheritance:** The template method itself can be inherited, ensuring the algorithm's structure is consistent across subclasses.

## Summary

- **Template Method Pattern:** Defines the skeleton of an algorithm, allowing subclasses to provide specific implementations for certain steps.
- **Use Cases:** When you have an algorithm with multiple steps that can vary, and you want to keep the overall structure unchanged.
- **Hook Methods:** Optional methods that can be overridden by subclasses.
- **Non-overridable Methods:** Methods that provide common functionality and cannot be overridden by subclasses.
