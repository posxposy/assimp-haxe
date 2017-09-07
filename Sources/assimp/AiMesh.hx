package assimp;
import assimp.math.AiVector3D;
import cpp.Pointer;
import haxe.ds.Vector;

/**
 * ...
 * @author Dmitry Hryppa	http://themozokteam.com/
 */
@:unreflective
@:include("assimp/scene.h")
@:native('cpp.Pointer<aiMesh>')
extern class AiMesh 
{
    @:native("ptr->mNumVertices") public var numVertices:Int;
    @:native("ptr->mNumFaces") public var numFaces:Int;
    @:native("ptr->mMaterialIndex") public var materialIndex:Int;
    
    @:native("ptr->mVertices") public var vertices:AiMeshVertices;
}

abstract AiMeshVertices(Pointer<AiVector3D>)
{
    @:arrayAccess public function get(index:Int):AiVector3D
    {
        return untyped __cpp__("this1[index]");
    }
}