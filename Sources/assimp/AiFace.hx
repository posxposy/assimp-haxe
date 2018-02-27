package assimp;
import cpp.Pointer;
import cpp.RawPointer;
import cpp.Reference;

/**
 * ...
 * @author Dmitry Hryppa	http://themozokteam.com/
 */
@:unreflective
@:include("assimp/scene.h")
@:native('aiFace')
@:structAccess
extern class AiFace {
    @:native("mNumIndices") public var numIndices:Int;
    @:native("mIndices") public var indices:RawPointer<Int>;// AiFaceIndices;
}