nop = ->
latter = (_, x) -> x
former = (x, _) -> x
cloneArray = (xs) -> xs.slice(0)
assert = (message, condition) -> throw new Exception(message) unless condition
assertEventStream = (event) -> throw new Exception("not an EventStream : " + event) unless event.subscribe?
assertObservable = (event) -> throw new Exception("not an Observable : " + event) unless event.onValue?
assertFunction = (f) -> assert "not a function : " + f, _.isFunction(f)
isArray = (xs) -> xs instanceof Array
isObservable = (x) -> x.onValue?
assertArray = (xs) -> throw new Exception("not an array : " + xs) unless isArray(xs)
assertNoArguments = (args) -> assert "no arguments supported", args.length == 0
assertString = (x) -> throw new Exception("not a string : " + x) unless typeof x == "string"
