package assimp;

/**
 * ...
 * @author Dmitry Hryppa	https://github.com/dmitryhryppa
 */
@:unreflective
@:include('assimp/postprocess.h')
extern enum abstract AiPostProcess(AiPostProcessImpl) {
	@:native('aiPostProcessSteps::aiProcess_CalcTangentSpace')
	var calcTangentSpace;

	@:native('aiPostProcessSteps::aiProcess_JoinIdenticalVertices')
	var joinIdenticalVertices;

	@:native('aiPostProcessSteps::aiProcess_MakeLeftHanded')
	var makeLeftHanded;

	@:native('aiPostProcessSteps::aiProcess_Triangulate')
	var triangulate;

	@:native('aiPostProcessSteps::aiProcess_RemoveComponent')
	var removeComponent;

	@:native('aiPostProcessSteps::aiProcess_GenNormals')
	var genNormals;

	@:native('aiPostProcessSteps::aiProcess_GenSmoothNormals')
	var genSmoothNormals;

	@:native('aiPostProcessSteps::aiProcess_SplitLargeMeshes')
	var splitLargeMeshes;

	@:native('aiPostProcessSteps::aiProcess_PreTransformVertices')
	var preTransformVertices;

	@:native('aiPostProcessSteps::aiProcess_LimitBoneWeights')
	var limitBoneWeights;

	@:native('aiPostProcessSteps::aiProcess_ValidateDataStructure')
	var validateDataStructure;

	@:native('aiPostProcessSteps::aiProcess_ImproveCacheLocality')
	var improveCacheLocality;

	@:native('aiPostProcessSteps::aiProcess_RemoveRedundantMaterials')
	var removeRedundantMaterials;

	@:native('aiPostProcessSteps::aiProcess_FixInfacingNormals')
	var fixInfacingNormals;

	@:native('aiPostProcessSteps::aiProcess_SortByPType')
	var sortByPType;

	@:native('aiPostProcessSteps::aiProcess_FindDegenerates')
	var findDegenerates;

	@:native('aiPostProcessSteps::aiProcess_FindInvalidData')
	var findInvalidData;

	@:native('aiPostProcessSteps::aiProcess_GenUVCoords')
	var genUVCoords;

	@:native('aiPostProcessSteps::aiProcess_TransformUVCoords')
	var transformUVCoords;

	@:native('aiPostProcessSteps::aiProcess_FindInstances')
	var findInstances;

	@:native('aiPostProcessSteps::aiProcess_OptimizeMeshes')
	var optimizeMeshes;

	@:native('aiPostProcessSteps::aiProcess_OptimizeGraph')
	var optimizeGraph;

	@:native('aiPostProcessSteps::aiProcess_FlipUVs')
	var flipUVs;

	@:native('aiPostProcessSteps::aiProcess_FlipWindingOrder')
	var flipWindingOrder;

	@:native('aiPostProcessSteps::aiProcess_SplitByBoneCount')
	var splitByBoneCount;

	@:native('aiPostProcessSteps::aiProcess_Debone')
	var debone;

	@:op(A | B)
	public inline function bitwiseOr(v:AiPostProcess):AiPostProcess {
		return untyped __cpp__('{0} | {1}', this, v);
	}
}

@:unreflective
@:native("aiPostProcessSteps")
class AiPostProcessImpl {}
