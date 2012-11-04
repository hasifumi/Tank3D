class FieldScene extends Scene3D
  constructor:(obj3d)->
    super()
    game = enchant.Game.instance
    console.log "FieldScene loaded"

    light = new DirectionalLight()
    light.color = [1.0, 1.0, 1.0]
    @setDirectionalLight light

    camera = new Camera3D()
    camera.x = 0
    camera.y = 1
    camera.z = 15
    camera.centerY =  -1
    @setCamera camera
    
    for obj in obj3d
      @addChild obj

