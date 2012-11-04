enchant()
class Tank3D extends Game
  config:{
    WIDTH: 640,
    HEIGHT: 640,
    FPS: 30,
  }
  CONST:{
    MODEL_TANK: "./model/tank.pmo",
  }
  constructor:->
    super(@config.WIDTH, @config.HEIGHT)
    @fps = @config.FPS
    @preload @CONST.MODEL_TANK
    @onload = ->
      @tank = new Tank()
      @scenes = {}
      @scenes.field = new FieldScene([@tank])

      @replaceScene @scenes.field
      return
    @start()

window.onload = ->
  new Tank3D

