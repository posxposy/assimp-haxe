package assimp;

/**
 * ...
 * @author Dmitry Hryppa	http://themozokteam.com/
 */
@:unreflective
@:include("assimp/scene.h")
@:native('cpp.Pointer<aiMaterial>')
extern class AiMaterial 
{
    @:native("ptr->mMaterialIndex") public var materialIndex:Int;
    @:native("ptr->GetTextureCount") public function getTextureCount(type:Int):UInt;
}