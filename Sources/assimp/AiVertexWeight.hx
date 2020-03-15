package assimp;

@:unreflective
@:include("assimp/scene.h")
@:native('aiVertexWeight')
@:structAccess
extern class AiVertexWeight {
	@:native("mVertexId") public var vertexId:Int;
	@:native("mWeight") public var weight:Single;
}
