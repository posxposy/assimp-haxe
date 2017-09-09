package assimp;
import cpp.Pointer;
import cpp.Reference;

/**
 * ...
 * @author Dmitry Hryppa	http://themozokteam.com/
 */
@:unreflective
@:include("assimp/scene.h")
@:native('aiFace')
@:structAccess
extern class AiFace 
{
    @:native("mNumIndices") public var numIndices:Int;
    @:native("mIndices") public var indices:AiFaceIndices;// AiFaceIndices;
}

abstract AiFaceIndices(Pointer<Int>)
{
    @:arrayAccess public function get(index:Int):Int
    {
        return untyped __cpp__("this1[index]");
    }
}