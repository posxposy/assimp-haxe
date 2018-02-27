package assimp;
import assimp.math.AiVector3D;
import cpp.Pointer;
import cpp.RawPointer;
import haxe.ds.Vector;

/**
 * ...
 * @author Dmitry Hryppa	http://themozokteam.com/
 */
@:unreflective
@:include("assimp/scene.h")
@:native('aiMesh')
extern class AiMesh {
    @:native("mNumVertices") public var numVertices:Int;
    @:native("mNumFaces") public var numFaces:Int;
    @:native("mMaterialIndex") public var materialIndex:Int;
    
    @:native("mVertices") public var vertices:RawPointer<AiVector3D>;
    @:native("mNormals") public var normals:RawPointer<AiVector3D>;
    @:native("mFaces") public var faces:RawPointer<AiFace>;
    @:native("mTextureCoords") public var textureCoords:RawPointer<RawPointer<AiVector3D>>;
    @:native("mTangents") public var tangents:RawPointer<AiVector3D>;
    @:native("mBitangents") public var bitangents:RawPointer<AiVector3D>;
}