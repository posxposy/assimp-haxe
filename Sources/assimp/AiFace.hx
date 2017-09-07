package assimp;

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
}