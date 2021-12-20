# Types

## Unit

### Interface

## Bool

### Interface

- `and`
- `or`
- `not`
- `-- More logical operators?` 

## Int

### Interface
- `Succ                 : Int -> Succ Int`

## Char

### Interface

## List

### Interface

## Linear

### Interface
- `linear               : a -> Linear a`
- 


## Window

### Interface
- `buildWindow : IO (Linear Window)`
- `setDim : Linear Window -> (Int, Int) -> IO (Linear Window)`
- `getDim : Linear Window -> IO (Linear Window, (Int, Int))`
- `addWindowArea : Linear Window -> (String, WindowArea) -> IO (Linear Window)`
- `getWindowArea : Linear Window -> String -> IO (Linear Window, Linear WindowArea)`
- `showWindowArea : Linear Window -> String -> IO (Linear Window)`
- `hideWindowArea : Linear Window -> String -> IO (Linear Window)`


## WindowArea

- `buildWindowArea : IO (Linear Window)`
- `setDim : Linear WindowArea -> (Int, Int) -> IO (Linear Win)

## WindowButton

## WindowTextField