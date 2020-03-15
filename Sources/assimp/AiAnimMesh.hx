package assimp;

import assimp.math.AiVector3D;
import cpp.RawPointer;

@:unreflective
@:include("assimp/scene.h")
@:native('aiAnimMesh')
@:structAccess
extern class AiAnimMesh {
	@:native("mNumVertices") public var numVertices:Int;
	@:native("mVertices") public var vertices:RawPointer<AiVector3D>;
	@:native("mNormals") public var normals:RawPointer<AiVector3D>;
	@:native("mTangents") public var tangents:RawPointer<AiVector3D>;
	@:native("mBitangents") public var bitangents:RawPointer<AiVector3D>;
}
