# String

<!-- https://package.elm-lang.org/packages/elm/core/latest/String -->
In Elm strings are enclosed in `"" double quotes`.A String can represent any sequence of unicode characters. A `String` is a chunk of text as shown below.

```javascript

> "TutorialsPoint"
"TutorialsPoint" : String

```

## isEmpty function

```javascript
 String.isEmpty
<function> : String -> Bool
> String.isEmpty ""
True : Bool
> String.isEmpty "Tutorialspoint"
False : Bool

```

## reverse function

```javascript
> String.reverse
<function> : String -> String
> String.reverse "TutorialsPoint"
"tnioPslairotuT" : String
```

## length function

```javascript
> String.length
<function> : String -> Int
> String.length "Mohtashim"
9 : Int
```