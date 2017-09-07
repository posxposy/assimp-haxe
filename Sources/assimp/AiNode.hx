package assimp;
import cpp.ArrayBase;
import cpp.NativeArray;
import cpp.Star;
import cpp.VarArg;
import cpp.VirtualArray;
import cpp.VirtualArray.NativeVirtualArray;

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
    @:native("ptr->mChildren") public var children:Star<AiNode>;
}