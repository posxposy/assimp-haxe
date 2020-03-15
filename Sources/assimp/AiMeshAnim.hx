package assimp;

import cpp.Star;

@:unreflective
@:include("assimp/scene.h")
@:native('aiMeshAnim')
@:structAccess
extern class AiMeshAnim {
	@:native("mName") public var name:AiString;
	@:native("mNumKeys") public var numKeys:Int;
	@:native("aiMeshKey ") public var keys:Star<AiMeshKey>;
}
