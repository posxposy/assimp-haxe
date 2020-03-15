package assimp;

import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.Reference;
import cpp.Star;

/**
 * ...
 * @author Dmitry Hryppa	https://github.com/dmitryhryppa
 */
@:unreflective
@:include("assimp/scene.h")
@:native('aiString')
@:structAccess
extern class AiString {
	@:native("new aiString") public static function create():Pointer<AiString>;
	@:native("aiString") public static function make():Star<AiString>;
	@:native("C_Str") public function toConstCharStar():ConstCharStar;
}
