==========
VULKANINFO
==========

Vulkan Instance Version: 1.3.275


Instance Extensions: count = 24
===============================
	VK_EXT_acquire_drm_display             : extension revision 1
	VK_EXT_acquire_xlib_display            : extension revision 1
	VK_EXT_debug_report                    : extension revision 10
	VK_EXT_debug_utils                     : extension revision 2
	VK_EXT_direct_mode_display             : extension revision 1
	VK_EXT_display_surface_counter         : extension revision 1
	VK_EXT_headless_surface                : extension revision 1
	VK_EXT_surface_maintenance1            : extension revision 1
	VK_EXT_swapchain_colorspace            : extension revision 5
	VK_KHR_device_group_creation           : extension revision 1
	VK_KHR_display                         : extension revision 23
	VK_KHR_external_fence_capabilities     : extension revision 1
	VK_KHR_external_memory_capabilities    : extension revision 1
	VK_KHR_external_semaphore_capabilities : extension revision 1
	VK_KHR_get_display_properties2         : extension revision 1
	VK_KHR_get_physical_device_properties2 : extension revision 2
	VK_KHR_get_surface_capabilities2       : extension revision 1
	VK_KHR_portability_enumeration         : extension revision 1
	VK_KHR_surface                         : extension revision 25
	VK_KHR_surface_protected_capabilities  : extension revision 1
	VK_KHR_wayland_surface                 : extension revision 6
	VK_KHR_xcb_surface                     : extension revision 6
	VK_KHR_xlib_surface                    : extension revision 6
	VK_LUNARG_direct_driver_loading        : extension revision 1

Layers: count = 7
=================
VK_LAYER_INTEL_nullhw (INTEL NULL HW) Vulkan version 1.1.73, layer version 1:
	Layer Extensions: count = 0
	Devices: count = 1
		GPU id = 0 (Intel(R) Graphics (LNL))
		Layer-Device Extensions: count = 0

VK_LAYER_MESA_device_select (Linux device selection layer) Vulkan version 1.4.303, layer version 1:
	Layer Extensions: count = 0
	Devices: count = 1
		GPU id = 0 (Intel(R) Graphics (LNL))
		Layer-Device Extensions: count = 0

VK_LAYER_MESA_overlay (Mesa Overlay layer) Vulkan version 1.4.303, layer version 1:
	Layer Extensions: count = 0
	Devices: count = 1
		GPU id = 0 (Intel(R) Graphics (LNL))
		Layer-Device Extensions: count = 0

VK_LAYER_VALVE_steam_fossilize_32 (Steam Pipeline Caching Layer) Vulkan version 1.3.207, layer version 1:
	Layer Extensions: count = 0
	Devices: count = 1
		GPU id = 0 (Intel(R) Graphics (LNL))
		Layer-Device Extensions: count = 0

VK_LAYER_VALVE_steam_fossilize_64 (Steam Pipeline Caching Layer) Vulkan version 1.3.207, layer version 1:
	Layer Extensions: count = 0
	Devices: count = 1
		GPU id = 0 (Intel(R) Graphics (LNL))
		Layer-Device Extensions: count = 0

VK_LAYER_VALVE_steam_overlay_32 (Steam Overlay Layer) Vulkan version 1.3.207, layer version 1:
	Layer Extensions: count = 0
	Devices: count = 1
		GPU id = 0 (Intel(R) Graphics (LNL))
		Layer-Device Extensions: count = 0

VK_LAYER_VALVE_steam_overlay_64 (Steam Overlay Layer) Vulkan version 1.3.207, layer version 1:
	Layer Extensions: count = 0
	Devices: count = 1
		GPU id = 0 (Intel(R) Graphics (LNL))
		Layer-Device Extensions: count = 0

Presentable Surfaces:
=====================
GPU id : 0 (Intel(R) Graphics (LNL)) [VK_KHR_wayland_surface]:
	Surface type = VK_KHR_wayland_surface
	Formats: count = 14
		SurfaceFormat[0]:
			format = FORMAT_R16G16B16A16_SFLOAT
			colorSpace = COLOR_SPACE_SRGB_NONLINEAR_KHR
		SurfaceFormat[1]:
			format = FORMAT_A2R10G10B10_UNORM_PACK32
			colorSpace = COLOR_SPACE_SRGB_NONLINEAR_KHR
		SurfaceFormat[2]:
			format = FORMAT_B8G8R8A8_SRGB
			colorSpace = COLOR_SPACE_SRGB_NONLINEAR_KHR
		SurfaceFormat[3]:
			format = FORMAT_B8G8R8A8_UNORM
			colorSpace = COLOR_SPACE_SRGB_NONLINEAR_KHR
		SurfaceFormat[4]:
			format = FORMAT_R8G8B8A8_SRGB
			colorSpace = COLOR_SPACE_SRGB_NONLINEAR_KHR
		SurfaceFormat[5]:
			format = FORMAT_R8G8B8A8_UNORM
			colorSpace = COLOR_SPACE_SRGB_NONLINEAR_KHR
		SurfaceFormat[6]:
			format = FORMAT_R5G6B5_UNORM_PACK16
			colorSpace = COLOR_SPACE_SRGB_NONLINEAR_KHR
		SurfaceFormat[7]:
			format = FORMAT_R16G16B16A16_SFLOAT
			colorSpace = COLOR_SPACE_PASS_THROUGH_EXT
		SurfaceFormat[8]:
			format = FORMAT_A2R10G10B10_UNORM_PACK32
			colorSpace = COLOR_SPACE_PASS_THROUGH_EXT
		SurfaceFormat[9]:
			format = FORMAT_B8G8R8A8_SRGB
			colorSpace = COLOR_SPACE_PASS_THROUGH_EXT
		SurfaceFormat[10]:
			format = FORMAT_B8G8R8A8_UNORM
			colorSpace = COLOR_SPACE_PASS_THROUGH_EXT
		SurfaceFormat[11]:
			format = FORMAT_R8G8B8A8_SRGB
			colorSpace = COLOR_SPACE_PASS_THROUGH_EXT
		SurfaceFormat[12]:
			format = FORMAT_R8G8B8A8_UNORM
			colorSpace = COLOR_SPACE_PASS_THROUGH_EXT
		SurfaceFormat[13]:
			format = FORMAT_R5G6B5_UNORM_PACK16
			colorSpace = COLOR_SPACE_PASS_THROUGH_EXT
	Present Modes: count = 2
		PRESENT_MODE_MAILBOX_KHR
		PRESENT_MODE_FIFO_KHR
	VkSurfaceCapabilitiesKHR:
	-------------------------
		minImageCount = 4
		maxImageCount = 0
		currentExtent:
			width  = 4294967295
			height = 4294967295
		minImageExtent:
			width  = 1
			height = 1
		maxImageExtent:
			width  = 16384
			height = 16384
		maxImageArrayLayers = 1
		supportedTransforms: count = 1
			SURFACE_TRANSFORM_IDENTITY_BIT_KHR
		currentTransform = SURFACE_TRANSFORM_IDENTITY_BIT_KHR
		supportedCompositeAlpha: count = 2
			COMPOSITE_ALPHA_OPAQUE_BIT_KHR
			COMPOSITE_ALPHA_PRE_MULTIPLIED_BIT_KHR
		supportedUsageFlags: count = 7
			IMAGE_USAGE_TRANSFER_SRC_BIT
			IMAGE_USAGE_TRANSFER_DST_BIT
			IMAGE_USAGE_SAMPLED_BIT
			IMAGE_USAGE_STORAGE_BIT
			IMAGE_USAGE_COLOR_ATTACHMENT_BIT
			IMAGE_USAGE_INPUT_ATTACHMENT_BIT
			IMAGE_USAGE_ATTACHMENT_FEEDBACK_LOOP_BIT_EXT
	VkSurfaceProtectedCapabilitiesKHR:
	----------------------------------
		supportsProtected = false

	VK_EXT_surface_maintenance1:
	----------------------------
		PRESENT_MODE_MAILBOX_KHR:
			minImageCount = 4
			maxImageCount = 0
			VkSurfacePresentScalingCapabilitiesEXT:
				supportedPresentScaling:
					None
				supportedPresentGravityX:
					None
				supportedPresentGravityY:
					None
				minScaledImageExtent:
					width  = 1
					height = 1
				maxScaledImageExtent:
					width  = 16384
					height = 16384
			VkSurfacePresentModeCompatibilityEXT:
				presentModeCount                = 2
				pPresentModes: count = 2
					PRESENT_MODE_MAILBOX_KHR
					PRESENT_MODE_FIFO_KHR
		PRESENT_MODE_FIFO_KHR:
			minImageCount = 3
			maxImageCount = 0
			VkSurfacePresentScalingCapabilitiesEXT:
				supportedPresentScaling:
					None
				supportedPresentGravityX:
					None
				supportedPresentGravityY:
					None
				minScaledImageExtent:
					width  = 1
					height = 1
				maxScaledImageExtent:
					width  = 16384
					height = 16384
			VkSurfacePresentModeCompatibilityEXT:
				presentModeCount                = 2
				pPresentModes: count = 2
					PRESENT_MODE_FIFO_KHR
					PRESENT_MODE_MAILBOX_KHR


Device Properties and Extensions:
=================================
GPU0:
VkPhysicalDeviceProperties:
---------------------------
	apiVersion        = 1.4.318 (4211006)
	driverVersion     = 25.2.2 (104865794)
	vendorID          = 0x8086
	deviceID          = 0x64a0
	deviceType        = PHYSICAL_DEVICE_TYPE_INTEGRATED_GPU
	deviceName        = Intel(R) Graphics (LNL)
	pipelineCacheUUID = c250d42b-07c9-3ebb-8f02-ef5445a4ab5d

VkPhysicalDeviceLimits:
-----------------------
	maxImageDimension1D                             = 16384
	maxImageDimension2D                             = 16384
	maxImageDimension3D                             = 2048
	maxImageDimensionCube                           = 16384
	maxImageArrayLayers                             = 2048
	maxTexelBufferElements                          = 134217728
	maxUniformBufferRange                           = 1073741824
	maxStorageBufferRange                           = 4294967295
	maxPushConstantsSize                            = 256
	maxMemoryAllocationCount                        = 4294967295
	maxSamplerAllocationCount                       = 65536
	bufferImageGranularity                          = 0x00000001
	sparseAddressSpaceSize                          = 0xeffac0001000
	maxBoundDescriptorSets                          = 8
	maxPerStageDescriptorSamplers                   = 67108864
	maxPerStageDescriptorUniformBuffers             = 33554432
	maxPerStageDescriptorStorageBuffers             = 33554432
	maxPerStageDescriptorSampledImages              = 33554432
	maxPerStageDescriptorStorageImages              = 33554432
	maxPerStageDescriptorInputAttachments           = 64
	maxPerStageResources                            = 33554432
	maxDescriptorSetSamplers                        = 67108864
	maxDescriptorSetUniformBuffers                  = 33554432
	maxDescriptorSetUniformBuffersDynamic           = 8
	maxDescriptorSetStorageBuffers                  = 33554432
	maxDescriptorSetStorageBuffersDynamic           = 8
	maxDescriptorSetSampledImages                   = 33554432
	maxDescriptorSetStorageImages                   = 33554432
	maxDescriptorSetInputAttachments                = 256
	maxVertexInputAttributes                        = 29
	maxVertexInputBindings                          = 33
	maxVertexInputAttributeOffset                   = 2047
	maxVertexInputBindingStride                     = 4095
	maxVertexOutputComponents                       = 128
	maxTessellationGenerationLevel                  = 64
	maxTessellationPatchSize                        = 32
	maxTessellationControlPerVertexInputComponents  = 128
	maxTessellationControlPerVertexOutputComponents = 128
	maxTessellationControlPerPatchOutputComponents  = 128
	maxTessellationControlTotalOutputComponents     = 2048
	maxTessellationEvaluationInputComponents        = 128
	maxTessellationEvaluationOutputComponents       = 128
	maxGeometryShaderInvocations                    = 32
	maxGeometryInputComponents                      = 128
	maxGeometryOutputComponents                     = 128
	maxGeometryOutputVertices                       = 256
	maxGeometryTotalOutputComponents                = 1024
	maxFragmentInputComponents                      = 116
	maxFragmentOutputAttachments                    = 8
	maxFragmentDualSrcAttachments                   = 1
	maxFragmentCombinedOutputResources              = 67108872
	maxComputeSharedMemorySize                      = 131072
	maxComputeWorkGroupCount: count = 3
		65535
		65535
		65535
	maxComputeWorkGroupInvocations                  = 1024
	maxComputeWorkGroupSize: count = 3
		1024
		1024
		1024
	subPixelPrecisionBits                           = 8
	subTexelPrecisionBits                           = 8
	mipmapPrecisionBits                             = 8
	maxDrawIndexedIndexValue                        = 4294967295
	maxDrawIndirectCount                            = 4294967295
	maxSamplerLodBias                               = 16
	maxSamplerAnisotropy                            = 16
	maxViewports                                    = 16
	maxViewportDimensions: count = 2
		16384
		16384
	viewportBoundsRange: count = 2
		-32768
		32767
	viewportSubPixelBits                            = 13
	minMemoryMapAlignment                           = 4096
	minTexelBufferOffsetAlignment                   = 0x00000010
	minUniformBufferOffsetAlignment                 = 0x00000040
	minStorageBufferOffsetAlignment                 = 0x00000004
	minTexelOffset                                  = -8
	maxTexelOffset                                  = 7
	minTexelGatherOffset                            = -32
	maxTexelGatherOffset                            = 31
	minInterpolationOffset                          = -0.5
	maxInterpolationOffset                          = 0.4375
	subPixelInterpolationOffsetBits                 = 4
	maxFramebufferWidth                             = 16384
	maxFramebufferHeight                            = 16384
	maxFramebufferLayers                            = 2048
	framebufferColorSampleCounts: count = 5
		SAMPLE_COUNT_1_BIT
		SAMPLE_COUNT_2_BIT
		SAMPLE_COUNT_4_BIT
		SAMPLE_COUNT_8_BIT
		SAMPLE_COUNT_16_BIT
	framebufferDepthSampleCounts: count = 5
		SAMPLE_COUNT_1_BIT
		SAMPLE_COUNT_2_BIT
		SAMPLE_COUNT_4_BIT
		SAMPLE_COUNT_8_BIT
		SAMPLE_COUNT_16_BIT
	framebufferStencilSampleCounts: count = 5
		SAMPLE_COUNT_1_BIT
		SAMPLE_COUNT_2_BIT
		SAMPLE_COUNT_4_BIT
		SAMPLE_COUNT_8_BIT
		SAMPLE_COUNT_16_BIT
	framebufferNoAttachmentsSampleCounts: count = 5
		SAMPLE_COUNT_1_BIT
		SAMPLE_COUNT_2_BIT
		SAMPLE_COUNT_4_BIT
		SAMPLE_COUNT_8_BIT
		SAMPLE_COUNT_16_BIT
	maxColorAttachments                             = 8
	sampledImageColorSampleCounts: count = 5
		SAMPLE_COUNT_1_BIT
		SAMPLE_COUNT_2_BIT
		SAMPLE_COUNT_4_BIT
		SAMPLE_COUNT_8_BIT
		SAMPLE_COUNT_16_BIT
	sampledImageIntegerSampleCounts: count = 5
		SAMPLE_COUNT_1_BIT
		SAMPLE_COUNT_2_BIT
		SAMPLE_COUNT_4_BIT
		SAMPLE_COUNT_8_BIT
		SAMPLE_COUNT_16_BIT
	sampledImageDepthSampleCounts: count = 5
		SAMPLE_COUNT_1_BIT
		SAMPLE_COUNT_2_BIT
		SAMPLE_COUNT_4_BIT
		SAMPLE_COUNT_8_BIT
		SAMPLE_COUNT_16_BIT
	sampledImageStencilSampleCounts: count = 5
		SAMPLE_COUNT_1_BIT
		SAMPLE_COUNT_2_BIT
		SAMPLE_COUNT_4_BIT
		SAMPLE_COUNT_8_BIT
		SAMPLE_COUNT_16_BIT
	storageImageSampleCounts: count = 1
		SAMPLE_COUNT_1_BIT
	maxSampleMaskWords                              = 1
	timestampComputeAndGraphics                     = true
	timestampPeriod                                 = 52.0833
	maxClipDistances                                = 8
	maxCullDistances                                = 8
	maxCombinedClipAndCullDistances                 = 8
	discreteQueuePriorities                         = 2
	pointSizeRange: count = 2
		0.125
		255.875
	lineWidthRange: count = 2
		0
		8
	pointSizeGranularity                            = 0.125
	lineWidthGranularity                            = 0.0078125
	strictLines                                     = false
	standardSampleLocations                         = true
	optimalBufferCopyOffsetAlignment                = 0x00000080
	optimalBufferCopyRowPitchAlignment              = 0x00000080
	nonCoherentAtomSize                             = 0x00000040

VkPhysicalDeviceSparseProperties:
---------------------------------
	residencyStandard2DBlockShape            = true
	residencyStandard2DMultisampleBlockShape = false
	residencyStandard3DBlockShape            = true
	residencyAlignedMipSize                  = false
	residencyNonResidentStrict               = true

VkPhysicalDeviceAccelerationStructurePropertiesKHR:
---------------------------------------------------
	maxGeometryCount                                           = 16777215
	maxInstanceCount                                           = 16777215
	maxPrimitiveCount                                          = 536870911
	maxPerStageDescriptorAccelerationStructures                = 65535
	maxPerStageDescriptorUpdateAfterBindAccelerationStructures = 65535
	maxDescriptorSetAccelerationStructures                     = 65535
	maxDescriptorSetUpdateAfterBindAccelerationStructures      = 65535
	minAccelerationStructureScratchOffsetAlignment             = 64

VkPhysicalDeviceComputeShaderDerivativesPropertiesKHR:
------------------------------------------------------
	meshAndTaskShaderDerivatives = true

VkPhysicalDeviceConservativeRasterizationPropertiesEXT:
-------------------------------------------------------
	primitiveOverestimationSize                 = 0.00195312
	maxExtraPrimitiveOverestimationSize         = 0
	extraPrimitiveOverestimationSizeGranularity = 0
	primitiveUnderestimation                    = false
	conservativePointAndLineRasterization       = false
	degenerateTrianglesRasterized               = true
	degenerateLinesRasterized                   = false
	fullyCoveredFragmentShaderInputVariable     = false
	conservativeRasterizationPostDepthCoverage  = true

VkPhysicalDeviceCooperativeMatrixPropertiesKHR:
-----------------------------------------------
	cooperativeMatrixSupportedStages: count = 1
		SHADER_STAGE_COMPUTE_BIT

VkPhysicalDeviceCustomBorderColorPropertiesEXT:
-----------------------------------------------
	maxCustomBorderColorSamplers = 4096

VkPhysicalDeviceDescriptorBufferDensityMapPropertiesEXT:
--------------------------------------------------------
	combinedImageSamplerDensityMapDescriptorSize = 0

VkPhysicalDeviceDescriptorBufferPropertiesEXT:
----------------------------------------------
	combinedImageSamplerDescriptorSingleArray            = true
	bufferlessPushDescriptors                            = true
	allowSamplerImageViewPostSubmitCreation              = true
	descriptorBufferOffsetAlignment                      = 0x00000040
	maxDescriptorBufferBindings                          = 8
	maxResourceDescriptorBufferBindings                  = 8
	maxSamplerDescriptorBufferBindings                   = 8
	maxEmbeddedImmutableSamplerBindings                  = 8
	maxEmbeddedImmutableSamplers                         = 2048
	bufferCaptureReplayDescriptorDataSize                = 8
	imageCaptureReplayDescriptorDataSize                 = 32
	imageViewCaptureReplayDescriptorDataSize             = 0
	samplerCaptureReplayDescriptorDataSize               = 4
	accelerationStructureCaptureReplayDescriptorDataSize = 0
	samplerDescriptorSize                                = 32
	combinedImageSamplerDescriptorSize                   = 128
	sampledImageDescriptorSize                           = 64
	storageImageDescriptorSize                           = 64
	uniformTexelBufferDescriptorSize                     = 64
	robustUniformTexelBufferDescriptorSize               = 64
	storageTexelBufferDescriptorSize                     = 64
	robustStorageTexelBufferDescriptorSize               = 64
	uniformBufferDescriptorSize                          = 64
	robustUniformBufferDescriptorSize                    = 64
	storageBufferDescriptorSize                          = 64
	robustStorageBufferDescriptorSize                    = 64
	inputAttachmentDescriptorSize                        = 64
	accelerationStructureDescriptorSize                  = 16
	maxSamplerDescriptorBufferRange                      = 0x80000000
	maxResourceDescriptorBufferRange                     = 0x80000000
	samplerDescriptorBufferAddressSpaceSize              = 0x80000000
	resourceDescriptorBufferAddressSpaceSize             = 0x80000000
	descriptorBufferAddressSpaceSize                     = 0x80000000

VkPhysicalDeviceDrmPropertiesEXT:
---------------------------------
	hasPrimary   = true
	hasRender    = true
	primaryMajor = 226
	primaryMinor = 1
	renderMajor  = 226
	renderMinor  = 128

VkPhysicalDeviceExtendedDynamicState3PropertiesEXT:
---------------------------------------------------
	dynamicPrimitiveTopologyUnrestricted = true

VkPhysicalDeviceExternalMemoryHostPropertiesEXT:
------------------------------------------------
	minImportedHostPointerAlignment = 0x00001000

VkPhysicalDeviceFragmentShaderBarycentricPropertiesKHR:
-------------------------------------------------------
	triStripVertexOrderIndependentOfProvokingVertex = false

VkPhysicalDeviceFragmentShadingRatePropertiesKHR:
-------------------------------------------------
	minFragmentShadingRateAttachmentTexelSize:
		width  = 8
		height = 8
	maxFragmentShadingRateAttachmentTexelSize:
		width  = 8
		height = 8
	maxFragmentShadingRateAttachmentTexelSizeAspectRatio = 1
	primitiveFragmentShadingRateWithMultipleViewports    = true
	layeredShadingRateAttachments                        = true
	fragmentShadingRateNonTrivialCombinerOps             = true
	maxFragmentSize:
		width  = 4
		height = 4
	maxFragmentSizeAspectRatio                           = 2
	maxFragmentShadingRateCoverageSamples                = 64
	maxFragmentShadingRateRasterizationSamples           = SAMPLE_COUNT_4_BIT
	fragmentShadingRateWithShaderDepthStencilWrites      = false
	fragmentShadingRateWithSampleMask                    = true
	fragmentShadingRateWithShaderSampleMask              = false
	fragmentShadingRateWithConservativeRasterization     = true
	fragmentShadingRateWithFragmentShaderInterlock       = true
	fragmentShadingRateWithCustomSampleLocations         = true
	fragmentShadingRateStrictMultiplyCombiner            = true

VkPhysicalDeviceGraphicsPipelineLibraryPropertiesEXT:
-----------------------------------------------------
	graphicsPipelineLibraryFastLinking                        = true
	graphicsPipelineLibraryIndependentInterpolationDecoration = true

VkPhysicalDeviceLayeredApiPropertiesListKHR:
--------------------------------------------
	layeredApiCount               = 0
	pLayeredApis                  = NULL

VkPhysicalDeviceLegacyVertexAttributesPropertiesEXT:
----------------------------------------------------
	nativeUnalignedPerformance = true

VkPhysicalDeviceMaintenance7PropertiesKHR:
------------------------------------------
	robustFragmentShadingRateAttachmentAccess                 = true
	separateDepthStencilAttachmentAccess                      = true
	maxDescriptorSetTotalUniformBuffersDynamic                = 16
	maxDescriptorSetTotalStorageBuffersDynamic                = 16
	maxDescriptorSetTotalBuffersDynamic                       = 16
	maxDescriptorSetUpdateAfterBindTotalUniformBuffersDynamic = 16
	maxDescriptorSetUpdateAfterBindTotalStorageBuffersDynamic = 16
	maxDescriptorSetUpdateAfterBindTotalBuffersDynamic        = 16

VkPhysicalDeviceMapMemoryPlacedPropertiesEXT:
---------------------------------------------
	minPlacedMemoryMapAlignment = 0x00001000

VkPhysicalDeviceMeshShaderPropertiesEXT:
----------------------------------------
	maxTaskWorkGroupTotalCount            = 4194304
	maxTaskWorkGroupCount: count = 3
		65535
		65535
		65535
	maxTaskWorkGroupInvocations           = 1024
	maxTaskWorkGroupSize: count = 3
		1024
		1024
		1024
	maxTaskPayloadSize                    = 65504
	maxTaskSharedMemorySize               = 131072
	maxTaskPayloadAndSharedMemorySize     = 196576
	maxMeshWorkGroupTotalCount            = 4194304
	maxMeshWorkGroupCount: count = 3
		65535
		65535
		65535
	maxMeshWorkGroupInvocations           = 1024
	maxMeshWorkGroupSize: count = 3
		1024
		1024
		1024
	maxMeshSharedMemorySize               = 131072
	maxMeshPayloadAndSharedMemorySize     = 196576
	maxMeshOutputMemorySize               = 32768
	maxMeshPayloadAndOutputMemorySize     = 98272
	maxMeshOutputComponents               = 128
	maxMeshOutputVertices                 = 256
	maxMeshOutputPrimitives               = 256
	maxMeshOutputLayers                   = 2048
	maxMeshMultiviewViewCount             = 1
	meshOutputPerVertexGranularity        = 8
	meshOutputPerPrimitiveGranularity     = 8
	maxPreferredTaskWorkGroupInvocations  = 16
	maxPreferredMeshWorkGroupInvocations  = 16
	prefersLocalInvocationVertexOutput    = false
	prefersLocalInvocationPrimitiveOutput = false
	prefersCompactVertexOutput            = false
	prefersCompactPrimitiveOutput         = false

VkPhysicalDeviceMultiDrawPropertiesEXT:
---------------------------------------
	maxMultiDrawCount = 2048

VkPhysicalDeviceNestedCommandBufferPropertiesEXT:
-------------------------------------------------
	maxCommandBufferNestingLevel = 4294967295

VkPhysicalDevicePCIBusInfoPropertiesEXT:
----------------------------------------
	pciDomain   = 0
	pciBus      = 0
	pciDevice   = 2
	pciFunction = 0

VkPhysicalDeviceProvokingVertexPropertiesEXT:
---------------------------------------------
	provokingVertexModePerPipeline                       = true
	transformFeedbackPreservesTriangleFanProvokingVertex = false

VkPhysicalDeviceRayTracingPipelinePropertiesKHR:
------------------------------------------------
	shaderGroupHandleSize              = 32
	maxRayRecursionDepth               = 31
	maxShaderGroupStride               = 65535
	shaderGroupBaseAlignment           = 16
	shaderGroupHandleCaptureReplaySize = 32
	maxRayDispatchInvocationCount      = 1073741824
	shaderGroupHandleAlignment         = 16
	maxRayHitAttributeSize             = 64

VkPhysicalDeviceRobustness2PropertiesEXT:
-----------------------------------------
	robustStorageBufferAccessSizeAlignment = 0x00000004
	robustUniformBufferAccessSizeAlignment = 0x00000040

VkPhysicalDeviceSampleLocationsPropertiesEXT:
---------------------------------------------
	sampleLocationSampleCounts: count = 4
		SAMPLE_COUNT_2_BIT
		SAMPLE_COUNT_4_BIT
		SAMPLE_COUNT_8_BIT
		SAMPLE_COUNT_16_BIT
	maxSampleLocationGridSize:
		width  = 1
		height = 1
	sampleLocationCoordinateRange: count = 2
		0
		0.9375
	sampleLocationSubPixelBits       = 4
	variableSampleLocations          = true

VkPhysicalDeviceShaderModuleIdentifierPropertiesEXT:
----------------------------------------------------
	shaderModuleIdentifierAlgorithmUUID     = 4d455341-2d42-4c41-4b45-330000000000

VkPhysicalDeviceTransformFeedbackPropertiesEXT:
-----------------------------------------------
	maxTransformFeedbackStreams                = 4
	maxTransformFeedbackBuffers                = 4
	maxTransformFeedbackBufferSize             = 0x100000000
	maxTransformFeedbackStreamDataSize         = 512
	maxTransformFeedbackBufferDataSize         = 512
	maxTransformFeedbackBufferDataStride       = 2048
	transformFeedbackQueries                   = true
	transformFeedbackStreamsLinesTriangles     = false
	transformFeedbackRasterizationStreamSelect = false
	transformFeedbackDraw                      = true

VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT:
----------------------------------------------------
	maxVertexAttribDivisor = 268435455

VkPhysicalDeviceVulkan11Properties:
-----------------------------------
	deviceUUID                        = 8680a064-0400-0000-0002-000000000000
	driverUUID                        = 99e83346-9369-8c93-d20d-f12fe3f418ae
	deviceNodeMask                    = 0
	deviceLUIDValid                   = false
	subgroupSize                      = 32
	subgroupSupportedStages: count = 14
		SHADER_STAGE_VERTEX_BIT
		SHADER_STAGE_TESSELLATION_CONTROL_BIT
		SHADER_STAGE_TESSELLATION_EVALUATION_BIT
		SHADER_STAGE_GEOMETRY_BIT
		SHADER_STAGE_FRAGMENT_BIT
		SHADER_STAGE_COMPUTE_BIT
		SHADER_STAGE_RAYGEN_BIT_KHR
		SHADER_STAGE_ANY_HIT_BIT_KHR
		SHADER_STAGE_CLOSEST_HIT_BIT_KHR
		SHADER_STAGE_MISS_BIT_KHR
		SHADER_STAGE_INTERSECTION_BIT_KHR
		SHADER_STAGE_CALLABLE_BIT_KHR
		SHADER_STAGE_TASK_BIT_EXT
		SHADER_STAGE_MESH_BIT_EXT
	subgroupSupportedOperations: count = 10
		SUBGROUP_FEATURE_BASIC_BIT
		SUBGROUP_FEATURE_VOTE_BIT
		SUBGROUP_FEATURE_ARITHMETIC_BIT
		SUBGROUP_FEATURE_BALLOT_BIT
		SUBGROUP_FEATURE_SHUFFLE_BIT
		SUBGROUP_FEATURE_SHUFFLE_RELATIVE_BIT
		SUBGROUP_FEATURE_CLUSTERED_BIT
		SUBGROUP_FEATURE_QUAD_BIT
		SUBGROUP_FEATURE_ROTATE_BIT
		SUBGROUP_FEATURE_ROTATE_CLUSTERED_BIT
	subgroupQuadOperationsInAllStages = true
	pointClippingBehavior             = POINT_CLIPPING_BEHAVIOR_USER_CLIP_PLANES_ONLY
	maxMultiviewViewCount             = 16
	maxMultiviewInstanceIndex         = 268435455
	protectedNoFault                  = false
	maxPerSetDescriptors              = 1024
	maxMemoryAllocationSize           = 0x1e8e86000

VkPhysicalDeviceVulkan12Properties:
-----------------------------------
	driverID                                             = DRIVER_ID_INTEL_OPEN_SOURCE_MESA
	driverName                                           = Intel open-source Mesa driver
	driverInfo                                           = Mesa 25.2.2 - kisak-mesa PPA
	conformanceVersion:
		major    = 1
		minor    = 4
		subminor = 0
		patch    = 0
	denormBehaviorIndependence                           = SHADER_FLOAT_CONTROLS_INDEPENDENCE_ALL
	roundingModeIndependence                             = SHADER_FLOAT_CONTROLS_INDEPENDENCE_NONE
	shaderSignedZeroInfNanPreserveFloat16                = true
	shaderSignedZeroInfNanPreserveFloat32                = true
	shaderSignedZeroInfNanPreserveFloat64                = true
	shaderDenormPreserveFloat16                          = true
	shaderDenormPreserveFloat32                          = true
	shaderDenormPreserveFloat64                          = true
	shaderDenormFlushToZeroFloat16                       = false
	shaderDenormFlushToZeroFloat32                       = true
	shaderDenormFlushToZeroFloat64                       = true
	shaderRoundingModeRTEFloat16                         = true
	shaderRoundingModeRTEFloat32                         = true
	shaderRoundingModeRTEFloat64                         = true
	shaderRoundingModeRTZFloat16                         = true
	shaderRoundingModeRTZFloat32                         = true
	shaderRoundingModeRTZFloat64                         = true
	maxUpdateAfterBindDescriptorsInAllPools              = 33554432
	shaderUniformBufferArrayNonUniformIndexingNative     = false
	shaderSampledImageArrayNonUniformIndexingNative      = false
	shaderStorageBufferArrayNonUniformIndexingNative     = true
	shaderStorageImageArrayNonUniformIndexingNative      = false
	shaderInputAttachmentArrayNonUniformIndexingNative   = false
	robustBufferAccessUpdateAfterBind                    = true
	quadDivergentImplicitLod                             = false
	maxPerStageDescriptorUpdateAfterBindSamplers         = 67108864
	maxPerStageDescriptorUpdateAfterBindUniformBuffers   = 33554432
	maxPerStageDescriptorUpdateAfterBindStorageBuffers   = 33554432
	maxPerStageDescriptorUpdateAfterBindSampledImages    = 33554432
	maxPerStageDescriptorUpdateAfterBindStorageImages    = 33554432
	maxPerStageDescriptorUpdateAfterBindInputAttachments = 64
	maxPerStageUpdateAfterBindResources                  = 33554432
	maxDescriptorSetUpdateAfterBindSamplers              = 67108864
	maxDescriptorSetUpdateAfterBindUniformBuffers        = 33554432
	maxDescriptorSetUpdateAfterBindUniformBuffersDynamic = 8
	maxDescriptorSetUpdateAfterBindStorageBuffers        = 33554432
	maxDescriptorSetUpdateAfterBindStorageBuffersDynamic = 8
	maxDescriptorSetUpdateAfterBindSampledImages         = 33554432
	maxDescriptorSetUpdateAfterBindStorageImages         = 33554432
	maxDescriptorSetUpdateAfterBindInputAttachments      = 256
	supportedDepthResolveModes: count = 4
		RESOLVE_MODE_SAMPLE_ZERO_BIT
		RESOLVE_MODE_AVERAGE_BIT
		RESOLVE_MODE_MIN_BIT
		RESOLVE_MODE_MAX_BIT
	supportedStencilResolveModes: count = 3
		RESOLVE_MODE_SAMPLE_ZERO_BIT
		RESOLVE_MODE_MIN_BIT
		RESOLVE_MODE_MAX_BIT
	independentResolveNone                               = true
	independentResolve                                   = true
	filterMinmaxSingleComponentFormats                   = true
	filterMinmaxImageComponentMapping                    = true
	maxTimelineSemaphoreValueDifference                  = 18446744073709551615
	framebufferIntegerColorSampleCounts: count = 5
		SAMPLE_COUNT_1_BIT
		SAMPLE_COUNT_2_BIT
		SAMPLE_COUNT_4_BIT
		SAMPLE_COUNT_8_BIT
		SAMPLE_COUNT_16_BIT

VkPhysicalDeviceVulkan13Properties:
-----------------------------------
	minSubgroupSize                                                               = 16
	maxSubgroupSize                                                               = 32
	maxComputeWorkgroupSubgroups                                                  = 64
	requiredSubgroupSizeStages: count = 3
		SHADER_STAGE_COMPUTE_BIT
		SHADER_STAGE_TASK_BIT_EXT
		SHADER_STAGE_MESH_BIT_EXT
	maxInlineUniformBlockSize                                                     = 4096
	maxPerStageDescriptorInlineUniformBlocks                                      = 32
	maxPerStageDescriptorUpdateAfterBindInlineUniformBlocks                       = 32
	maxDescriptorSetInlineUniformBlocks                                           = 32
	maxDescriptorSetUpdateAfterBindInlineUniformBlocks                            = 32
	maxInlineUniformTotalSize                                                     = 65535
	integerDotProduct8BitUnsignedAccelerated                                      = false
	integerDotProduct8BitSignedAccelerated                                        = false
	integerDotProduct8BitMixedSignednessAccelerated                               = false
	integerDotProduct4x8BitPackedUnsignedAccelerated                              = true
	integerDotProduct4x8BitPackedSignedAccelerated                                = true
	integerDotProduct4x8BitPackedMixedSignednessAccelerated                       = true
	integerDotProduct16BitUnsignedAccelerated                                     = false
	integerDotProduct16BitSignedAccelerated                                       = false
	integerDotProduct16BitMixedSignednessAccelerated                              = false
	integerDotProduct32BitUnsignedAccelerated                                     = false
	integerDotProduct32BitSignedAccelerated                                       = false
	integerDotProduct32BitMixedSignednessAccelerated                              = false
	integerDotProduct64BitUnsignedAccelerated                                     = false
	integerDotProduct64BitSignedAccelerated                                       = false
	integerDotProduct64BitMixedSignednessAccelerated                              = false
	integerDotProductAccumulatingSaturating8BitUnsignedAccelerated                = false
	integerDotProductAccumulatingSaturating8BitSignedAccelerated                  = false
	integerDotProductAccumulatingSaturating8BitMixedSignednessAccelerated         = false
	integerDotProductAccumulatingSaturating4x8BitPackedUnsignedAccelerated        = true
	integerDotProductAccumulatingSaturating4x8BitPackedSignedAccelerated          = true
	integerDotProductAccumulatingSaturating4x8BitPackedMixedSignednessAccelerated = true
	integerDotProductAccumulatingSaturating16BitUnsignedAccelerated               = false
	integerDotProductAccumulatingSaturating16BitSignedAccelerated                 = false
	integerDotProductAccumulatingSaturating16BitMixedSignednessAccelerated        = false
	integerDotProductAccumulatingSaturating32BitUnsignedAccelerated               = false
	integerDotProductAccumulatingSaturating32BitSignedAccelerated                 = false
	integerDotProductAccumulatingSaturating32BitMixedSignednessAccelerated        = false
	integerDotProductAccumulatingSaturating64BitUnsignedAccelerated               = false
	integerDotProductAccumulatingSaturating64BitSignedAccelerated                 = false
	integerDotProductAccumulatingSaturating64BitMixedSignednessAccelerated        = false
	storageTexelBufferOffsetAlignmentBytes                                        = 0x00000010
	storageTexelBufferOffsetSingleTexelAlignment                                  = true
	uniformTexelBufferOffsetAlignmentBytes                                        = 0x00000001
	uniformTexelBufferOffsetSingleTexelAlignment                                  = true
	maxBufferSize                                                                 = 0x100000000

VkPhysicalDeviceVulkan14Properties:
-----------------------------------
	lineSubPixelPrecisionBits                           = 4
	maxVertexAttribDivisor                              = 268435455
	supportsNonZeroFirstInstance                        = true
	maxPushDescriptors                                  = 32
	dynamicRenderingLocalReadDepthStencilAttachments    = true
	dynamicRenderingLocalReadMultisampledAttachments    = true
	earlyFragmentMultisampleCoverageAfterSampleCounting = false
	earlyFragmentSampleMaskTestBeforeSampleCounting     = false
	depthStencilSwizzleOneSupport                       = true
	polygonModePointSize                                = true
	nonStrictSinglePixelWideLinesUseParallelogram       = false
	nonStrictWideLinesUseParallelogram                  = false
	blockTexelViewCompatibleMultipleLayers              = true
	maxCombinedImageSamplerDescriptorCount              = 3
	fragmentShadingRateClampCombinerInputs              = true
	defaultRobustnessStorageBuffers                     = PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_DISABLED
	defaultRobustnessUniformBuffers                     = PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_DISABLED
	defaultRobustnessVertexInputs                       = PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_ROBUST_BUFFER_ACCESS_2
	defaultRobustnessImages                             = PIPELINE_ROBUSTNESS_IMAGE_BEHAVIOR_ROBUST_IMAGE_ACCESS_2
	copySrcLayoutCount                                  = 18
	pCopySrcLayouts: count = 18
		IMAGE_LAYOUT_GENERAL
		IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL
		IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL
		IMAGE_LAYOUT_DEPTH_STENCIL_READ_ONLY_OPTIMAL
		IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL
		IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL
		IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL
		IMAGE_LAYOUT_DEPTH_READ_ONLY_STENCIL_ATTACHMENT_OPTIMAL
		IMAGE_LAYOUT_DEPTH_ATTACHMENT_STENCIL_READ_ONLY_OPTIMAL
		IMAGE_LAYOUT_DEPTH_ATTACHMENT_OPTIMAL
		IMAGE_LAYOUT_DEPTH_READ_ONLY_OPTIMAL
		IMAGE_LAYOUT_STENCIL_ATTACHMENT_OPTIMAL
		IMAGE_LAYOUT_STENCIL_READ_ONLY_OPTIMAL
		IMAGE_LAYOUT_READ_ONLY_OPTIMAL
		IMAGE_LAYOUT_ATTACHMENT_OPTIMAL
		IMAGE_LAYOUT_FRAGMENT_SHADING_RATE_ATTACHMENT_OPTIMAL_KHR
		IMAGE_LAYOUT_ATTACHMENT_FEEDBACK_LOOP_OPTIMAL_EXT
		IMAGE_LAYOUT_RENDERING_LOCAL_READ
	copyDstLayoutCount                                  = 18
	pCopyDstLayouts: count = 18
		IMAGE_LAYOUT_GENERAL
		IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL
		IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL
		IMAGE_LAYOUT_DEPTH_STENCIL_READ_ONLY_OPTIMAL
		IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL
		IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL
		IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL
		IMAGE_LAYOUT_DEPTH_READ_ONLY_STENCIL_ATTACHMENT_OPTIMAL
		IMAGE_LAYOUT_DEPTH_ATTACHMENT_STENCIL_READ_ONLY_OPTIMAL
		IMAGE_LAYOUT_DEPTH_ATTACHMENT_OPTIMAL
		IMAGE_LAYOUT_DEPTH_READ_ONLY_OPTIMAL
		IMAGE_LAYOUT_STENCIL_ATTACHMENT_OPTIMAL
		IMAGE_LAYOUT_STENCIL_READ_ONLY_OPTIMAL
		IMAGE_LAYOUT_READ_ONLY_OPTIMAL
		IMAGE_LAYOUT_ATTACHMENT_OPTIMAL
		IMAGE_LAYOUT_FRAGMENT_SHADING_RATE_ATTACHMENT_OPTIMAL_KHR
		IMAGE_LAYOUT_ATTACHMENT_FEEDBACK_LOOP_OPTIMAL_EXT
		IMAGE_LAYOUT_RENDERING_LOCAL_READ
	optimalTilingLayoutUUID                             = 291340c0-ed34-756f-1953-41f8a5a605b1
	identicalMemoryTypeRequirements                     = true

Device Extensions: count = 189
	VK_AMD_buffer_marker                          : extension revision 1
	VK_AMD_texture_gather_bias_lod                : extension revision 1
	VK_EXT_4444_formats                           : extension revision 1
	VK_EXT_attachment_feedback_loop_dynamic_state : extension revision 1
	VK_EXT_attachment_feedback_loop_layout        : extension revision 2
	VK_EXT_border_color_swizzle                   : extension revision 1
	VK_EXT_buffer_device_address                  : extension revision 2
	VK_EXT_calibrated_timestamps                  : extension revision 2
	VK_EXT_color_write_enable                     : extension revision 1
	VK_EXT_conditional_rendering                  : extension revision 2
	VK_EXT_conservative_rasterization             : extension revision 1
	VK_EXT_custom_border_color                    : extension revision 12
	VK_EXT_depth_bias_control                     : extension revision 1
	VK_EXT_depth_clamp_control                    : extension revision 1
	VK_EXT_depth_clamp_zero_one                   : extension revision 1
	VK_EXT_depth_clip_control                     : extension revision 1
	VK_EXT_depth_clip_enable                      : extension revision 1
	VK_EXT_depth_range_unrestricted               : extension revision 1
	VK_EXT_descriptor_buffer                      : extension revision 1
	VK_EXT_descriptor_indexing                    : extension revision 2
	VK_EXT_device_memory_report                   : extension revision 2
	VK_EXT_display_control                        : extension revision 1
	VK_EXT_dynamic_rendering_unused_attachments   : extension revision 1
	VK_EXT_extended_dynamic_state                 : extension revision 1
	VK_EXT_extended_dynamic_state2                : extension revision 1
	VK_EXT_extended_dynamic_state3                : extension revision 2
	VK_EXT_external_memory_acquire_unmodified     : extension revision 1
	VK_EXT_external_memory_dma_buf                : extension revision 1
	VK_EXT_external_memory_host                   : extension revision 1
	VK_EXT_fragment_shader_interlock              : extension revision 1
	VK_EXT_global_priority                        : extension revision 2
	VK_EXT_global_priority_query                  : extension revision 1
	VK_EXT_graphics_pipeline_library              : extension revision 1
	VK_EXT_hdr_metadata                           : extension revision 3
	VK_EXT_host_image_copy                        : extension revision 1
	VK_EXT_host_query_reset                       : extension revision 1
	VK_EXT_image_2d_view_of_3d                    : extension revision 1
	VK_EXT_image_drm_format_modifier              : extension revision 2
	VK_EXT_image_robustness                       : extension revision 1
	VK_EXT_image_sliced_view_of_3d                : extension revision 1
	VK_EXT_image_view_min_lod                     : extension revision 1
	VK_EXT_index_type_uint8                       : extension revision 1
	VK_EXT_inline_uniform_block                   : extension revision 1
	VK_EXT_legacy_dithering                       : extension revision 2
	VK_EXT_legacy_vertex_attributes               : extension revision 1
	VK_EXT_line_rasterization                     : extension revision 1
	VK_EXT_load_store_op_none                     : extension revision 1
	VK_EXT_map_memory_placed                      : extension revision 1
	VK_EXT_memory_budget                          : extension revision 1
	VK_EXT_mesh_shader                            : extension revision 1
	VK_EXT_multi_draw                             : extension revision 1
	VK_EXT_mutable_descriptor_type                : extension revision 1
	VK_EXT_nested_command_buffer                  : extension revision 1
	VK_EXT_non_seamless_cube_map                  : extension revision 1
	VK_EXT_pci_bus_info                           : extension revision 2
	VK_EXT_physical_device_drm                    : extension revision 1
	VK_EXT_pipeline_creation_cache_control        : extension revision 3
	VK_EXT_pipeline_creation_feedback             : extension revision 1
	VK_EXT_pipeline_library_group_handles         : extension revision 1
	VK_EXT_pipeline_robustness                    : extension revision 1
	VK_EXT_post_depth_coverage                    : extension revision 1
	VK_EXT_primitive_topology_list_restart        : extension revision 1
	VK_EXT_primitives_generated_query             : extension revision 1
	VK_EXT_private_data                           : extension revision 1
	VK_EXT_provoking_vertex                       : extension revision 1
	VK_EXT_queue_family_foreign                   : extension revision 1
	VK_EXT_robustness2                            : extension revision 1
	VK_EXT_sample_locations                       : extension revision 1
	VK_EXT_sampler_filter_minmax                  : extension revision 2
	VK_EXT_scalar_block_layout                    : extension revision 1
	VK_EXT_separate_stencil_usage                 : extension revision 1
	VK_EXT_shader_atomic_float                    : extension revision 1
	VK_EXT_shader_atomic_float2                   : extension revision 1
	VK_EXT_shader_demote_to_helper_invocation     : extension revision 1
	VK_EXT_shader_image_atomic_int64              : extension revision 1
	VK_EXT_shader_module_identifier               : extension revision 1
	VK_EXT_shader_replicated_composites           : extension revision 1
	VK_EXT_shader_stencil_export                  : extension revision 1
	VK_EXT_shader_subgroup_ballot                 : extension revision 1
	VK_EXT_shader_subgroup_vote                   : extension revision 1
	VK_EXT_shader_viewport_index_layer            : extension revision 1
	VK_EXT_subgroup_size_control                  : extension revision 2
	VK_EXT_swapchain_maintenance1                 : extension revision 1
	VK_EXT_texel_buffer_alignment                 : extension revision 1
	VK_EXT_tooling_info                           : extension revision 1
	VK_EXT_transform_feedback                     : extension revision 1
	VK_EXT_vertex_attribute_divisor               : extension revision 3
	VK_EXT_vertex_input_dynamic_state             : extension revision 2
	VK_EXT_ycbcr_2plane_444_formats               : extension revision 1
	VK_EXT_ycbcr_image_arrays                     : extension revision 1
	VK_GOOGLE_decorate_string                     : extension revision 1
	VK_GOOGLE_hlsl_functionality1                 : extension revision 1
	VK_GOOGLE_user_type                           : extension revision 1
	VK_INTEL_shader_integer_functions2            : extension revision 1
	VK_KHR_16bit_storage                          : extension revision 1
	VK_KHR_8bit_storage                           : extension revision 1
	VK_KHR_acceleration_structure                 : extension revision 13
	VK_KHR_bind_memory2                           : extension revision 1
	VK_KHR_buffer_device_address                  : extension revision 1
	VK_KHR_calibrated_timestamps                  : extension revision 1
	VK_KHR_compute_shader_derivatives             : extension revision 1
	VK_KHR_cooperative_matrix                     : extension revision 2
	VK_KHR_copy_commands2                         : extension revision 1
	VK_KHR_create_renderpass2                     : extension revision 1
	VK_KHR_dedicated_allocation                   : extension revision 3
	VK_KHR_deferred_host_operations               : extension revision 4
	VK_KHR_depth_clamp_zero_one                   : extension revision 1
	VK_KHR_depth_stencil_resolve                  : extension revision 1
	VK_KHR_descriptor_update_template             : extension revision 1
	VK_KHR_device_group                           : extension revision 4
	VK_KHR_draw_indirect_count                    : extension revision 1
	VK_KHR_driver_properties                      : extension revision 1
	VK_KHR_dynamic_rendering                      : extension revision 1
	VK_KHR_dynamic_rendering_local_read           : extension revision 1
	VK_KHR_external_fence                         : extension revision 1
	VK_KHR_external_fence_fd                      : extension revision 1
	VK_KHR_external_memory                        : extension revision 1
	VK_KHR_external_memory_fd                     : extension revision 1
	VK_KHR_external_semaphore                     : extension revision 1
	VK_KHR_external_semaphore_fd                  : extension revision 1
	VK_KHR_format_feature_flags2                  : extension revision 2
	VK_KHR_fragment_shader_barycentric            : extension revision 1
	VK_KHR_fragment_shading_rate                  : extension revision 2
	VK_KHR_get_memory_requirements2               : extension revision 1
	VK_KHR_global_priority                        : extension revision 1
	VK_KHR_image_format_list                      : extension revision 1
	VK_KHR_imageless_framebuffer                  : extension revision 1
	VK_KHR_incremental_present                    : extension revision 2
	VK_KHR_index_type_uint8                       : extension revision 1
	VK_KHR_line_rasterization                     : extension revision 1
	VK_KHR_load_store_op_none                     : extension revision 1
	VK_KHR_maintenance1                           : extension revision 2
	VK_KHR_maintenance2                           : extension revision 1
	VK_KHR_maintenance3                           : extension revision 1
	VK_KHR_maintenance4                           : extension revision 2
	VK_KHR_maintenance5                           : extension revision 1
	VK_KHR_maintenance6                           : extension revision 1
	VK_KHR_maintenance7                           : extension revision 1
	VK_KHR_maintenance9                           : extension revision 1
	VK_KHR_map_memory2                            : extension revision 1
	VK_KHR_multiview                              : extension revision 1
	VK_KHR_pipeline_executable_properties         : extension revision 1
	VK_KHR_pipeline_library                       : extension revision 1
	VK_KHR_present_id                             : extension revision 1
	VK_KHR_present_id2                            : extension revision 1
	VK_KHR_present_wait                           : extension revision 1
	VK_KHR_present_wait2                          : extension revision 1
	VK_KHR_push_descriptor                        : extension revision 2
	VK_KHR_ray_query                              : extension revision 1
	VK_KHR_ray_tracing_maintenance1               : extension revision 1
	VK_KHR_ray_tracing_pipeline                   : extension revision 1
	VK_KHR_ray_tracing_position_fetch             : extension revision 1
	VK_KHR_relaxed_block_layout                   : extension revision 1
	VK_KHR_robustness2                            : extension revision 1
	VK_KHR_sampler_mirror_clamp_to_edge           : extension revision 3
	VK_KHR_sampler_ycbcr_conversion               : extension revision 14
	VK_KHR_separate_depth_stencil_layouts         : extension revision 1
	VK_KHR_shader_atomic_int64                    : extension revision 1
	VK_KHR_shader_bfloat16                        : extension revision 1
	VK_KHR_shader_clock                           : extension revision 1
	VK_KHR_shader_draw_parameters                 : extension revision 1
	VK_KHR_shader_expect_assume                   : extension revision 1
	VK_KHR_shader_float16_int8                    : extension revision 1
	VK_KHR_shader_float_controls                  : extension revision 4
	VK_KHR_shader_float_controls2                 : extension revision 1
	VK_KHR_shader_integer_dot_product             : extension revision 1
	VK_KHR_shader_maximal_reconvergence           : extension revision 1
	VK_KHR_shader_non_semantic_info               : extension revision 1
	VK_KHR_shader_quad_control                    : extension revision 1
	VK_KHR_shader_relaxed_extended_instruction    : extension revision 1
	VK_KHR_shader_subgroup_extended_types         : extension revision 1
	VK_KHR_shader_subgroup_rotate                 : extension revision 2
	VK_KHR_shader_subgroup_uniform_control_flow   : extension revision 1
	VK_KHR_shader_terminate_invocation            : extension revision 1
	VK_KHR_spirv_1_4                              : extension revision 1
	VK_KHR_storage_buffer_storage_class           : extension revision 1
	VK_KHR_swapchain                              : extension revision 70
	VK_KHR_swapchain_mutable_format               : extension revision 1
	VK_KHR_synchronization2                       : extension revision 1
	VK_KHR_timeline_semaphore                     : extension revision 2
	VK_KHR_uniform_buffer_standard_layout         : extension revision 1
	VK_KHR_variable_pointers                      : extension revision 1
	VK_KHR_vertex_attribute_divisor               : extension revision 1
	VK_KHR_vulkan_memory_model                    : extension revision 3
	VK_KHR_workgroup_memory_explicit_layout       : extension revision 1
	VK_KHR_zero_initialize_workgroup_memory       : extension revision 1
	VK_MESA_image_alignment_control               : extension revision 1
	VK_NV_compute_shader_derivatives              : extension revision 1
	VK_VALVE_mutable_descriptor_type              : extension revision 1

VkQueueFamilyProperties:
========================
	queueProperties[0]:
	-------------------
		minImageTransferGranularity = (1,1,1)
		queueCount                  = 1
		queueFlags                  = QUEUE_GRAPHICS_BIT | QUEUE_COMPUTE_BIT | QUEUE_TRANSFER_BIT | QUEUE_SPARSE_BINDING_BIT
		timestampValidBits          = 64
		present support:
			VK_KHR_xcb_surface     = false
			VK_KHR_xlib_surface    = false
			VK_KHR_wayland_surface = true

	queueProperties[1]:
	-------------------
		minImageTransferGranularity = (1,1,1)
		queueCount                  = 1
		queueFlags                  = QUEUE_COMPUTE_BIT | QUEUE_TRANSFER_BIT | QUEUE_SPARSE_BINDING_BIT
		timestampValidBits          = 64
		present support:
			VK_KHR_xcb_surface     = false
			VK_KHR_xlib_surface    = false
			VK_KHR_wayland_surface = true

	queueProperties[2]:
	-------------------
		minImageTransferGranularity = (1,1,1)
		queueCount                  = 1
		queueFlags                  = QUEUE_TRANSFER_BIT
		timestampValidBits          = 64
		present support:
			VK_KHR_xcb_surface     = false
			VK_KHR_xlib_surface    = false
			VK_KHR_wayland_surface = true

VkPhysicalDeviceMemoryProperties:
=================================
memoryHeaps: count = 1
	memoryHeaps[0]:
		size   = 8202510336 (0x1e8e86000) (7.64 GiB)
		budget = 7381975040 (0x1b8000000) (6.88 GiB)
		usage  = 0 (0x00000000) (0.00 B)
		flags: count = 1
			MEMORY_HEAP_DEVICE_LOCAL_BIT
memoryTypes: count = 5
	memoryTypes[0]:
		heapIndex     = 0
		propertyFlags = 0x0001: count = 1
			MEMORY_PROPERTY_DEVICE_LOCAL_BIT
		usable for:
			IMAGE_TILING_OPTIMAL:
				color images
				FORMAT_D16_UNORM
				FORMAT_X8_D24_UNORM_PACK32
				FORMAT_D32_SFLOAT
				FORMAT_S8_UINT
				FORMAT_D24_UNORM_S8_UINT
				FORMAT_D32_SFLOAT_S8_UINT
			IMAGE_TILING_LINEAR:
				color images
	memoryTypes[1]:
		heapIndex     = 0
		propertyFlags = 0x0007: count = 3
			MEMORY_PROPERTY_DEVICE_LOCAL_BIT
			MEMORY_PROPERTY_HOST_VISIBLE_BIT
			MEMORY_PROPERTY_HOST_COHERENT_BIT
		usable for:
			IMAGE_TILING_OPTIMAL:
				color images
				FORMAT_D16_UNORM
				FORMAT_X8_D24_UNORM_PACK32
				FORMAT_D32_SFLOAT
				FORMAT_S8_UINT
				FORMAT_D24_UNORM_S8_UINT
				FORMAT_D32_SFLOAT_S8_UINT
			IMAGE_TILING_LINEAR:
				color images
	memoryTypes[2]:
		heapIndex     = 0
		propertyFlags = 0x000f: count = 4
			MEMORY_PROPERTY_DEVICE_LOCAL_BIT
			MEMORY_PROPERTY_HOST_VISIBLE_BIT
			MEMORY_PROPERTY_HOST_COHERENT_BIT
			MEMORY_PROPERTY_HOST_CACHED_BIT
		usable for:
			IMAGE_TILING_OPTIMAL:
				color images
				FORMAT_D16_UNORM
				FORMAT_X8_D24_UNORM_PACK32
				FORMAT_D32_SFLOAT
				FORMAT_S8_UINT
				FORMAT_D24_UNORM_S8_UINT
				FORMAT_D32_SFLOAT_S8_UINT
			IMAGE_TILING_LINEAR:
				color images
	memoryTypes[3]:
		heapIndex     = 0
		propertyFlags = 0x0007: count = 3
			MEMORY_PROPERTY_DEVICE_LOCAL_BIT
			MEMORY_PROPERTY_HOST_VISIBLE_BIT
			MEMORY_PROPERTY_HOST_COHERENT_BIT
		usable for:
			IMAGE_TILING_OPTIMAL:
				None
			IMAGE_TILING_LINEAR:
				None
	memoryTypes[4]:
		heapIndex     = 0
		propertyFlags = 0x000f: count = 4
			MEMORY_PROPERTY_DEVICE_LOCAL_BIT
			MEMORY_PROPERTY_HOST_VISIBLE_BIT
			MEMORY_PROPERTY_HOST_COHERENT_BIT
			MEMORY_PROPERTY_HOST_CACHED_BIT
		usable for:
			IMAGE_TILING_OPTIMAL:
				None
			IMAGE_TILING_LINEAR:
				None

VkPhysicalDeviceFeatures:
=========================
	robustBufferAccess                      = true
	fullDrawIndexUint32                     = true
	imageCubeArray                          = true
	independentBlend                        = true
	geometryShader                          = true
	tessellationShader                      = true
	sampleRateShading                       = true
	dualSrcBlend                            = true
	logicOp                                 = true
	multiDrawIndirect                       = true
	drawIndirectFirstInstance               = true
	depthClamp                              = true
	depthBiasClamp                          = true
	fillModeNonSolid                        = true
	depthBounds                             = true
	wideLines                               = true
	largePoints                             = true
	alphaToOne                              = true
	multiViewport                           = true
	samplerAnisotropy                       = true
	textureCompressionETC2                  = true
	textureCompressionASTC_LDR              = false
	textureCompressionBC                    = true
	occlusionQueryPrecise                   = true
	pipelineStatisticsQuery                 = true
	vertexPipelineStoresAndAtomics          = true
	fragmentStoresAndAtomics                = true
	shaderTessellationAndGeometryPointSize  = true
	shaderImageGatherExtended               = true
	shaderStorageImageExtendedFormats       = true
	shaderStorageImageMultisample           = false
	shaderStorageImageReadWithoutFormat     = true
	shaderStorageImageWriteWithoutFormat    = true
	shaderUniformBufferArrayDynamicIndexing = true
	shaderSampledImageArrayDynamicIndexing  = true
	shaderStorageBufferArrayDynamicIndexing = true
	shaderStorageImageArrayDynamicIndexing  = true
	shaderClipDistance                      = true
	shaderCullDistance                      = true
	shaderFloat64                           = true
	shaderInt64                             = true
	shaderInt16                             = true
	shaderResourceResidency                 = true
	shaderResourceMinLod                    = true
	sparseBinding                           = true
	sparseResidencyBuffer                   = true
	sparseResidencyImage2D                  = true
	sparseResidencyImage3D                  = true
	sparseResidency2Samples                 = true
	sparseResidency4Samples                 = true
	sparseResidency8Samples                 = true
	sparseResidency16Samples                = true
	sparseResidencyAliased                  = true
	variableMultisampleRate                 = true
	inheritedQueries                        = true

VkPhysicalDevice4444FormatsFeaturesEXT:
---------------------------------------
	formatA4R4G4B4 = true
	formatA4B4G4R4 = false

VkPhysicalDeviceAccelerationStructure