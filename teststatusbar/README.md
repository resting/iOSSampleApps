iOS 7 Translucent status bar sample app.
===


## Objective
To allow content to scroll behind the status bar in iOS7. 

This can be easily achieved with a UINavigationController. But without one, some hacks are needed.

It falls back gracefully in iOS 6.

---

## UITableView contentInset
You'll need to set contentInset to the tableView so that content does not start behind the status bar.

[referece](http://stackoverflow.com/a/22022366/440646)

## UIToobar
You'll need an empty UIToolbar with height constrainted to 20 pixels as a background for the status bar.

[referece](http://stackoverflow.com/questions/19017620/how-to-make-the-status-bar-translucent-in-ios-7)