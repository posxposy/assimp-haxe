package assimp;

import cpp.RawPointer;
import cpp.Reference;

/**
 * ...
 * @author Dmitry Hryppa	https://github.com/dmitryhryppa
 */
@:unreflective
@:include("assimp/scene.h")
@:native('aiMaterial')
extern class AiMaterial {
	@:native("mMaterialIndex") public var materialIndex:Int;
	@:native("GetTextureCount") public function getTextureCount(type:Int):Int;
	@:native("GetTexture") public function getTexture(type:Int, index:Int, path:Reference<AiString>):Int;
}
