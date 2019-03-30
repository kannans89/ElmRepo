# PackageManager

A package manager or package-management system automates the process of installing, upgrading, configuring, and removing computer programs for a computer's operating system in a consistent manner
Just like javascript have a package manager called `npm` , elm package manager is `elm-package`.This does three tasks

1. Install all dependencies that an elm application needs

2. If we create package ourselves and we want to publish for other people to use.
3. Helps to determine the version of your package when you are ready to publish and update.Elm takes advantage of the fact it is strongly typed functional language in order to provide lot of static analysis of your application and of your packages.It is gonna use this to analyze your API from the previous version of the package to a new one in order to determin what the proper semantic version of new package is.


## Example


Step1: create a folder and Make file VirtualDom.elm

```elm
import Html exposing (..)

main =
  div [] 
    [ h1 [] [ text "Tutorialspoint" ]
    , h2 [] [ text "Tutorialspoint" ]
    , h3 [] [ text "Tutorialspoint" ]
     , h4 [] [ text "Tutorialspoint" ]
    ]

```
step2: Navigate to that folder and type command

```elm
elm-package install
```

After this it will show followign screen ,this will install the three important libareis Core , html and virtualdom


```elm
Some new packages are needed. Here is the upgrade plan.

  Install:
    elm-lang/core 5.1.1
    elm-lang/html 2.0.0
    elm-lang/virtual-dom 2.0.4

Do you approve of this plan? [Y/n] Y
Starting downloads...

  ΓùÅ elm-lang/virtual-dom 2.0.4
  ΓùÅ elm-lang/html 2.0.0

ΓùÅPackages configured successfully!
 elm-lang/core 5.1.1

```

step 3: Now we need togeneralte html from elm file

`elm make .\VirtualDom.elm` . This will generate and Index.html file as shown below.Open in browser

!["Architecture"](https://github.com/kannans89/ElmRepo/blob/master/images/15_elm_package.PNG?raw=true)


### Example installing an external package elm-svg

step1 : Create a folder elmSvgApp

step2 : Install svg package using following command

```elm
elm-package install elm-lang/svg
```

step 3: Create a SvgDemo.elm file and type the following content

```elm
import Svg exposing (..)
import Svg.Attributes exposing (..)

main =
  svg
    [ width "120"
    , height "120"
    , viewBox "0 0 120 120"
    ]
    [ rect
        [ x "10"
        , y "10"
        , width "100"
        , height "100"
        , rx "15"
        , ry "15"
        ,fill "red"
        ]
        []
    ]

```

step 4: Now build the project using ` elm make .\SvgDemo.elm` .This will generate an index.html as shown below

!["Architecture"](https://github.com/kannans89/ElmRepo/blob/master/images/16_elm_svg.PNG?raw=true)
