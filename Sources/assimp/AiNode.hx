package assimp;
import assimp.math.AiMatrix4x4;
import cpp.Pointer;

/**
 * ...
 * @author Dmitry Hryppa	http://themozokteam.com/
 */
@:unreflective
@:include("assimp/scene.h")
@:include("assimp/postprocess.h>")
@:native('cpp.Pointer<aiNode>')
extern class AiNode 
{
    @:native("ptr->mNumMeshes") public var numMeshes:Int;
    @:native("ptr->mNumChildren") public var numChildren:Int;
    @:native("ptr->mChildren") public var children:AiNodeChildren;
    @:native("ptr->mMeshes") public var meshes:AiNodeMeshes;
    @:native("ptr->mTransformation") public var transformation:AiMatrix4x4;
}

abstract AiNodeChildren(Pointer<AiNode>)
{
    @:arrayAccess public function get(index:Int):AiNode
    {
        return untyped __cpp__("this1[index]");
    }
}

abstract AiNodeMeshes(Pointer<Int>)
{
    @:arrayAccess public function get(index:Int):Int
    {
        return untyped __cpp__("this1[index]");
    }
}