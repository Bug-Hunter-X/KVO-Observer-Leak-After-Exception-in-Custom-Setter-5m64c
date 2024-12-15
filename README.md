# Objective-C KVO: Unregistered Observer After Exception in Custom Setter

This repository demonstrates a subtle bug related to Key-Value Observing (KVO) in Objective-C.  When a custom setter throws an exception, the KVO observer might not be properly unregistered, leading to potential crashes or unexpected behavior.

The `KVOExceptionBug.m` file shows the problematic code.  The `KVOExceptionSolution.m` file provides a corrected implementation.

**Key Issue:** The problem lies in the exception handling within the custom setter.  If an exception occurs, the `removeObserver` call might not be reached, resulting in an unregistered observer that can cause problems.

**Solution:** Proper exception handling using `@try`/`@catch` blocks within the custom setter ensures that the observer is always removed, regardless of whether an exception occurs.