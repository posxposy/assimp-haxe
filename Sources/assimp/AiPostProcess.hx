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

	/**
	 * Shortcut flag for Direct3D-based applications.
	 *
	 * Supersedes the `makeLeftHanded` and `flipUVs` and
	 * `flipWindingOrder` flags.
	 * The output data matches Direct3D's conventions: left-handed geometry, upper-left
	 * origin for UV coordinates and finally clockwise face order, suitable for CCW culling.
	 *
	 * @return AiPostProcess
	 */
	@:deprecated
	public static inline function convertToLeftHanded():AiPostProcess {
		return untyped __cpp__('aiPostProcessSteps(aiProcess_ConvertToLeftHanded)');
	}

	/**
	 * Shortcut flag for Direct3D-based applications.
	 *
	 * Supersedes the `makeLeftHanded` and `flipUVs` and `flipWindingOrder` flags.
	 *
	 * The output data matches Direct3D's conventions: left-handed geometry, upper-left
	 * origin for UV coordinates and finally clockwise face order, suitable for CCW culling.
	 *
	 * @return AiPostProcess
	 */
	public static inline function targetRealtimeFast():AiPostProcess {
		return untyped __cpp__('aiPostProcessSteps(aiProcessPreset_TargetRealtime_Fast)');
	}

	/**
	 * Default postprocess configuration optimizing the data for real-time rendering.
	 *
	 * Applications would want to use this preset to load models on end-user PCs,
	 * maybe for direct use in game.
	 *
	 * If you're using DirectX, don't forget to combine this value with
	 * the `convertToLeftHanded()` step. If you don't support UV transformations
	 * in your application apply the `transformUVCoords` step, too.
	 *
	 * Please take the time to read the docs for the steps enabled by this preset.
	 * Some of them offer further configurable properties, while some of them might not be of
	 * use for you so it might be better to not specify them.
	 *
	 * @return AiPostProcess
	 */
	public static inline function targetRealtimeQuality():AiPostProcess {
		return untyped __cpp__('aiPostProcessSteps(aiProcessPreset_TargetRealtime_Quality)');
	}

	/**
	 * Default postprocess configuration optimizing the data for real-time rendering.
	 *
	 * Unlike `targetRealtimeFast()`, this configuration
	 * performs some extra optimizations to improve rendering speed and
	 * to minimize memory usage. It could be a good choice for a level editor
	 * environment where import speed is not so important.
	 *
	 * If you're using DirectX, don't forget to combine this value with
	 * the `convertToLeftHanded()` step. If you don't support UV transformations
	 * in your application apply the `transformUVCoords` step, too.
	 *
	 * Please take the time to read the docs for the steps enabled by this preset.
	 * Some of them offer further configurable properties, while some of them might not be
	 * of use for you so it might be better to not specify them.
	 *
	 * @return AiPostProcess
	 */
	public static inline function targetRealtimeMaxQuality():AiPostProcess {
		return untyped __cpp__('aiPostProcessSteps(aiProcessPreset_TargetRealtime_MaxQuality)');
	}
}

@:unreflective
@:native("aiPostProcessSteps")
extern class AiPostProcessImpl {}
