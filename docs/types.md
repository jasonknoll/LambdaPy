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
- `Succ : Int -> Succ Int`

## Char

### Interface

## List

### Interface
- `[] : []`
- `[a] : [a]`
- `(:) : (a, [a]) -- I think?`

## Linear

### Interface
- `linear : a -> Linear a`
- 


## Window

### Interface
- `buildWindow : IO (Linear Window)`
- `getWindowArea : Window -> IO (Linear Window, Linear WindowArea)`
- `setWindowArea : Window -> Linear WindowArea -> IO (Linear Window)`


## WindowArea

- `buildWindowArea : IO (Linear WindowArea)`
- `setDim : WindowArea -> (Int, Int) -> IO (Linear WindowArea)`
- `getDim : WindowArea -> IO (Linear WindowArea, (Int, Int))`
- `addWindowArea : WindowArea -> (String, Window Area) -> IO (Linear WindowArea)`
- `removeWindowArea : WindowArea -> String -> IO (Linear WindowArea)`
- `getWindowArea : WindowArea -> String -> IO (Linear WindowArea, Linear WindowArea)`
- `showWindowArea : WindowArea -> String -> IO (Linear WindowArea, Linear WindowArea)`
- `hideWindowArea : WindowArea -> String -> IO (Linear WindowArea, Linear WindowArea)`

- `addButton : WindowArea -> (String, WindowButton) -> IO (Linear WindowArea)`
- `removeButton : WindowArea -> String -> IO (Linear WindowArea)`

- `addWindowTextField : WindowArea -> (String, WindowTextField) -> IO (Linear WindowArea)`
- `removeWindowTextField : WindowArea -> String -> IO (Linear WindowArea)`

- `fillRect : WindowArea -> ((Int, Int), (Int, Int)) -> String -> IO (Linear WindowArea)`
- `drawLine : WindowArea -> ((Int, Int), (Int, Int)) -> String -> IO (Linear WindowArea)`
- `drawText : WindowArea -> (Int, Int) -> String -> IO (Linear WindowArea)`
- `setFont : WindowArea -> (Int, String, Maybe String) -> IO (Linear WindowArea)`


## WindowButton



## WindowTextField