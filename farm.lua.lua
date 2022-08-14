local robot = require("robot")

function moveToStart()
  -- modify this if the charger is in a different place
end

function moveToCharger()
  robot.turnAround()
  for i = 1, 25 do
    robot.forward()
  end
  robot.turnRight()
  for i = 1, 4 do
    robot.forward()
  end
  robot.turnRight()
end

function plant()
  robot.forward()
  robot.swingDown()
  robot.suckDown()
  robot.placeDown()
end

function plantRow()
  for i = 1, 25 do
    plant()
  end
end

function reverseRight()
  robot.forward()
  robot.turnRight()
  robot.forward()
  robot.turnRight()
end

function reverseLeft()
  robot.forward()
  robot.turnLeft()
  robot.forward()
  robot.turnLeft()
end

while true do
  moveToStart()
  plantRow()
  reverseRight()
  plantRow()
  reverseLeft()
  plantRow()
  reverseRight()
  plantRow()
  reverseLeft()
  plantRow()
  moveToCharger()
  os.sleep(2400)
end