# build-dependencies: flatmap, maperror

Bacon.Observable :: flatMapError = (fn) ->
  withDescription(this, "flatMapError", fn, @mapError((err) -> new Error(err)).flatMap (x) ->
    if x.isError?()
      fn(x.error)
    else
      Bacon.once(x))
