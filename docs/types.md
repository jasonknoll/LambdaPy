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

Window Area Properties
- `buildWindowArea : IO (Linear WindowArea)`
- `setDim : WindowArea -> (Int, Int) -> IO (Linear WindowArea)`
- `getDim : WindowArea -> IO (Linear WindowArea, (Int, Int))`
- `addWindowArea : WindowArea -> (String, Window Area) -> IO (Linear WindowArea)`
- `removeWindowArea : WindowArea -> String -> IO (Linear WindowArea)`
- `getWindowArea : WindowArea -> String -> IO (Linear WindowArea, Linear WindowArea)`
- `showWindowArea : WindowArea -> String -> IO (Linear WindowArea, Linear WindowArea)`
- `hideWindowArea : WindowArea -> String -> IO (Linear WindowArea, Linear WindowArea)`

Button Functions
- `addButton : WindowArea -> (String, WindowButton) -> IO (Linear WindowArea)`
- `getButton : WindowArea -> String -> IO (Linear WindowArea, Linear WindowButton)`
- `removeButton : WindowArea -> String -> IO (Linear WindowArea)`

Text Field Functions
- `addTextField : WindowArea -> (String, WindowTextField) -> IO (Linear WindowArea)`
- `getTextField : WindowArea -> String -> IO (Linear WindowArea, Linear WindowTextField)`
- `removeTextField : WindowArea -> String -> IO (Linear WindowArea)`

Drawing Functions
- `fillRect : WindowArea -> ((Int, Int), (Int, Int)) -> String -> IO (Linear WindowArea)`
- `drawLine : WindowArea -> ((Int, Int), (Int, Int)) -> String -> IO (Linear WindowArea)`
- `drawText : WindowArea -> (Int, Int) -> String -> IO (Linear WindowArea)`
- `setFont : WindowArea -> (Int, String, Maybe String) -> IO (Linear WindowArea)`
- `clear : WindowArea -> IO (Linear WindowArea)`


## WindowButton

- `buildButton : IO (Linear WindowButton)`
- `setButtonText : WindowButton -> String -> IO (Linear WindowButton)`
- `bindAction : WindowButton -> IO () -> IO (Linear WindowArea, Linear WindowButton)`


## WindowTextField
- `buildTextField : IO (Linear TextField)`
- `setText : WindowTextField -> String -> IO (Linear WindowTextField)`