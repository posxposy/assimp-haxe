package assimp;

/**
 * ...
 * @author Dmitry Hryppa	https://github.com/dmitryhryppa
 */
@:unreflective
@:include('assimp/material.h')
extern enum abstract AiTextureType(Int) {
	@:native("aiTextureType_NONE")
	var None;

	@:native("aiTextureType_DIFFUSE")
	var Diffuse;

	@:native("aiTextureType_SPECULAR")
	var Specular;

	@:native("aiTextureType_AMBIENT")
	var Ambient;

	@:native("aiTextureType_EMISSIVE")
	var Emissive;

	@:native("aiTextureType_HEIGHT")
	var Height;

	@:native("aiTextureType_NORMALS")
	var Normals;

	@:native("aiTextureType_SHININESS")
	var Shininess;

	@:native("aiTextureType_OPACITY")
	var Opacity;

	@:native("aiTextureType_DISPLACEMENT")
	var Displacement;

	@:native("aiTextureType_LIGHTMAP")
	var Lightmap;

	@:native("aiTextureType_REFLECTION")
	var Reflection;

	@:native("aiTextureType_BASE_COLOR")
	var BaseColor;

	@:native("aiTextureType_NORMAL_CAMERA")
	var NormalCamera;

	@:native("aiTextureType_EMISSION_COLOR")
	var EmissionColor;

	@:native("aiTextureType_METALNESS")
	var Metalness;

	@:native("aiTextureType_DIFFUSE_ROUGHNESS")
	var DiffuseRoughness;

	@:native("aiTextureType_AMBIENT_OCCLUSION")
	var AmbientOcclusion;

	@:native("aiTextureType_UNKNOWN")
	var Unknown;
}
