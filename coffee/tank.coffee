class Tank extends Sprite3D
  constructor:(map)->
    @game = enchant.Game.instance
    @set @game.assets[@game.CONST.MODEL_TANK]

