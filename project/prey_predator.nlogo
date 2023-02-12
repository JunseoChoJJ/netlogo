breed [wolves wolve]
breed [rabbits rabbit]

to setup
 clear-all
 create-wolves 10
  [ set color red
    setxy random-xcor random-ycor
  ]
 create-rabbits 50
  [ set color green
    setxy random-xcor random-ycor
  ]


 reset-ticks

end

to go
  ask wolves[
    fd 1
    rt random 360

  ]
  ask rabbits [
    fd 1
    rt random 360

  ]
  ask wolves [
    ask rabbits in-radius 1
    [die] ]


 tick
  if ticks mod 5 = 0 [
    ask n-of 1 rabbits [
      hatch-rabbits 3 [ set color white ]
    ]
  ]

end
