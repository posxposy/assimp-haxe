package assimp;

import cpp.Float64;

@:unreflective
@:include("assimp/scene.h")
@:native('aiMeshKey')
@:structAccess
extern class AiMeshKey {
	@:native("mTime") public var name:Float64;
	@:native("mValue") public var value:Int;
}
