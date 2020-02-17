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
extern class AiString {
	@:native("new aiString") public static function create():Pointer<AiString>;
	@:native("new aiString") public static function create2():Star<AiString>;
	@:native("C_Str") public function c_str():ConstCharStar;
}
