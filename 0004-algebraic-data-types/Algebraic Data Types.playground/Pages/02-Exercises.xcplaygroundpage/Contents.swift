/*:
 # Algebraic Data Types Exercises

 1. What algebraic operation does the function type `(A) -> B` correspond to? Try explicitly enumerating all the values of some small cases like `(Bool) -> Bool`, `(Unit) -> Bool`, `(Bool) -> Three` and `(Three) -> Bool` to get some intuition.
 */
// (Bool) -> Bool
func g1(_ x: Bool) -> Bool {
    switch x {
    case true: return true
    case false: return true
    }
}
func g2(_ x: Bool) -> Bool {
    switch x {
    case true: return true
    case false: return false
    }
}
func g3(_ x: Bool) -> Bool {
    switch x {
    case true: return false
    case false: return true
    }
}
func g4(_ x: Bool) -> Bool {
    switch x {
    case true: return false
    case false: return false
    }
}

// (Unit) -> Bool
struct Unit {}
let unit = Unit()
extension Unit: Equatable {
    static func == (lhs: Unit, rhs: Unit) -> Bool {
        return true
    }
}
func h1(_ x: Unit) -> Bool {
    return true
}
func h2(_ x: Unit) -> Bool {
    return false
}

// (Bool) -> Three
enum Three {
    case one
    case two
    case three
}
func f1(_ x: Bool) -> Three {
    switch x {
    case true:  return .one
    case false: return .one
    }
}
func f2(_ x: Bool) -> Three {
    switch x {
    case true:  return .one
    case false: return .two
    }
}
func f3(_ x: Bool) -> Three {
    switch x {
    case true:  return .one
    case false: return .three
    }
}
func f4(_ x: Bool) -> Three {
    switch x {
    case true:  return .two
    case false: return .two
    }
}
func f5(_ x: Bool) -> Three {
    switch x {
    case true:  return .two
    case false: return .one
    }
}
func f6(_ x: Bool) -> Three {
    switch x {
    case true:  return .two
    case false: return .three
    }
}
func f7(_ x: Bool) -> Three {
    switch x {
    case true:  return .three
    case false: return .three
    }
}
func f8(_ x: Bool) -> Three {
    switch x {
    case true:  return .three
    case false: return .one
    }
}
func f9(_ x: Bool) -> Three {
    switch x {
    case true:  return .three
    case false: return .two
    }
}

// It seems that (A) -> B corresponds to the operation B^A where ^ denotes
// exponentiation.

/*:
 2. Consider the following recursively defined data structure. Translate this type into an algebraic equation relating `List<A>` to `A`.
 */
indirect enum List<A> {
  case empty
  case cons(A, List<A>)
}
// List<A> = 1 + A * List<A>
/*:
 3. Is `Optional<Either<A, B>>` equivalent to `Either<Optional<A>, Optional<B>>`? If not, what additional values does one type have that the other doesn’t?
 */
// Optional<Either<A,B>> = 1 + (A + B)
// Either<Optional<A>, Optional<B>> = (1 + A) + (1 + B)
// so, the two are not equivalent. The second has an additional nil case.
/*:
 4. Is `Either<Optional<A>, B>` equivalent to `Optional<Either<A, B>>`?
 */
// (1 + A) + B
// 1 + (A + B)
/*:
 5. Swift allows you to pass types, like `A.self`, to functions that take arguments of `A.Type`. Overload the `*` and `+` infix operators with functions that take any type and build up an algebraic representation using `Pair` and `Either`. Explore how the precedence rules of both operators manifest themselves in the resulting types.
 */
// TODO
