package assimp;

/**
 * ...
 * @author Dmitry Hryppa	http://themozokteam.com/
 */
@:unreflective
@:include("assimp/scene.h")
@:native('aiMaterial')
extern class AiMaterial 
{
    @:native("mMaterialIndex") public var materialIndex:Int;
    @:native("GetTextureCount") public function getTextureCount(type:Int):UInt;
}