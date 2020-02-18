+++
showonlyimage = false
draft = false
title = "go.mod files 101"
image = "img/golang.png"
weight = 0
+++

### go.mod
A [go.mod](https://github.com/golang/go/wiki/Modules#gomod) file lives at the root of modules directory. The file allows for four directives ```module```, ```require```, ```replace```, and ```exclude```.
#### Example:
{{< highlight go >}}
module github.com/user/packageName

require (
  github.com/dependency1 v1.2.3
  github.com/dependency2 v1.2.4
)
{{< / highlight >}}

You can name a module in the go.module file via the ```module``` directive.
