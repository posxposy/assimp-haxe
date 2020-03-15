package assimp;

import assimp.math.AiColor4D;
import assimp.math.AiVector3D;
import cpp.Pointer;
import cpp.RawPointer;
import cpp.Star;
import haxe.ds.Vector;

/**
 * ...
 * @author Dmitry Hryppa	https://github.com/dmitryhryppa
 */
@:structAccess
@:unreflective
@:include("assimp/scene.h")
@:native('aiMesh')
extern class AiMesh {
	@:native("mNumVertices") public var numVertices:Int;
	@:native("mNumFaces") public var numFaces:Int;
	@:native("mMaterialIndex") public var materialIndex:Int;
	@:native("mNumBones") public var numBones:Int;
	@:native("mNumAnimMeshes") public var numAnimMeshes:Int;

	@:native("mVertices") public var vertices:RawPointer<AiVector3D>;
	@:native("mNormals") public var normals:RawPointer<AiVector3D>;
	@:native("mFaces") public var faces:RawPointer<AiFace>;
	@:native("mBones") public var bones:RawPointer<Star<AiBone>>;
	@:native("mTextureCoords") public var textureCoords:RawPointer<RawPointer<AiVector3D>>;
	@:native("mTangents") public var tangents:RawPointer<AiVector3D>;
	@:native("mBitangents") public var bitangents:RawPointer<AiVector3D>;
	@:native("mColors") public var colors:RawPointer<RawPointer<AiColor4D>>;
	@:native("mAnimMeshes") public var animMeshes:RawPointer<Star<AiAnimMesh>>;

	@:native("HasVertexColors") public function hasVertexColors(index:Int):Bool;
	@:native("HasTextureCoords") public function hasTextureCoords(index:Int):Bool;
	@:native("HasBones") public function hasBones():Bool;
	@:native("HasNormals") public function hasNormals():Bool;
	@:native("HasFaces") public function hasFaces():Bool;
}
