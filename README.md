## Installation

```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/noctryxzen/FilterGC/refs/heads/main/isGC.luau"))()
```
---

## Options

| Option | Type | Description | Default |
|--------|------|-------------|---------|
| Title | string | Notification title **(required)** | — |
| Text | string | Notification body text **(required)** | — |
| Duration | number | How long the notification stays (seconds) | 10 |
| Button1 | string | First button label | nil |
| Button2 | string | Second button label | nil |
| Button3 | string | Third button label | nil |
| Button4 | string | Fourth button label | nil |
| Callback | function | Called with button label when a button is clicked | nil |

---

## Examples

### No Buttons

```lua
SendNotification({
    Title = "Info",
    Text = "This notification has no buttons and will auto-dismiss.",
    Duration = 5
})
```

---

### One Button

```lua
SendNotification({
    Title = "Alert",
    Text = "Something happened.",
    Duration = 10,
    Button1 = "OK",
    Callback = function(btn)
        print("Clicked:", btn)
    end
})
```

---

### Two Buttons

```lua
SendNotification({
    Title = "Confirm",
    Text = "Do you want to continue?",
    Duration = 15,
    Button1 = "Yes",
    Button2 = "No",
    Callback = function(btn)
        if btn == "Yes" then
            print("Confirmed")
        else
            print("Cancelled")
        end
    end
})
```

---

### Three Buttons

```lua
SendNotification({
    Title = "Choose",
    Text = "Select an option.",
    Duration = 20,
    Button1 = "A",
    Button2 = "B",
    Button3 = "C",
    Callback = function(btn)
        print("Selected:", btn)
    end
})
```

---

### Four Buttons

```lua
SendNotification({
    Title = "Options",
    Text = "Pick one.",
    Duration = 20,
    Button1 = "Yes",
    Button2 = "No",
    Button3 = "Maybe",
    Button4 = "Cancel",
    Callback = function(btn)
        print("Clicked:", btn)
    end
})
```

---

### Infinite Duration

```lua
SendNotification({
    Title = "Persistent",
    Text = "This stays until a button is clicked.",
    Duration = math.huge,
    Button1 = "Dismiss",
    Callback = function(btn)
        print("Dismissed")
    end
})
```

---

### Queue Example

```lua
for i = 1, 6 do
    SendNotification({
        Title = "Notification " .. i,
        Text = "This is notification number " .. i,
        Duration = 5
    })
end
```
