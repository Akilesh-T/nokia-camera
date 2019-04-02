.class public Lcom/android/camera/one/v2/common/BasicCameraFactory;
.super Ljava/lang/Object;
.source "BasicCameraFactory.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mCaptureRequestExtension:Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

.field private final mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

.field private final mMeteredZoomedRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

.field private final mPreviewUpdater:Ljava/lang/Runnable;

.field private final mSlaveMeteredZoomedRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "BasicCameraFactory"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/common/BasicCameraFactory;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/one/v2/commands/PreviewCommandFactory;Lcom/android/camera/one/v2/commands/PreviewCommandFactory;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;IIII)V
    .locals 90
    .param p1, "lifetime"    # Lcom/android/camera/async/Lifetime;
    .param p2, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p3, "slaveCameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "frameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
    .param p5, "slaveFrameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "rootTemplate"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p7, "slaveRootTemplate"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8, "cameraCommandExecutor"    # Lcom/android/camera/one/v2/commands/CameraCommandExecutor;
    .param p9, "previewCommandFactory"    # Lcom/android/camera/one/v2/commands/PreviewCommandFactory;
    .param p10, "slavePreviewCommandFactory"    # Lcom/android/camera/one/v2/commands/PreviewCommandFactory;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p11, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;
    .param p15, "templateType"    # I
    .param p16, "slaveTemplateType"    # I
    .param p17, "cameraId"    # I
    .param p18, "slaveCameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/Lifetime;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            "Lcom/android/camera/one/v2/commands/CameraCommandExecutor;",
            "Lcom/android/camera/one/v2/commands/PreviewCommandFactory;",
            "Lcom/android/camera/one/v2/commands/PreviewCommandFactory;",
            "Lcom/android/camera/one/OneCameraCaptureSetting;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;IIII)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p12, "zoom":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Float;>;"
    .local p13, "slaveZoom":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Float;>;"
    .local p14, "recordController":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-virtual/range {p11 .. p11}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v17

    .line 115
    .local v17, "captureMode":Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    invoke-virtual/range {p11 .. p11}, Lcom/android/camera/one/OneCameraCaptureSetting;->getFlashSetting()Lcom/android/camera/async/Observable;

    move-result-object v4

    .line 116
    .local v4, "flashSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;>;"
    invoke-virtual/range {p11 .. p11}, Lcom/android/camera/one/OneCameraCaptureSetting;->getHdrSceneSetting()Lcom/android/camera/async/Observable;

    move-result-object v7

    .line 117
    .local v7, "hdrSceneSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/String;>;"
    invoke-virtual/range {p11 .. p11}, Lcom/android/camera/one/OneCameraCaptureSetting;->getManualExpTimeSetting()Lcom/android/camera/async/Observable;

    move-result-object v5

    .line 118
    .local v5, "manualExpTimeSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;>;"
    invoke-virtual/range {p11 .. p11}, Lcom/android/camera/one/OneCameraCaptureSetting;->getManualExpSetting()Lcom/android/camera/async/Observable;

    move-result-object v62

    .line 119
    .local v62, "manualExpSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    invoke-virtual/range {p11 .. p11}, Lcom/android/camera/one/OneCameraCaptureSetting;->getManualISOSetting()Lcom/android/camera/async/Observable;

    move-result-object v6

    .line 120
    .local v6, "manualISOSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ISO;>;"
    invoke-virtual/range {p11 .. p11}, Lcom/android/camera/one/OneCameraCaptureSetting;->getManualFocusSetting()Lcom/android/camera/async/Observable;

    move-result-object v63

    .line 121
    .local v63, "manualFocusSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/String;>;"
    invoke-virtual/range {p11 .. p11}, Lcom/android/camera/one/OneCameraCaptureSetting;->getManualWBSetting()Lcom/android/camera/async/Observable;

    move-result-object v65

    .line 122
    .local v65, "manualWBSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;>;"
    invoke-virtual/range {p11 .. p11}, Lcom/android/camera/one/OneCameraCaptureSetting;->getFrontCamMirrorSetting()Lcom/android/camera/async/Observable;

    move-result-object v59

    .line 123
    .local v59, "frontCamMirrorSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    invoke-virtual/range {p11 .. p11}, Lcom/android/camera/one/OneCameraCaptureSetting;->getPreviewFpsRangeSetting()Lcom/android/camera/async/Observable;

    move-result-object v68

    .line 124
    .local v68, "previewFpsRangeSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    invoke-virtual/range {p11 .. p11}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCurrentCameraId()Lcom/android/camera/async/Observable;

    move-result-object v11

    .line 125
    .local v11, "currentCameraId":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    invoke-virtual/range {p11 .. p11}, Lcom/android/camera/one/OneCameraCaptureSetting;->getBokehLevelSetting()Lcom/android/camera/async/Observable;

    move-result-object v47

    .line 126
    .local v47, "bokehLevelSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    invoke-virtual/range {p11 .. p11}, Lcom/android/camera/one/OneCameraCaptureSetting;->getSaturationSetting()Lcom/android/camera/async/Observable;

    move-result-object v71

    .line 127
    .local v71, "saturationSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    invoke-virtual/range {p11 .. p11}, Lcom/android/camera/one/OneCameraCaptureSetting;->getContrastSetting()Lcom/android/camera/async/Observable;

    move-result-object v51

    .line 128
    .local v51, "contrastSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    invoke-virtual/range {p11 .. p11}, Lcom/android/camera/one/OneCameraCaptureSetting;->getSharpnessSetting()Lcom/android/camera/async/Observable;

    move-result-object v82

    .line 129
    .local v82, "sharpnessSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    invoke-virtual/range {p11 .. p11}, Lcom/android/camera/one/OneCameraCaptureSetting;->getSceneExpSetting()Lcom/android/camera/async/Observable;

    move-result-object v77

    .line 130
    .local v77, "sceneExpSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    invoke-virtual/range {p11 .. p11}, Lcom/android/camera/one/OneCameraCaptureSetting;->getSceneWBSetting()Lcom/android/camera/async/Observable;

    move-result-object v79

    .line 131
    .local v79, "sceneWBSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$WhiteBalance;>;"
    invoke-virtual/range {p11 .. p11}, Lcom/android/camera/one/OneCameraCaptureSetting;->getManualWbValueSettings()Lcom/android/camera/async/Observable;

    move-result-object v67

    .line 132
    .local v67, "manualWbValueSettings":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/String;>;"
    invoke-virtual/range {p11 .. p11}, Lcom/android/camera/one/OneCameraCaptureSetting;->getSceneClassifyModeSetting()Lcom/android/camera/async/Observable;

    move-result-object v73

    .line 133
    .local v73, "sceneClassifyModeSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    invoke-virtual/range {p11 .. p11}, Lcom/android/camera/one/OneCameraCaptureSetting;->getSceneClassifyOrientationSetting()Lcom/android/camera/async/Observable;

    move-result-object v75

    .line 134
    .local v75, "sceneClassifyOrientationSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    invoke-virtual/range {p11 .. p11}, Lcom/android/camera/one/OneCameraCaptureSetting;->getSceneDetectionSetting()Lcom/android/camera/async/Observable;

    move-result-object v13

    .line 135
    .local v13, "sceneDetectionSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    invoke-virtual/range {p11 .. p11}, Lcom/android/camera/one/OneCameraCaptureSetting;->getBeautySetting()Lcom/android/camera/async/Observable;

    move-result-object v45

    .line 137
    .local v45, "beautySetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    new-instance v36, Lcom/android/camera/async/ConcurrentState;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-direct {v0, v3}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 139
    .local v36, "touchExposure":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Integer;>;"
    new-instance v21, Lcom/android/camera/one/v2/core/RequestTemplate;

    move-object/from16 v0, v21

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/core/RequestTemplate;-><init>(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)V

    .line 140
    .local v21, "requestTemplate":Lcom/android/camera/one/v2/core/RequestTemplate;
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v8, Lcom/android/camera/one/v2/common/ControlFocusModeSelector;

    move-object/from16 v0, v63

    move-object/from16 v1, v17

    invoke-direct {v8, v0, v1}, Lcom/android/camera/one/v2/common/ControlFocusModeSelector;-><init>(Lcom/google/common/base/Supplier;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v8}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 141
    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v3, Lcom/android/camera/one/v2/common/FlashBasedAEMode;

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/one/v2/common/FlashBasedAEMode;-><init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/android/camera/one/OneCameraCharacteristics;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9, v3}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 143
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v8, Lcom/android/camera/one/v2/common/ControlWBModeSelector;

    move-object/from16 v0, v65

    move-object/from16 v1, v79

    move-object/from16 v2, v17

    invoke-direct {v8, v0, v1, v13, v2}, Lcom/android/camera/one/v2/common/ControlWBModeSelector;-><init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v8}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 145
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v8}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 146
    sget-object v12, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v3, Lcom/android/camera/one/v2/common/FlashMode;

    move-object/from16 v8, v17

    move-object/from16 v9, p2

    move/from16 v10, p17

    invoke-direct/range {v3 .. v11}, Lcom/android/camera/one/v2/common/FlashMode;-><init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/android/camera/async/Observable;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/OneCameraCharacteristics;ILcom/android/camera/async/Observable;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v12, v3}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 149
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/camera/one/v2/face/FaceDetect;->getHighestFaceDetectMode(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

    move-result-object v3

    .line 148
    invoke-static {v3}, Lcom/google/common/base/Suppliers;->ofInstance(Ljava/lang/Object;)Lcom/google/common/base/Supplier;

    move-result-object v15

    .line 151
    .local v15, "faceDetectMode":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;>;"
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v12, Lcom/android/camera/one/v2/common/ControlModeSelector;

    .line 152
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedHardwareLevel()Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;

    move-result-object v16

    move-object v14, v7

    invoke-direct/range {v12 .. v17}, Lcom/android/camera/one/v2/common/ControlModeSelector;-><init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V

    .line 151
    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v12}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 154
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v8, Lcom/android/camera/one/v2/common/ControlSceneModeSelector;

    .line 157
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedHardwareLevel()Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;

    move-result-object v9

    move-object/from16 v0, v17

    invoke-direct {v8, v7, v15, v9, v0}, Lcom/android/camera/one/v2/common/ControlSceneModeSelector;-><init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V

    .line 154
    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v8}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 160
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v8, Lcom/android/camera/one/v2/common/StatisticsFaceDetectMode;

    move-object/from16 v0, v17

    invoke-direct {v8, v15, v0}, Lcom/android/camera/one/v2/common/StatisticsFaceDetectMode;-><init>(Lcom/google/common/base/Supplier;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v8}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 163
    new-instance v52, Lcom/android/camera/one/v2/common/ZoomedCropRegion;

    .line 164
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorInfoActiveArraySize()Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, v52

    move-object/from16 v1, p12

    invoke-direct {v0, v3, v1}, Lcom/android/camera/one/v2/common/ZoomedCropRegion;-><init>(Landroid/graphics/Rect;Lcom/google/common/base/Supplier;)V

    .line 165
    .local v52, "cropRegion":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroid/graphics/Rect;>;"
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    invoke-virtual {v0, v3, v1}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 168
    new-instance v49, Lcom/android/camera/one/v2/common/CaptureSizeZoomedCropRegion;

    .line 169
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorInfoActiveArraySize()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual/range {p11 .. p11}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureSize()Lcom/android/camera/util/Size;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/camera/util/CameraUtil;->cropToPictureSizeRegion(Landroid/graphics/Rect;Lcom/android/camera/util/Size;)Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, v49

    move-object/from16 v1, p12

    invoke-direct {v0, v3, v1}, Lcom/android/camera/one/v2/common/CaptureSizeZoomedCropRegion;-><init>(Landroid/graphics/Rect;Lcom/google/common/base/Supplier;)V

    .line 171
    .local v49, "captureSizeCropRegion":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroid/graphics/Rect;>;"
    new-instance v29, Lcom/android/camera/async/ConcurrentState;

    .line 172
    invoke-static {}, Lcom/android/camera/one/v2/autofocus/GlobalMeteringParameters;->create()Lcom/android/camera/one/v2/autofocus/MeteringParameters;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-direct {v0, v3}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 173
    .local v29, "currentMeteringParameters":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Lcom/android/camera/one/v2/autofocus/MeteringParameters;>;"
    new-instance v31, Lcom/android/camera/one/v2/autofocus/AEMeteringRegion;

    .line 174
    invoke-static/range {p17 .. p17}, Lcom/android/camera/device/CameraId;->fromLegacyId(I)Lcom/android/camera/device/CameraId;

    move-result-object v3

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    move-object/from16 v2, v49

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/one/v2/autofocus/AEMeteringRegion;-><init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/android/camera/device/CameraId;)V

    .line 175
    .local v31, "aeMeteringRegion":Lcom/android/camera/one/v2/autofocus/AEMeteringRegion;
    new-instance v33, Lcom/android/camera/one/v2/autofocus/AFMeteringRegion;

    .line 176
    invoke-static/range {p17 .. p17}, Lcom/android/camera/device/CameraId;->fromLegacyId(I)Lcom/android/camera/device/CameraId;

    move-result-object v3

    move-object/from16 v0, v33

    move-object/from16 v1, v29

    move-object/from16 v2, v49

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/one/v2/autofocus/AFMeteringRegion;-><init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/android/camera/device/CameraId;)V

    .line 178
    .local v33, "afMeteringRegion":Lcom/android/camera/one/v2/autofocus/AFMeteringRegion;
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v3, v1}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 179
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v3, v1}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 181
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v8, Lcom/android/camera/one/v2/common/LensOISModeSelector;

    invoke-virtual/range {p11 .. p11}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureSize()Lcom/android/camera/util/Size;

    move-result-object v9

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v8, v0, v1, v9}, Lcom/android/camera/one/v2/common/LensOISModeSelector;-><init>(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v8}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 182
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v8, Lcom/android/camera/one/v2/common/EISModeSelector;

    invoke-virtual/range {p11 .. p11}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureSize()Lcom/android/camera/util/Size;

    move-result-object v9

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v8, v0, v1, v9}, Lcom/android/camera/one/v2/common/EISModeSelector;-><init>(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v8}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 185
    invoke-static/range {v17 .. v17}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isManual(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 186
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->enableManualShutterSpeedPreviewEffect()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v8, Lcom/android/camera/one/v2/common/SensorExpTimeSelector;

    invoke-direct {v8, v6, v5}, Lcom/android/camera/one/v2/common/SensorExpTimeSelector;-><init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v8}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 189
    :cond_0
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v8, Lcom/android/camera/one/v2/common/SensorSensitivitySelector;

    invoke-direct {v8, v6, v5}, Lcom/android/camera/one/v2/common/SensorSensitivitySelector;-><init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v8}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 190
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v8, Lcom/android/camera/one/v2/common/ExpTimeBasedExpValue;

    move-object/from16 v0, v62

    invoke-direct {v8, v5, v0}, Lcom/android/camera/one/v2/common/ExpTimeBasedExpValue;-><init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v8}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 192
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v8, Lcom/android/camera/one/v2/common/LensDistanceSelector;

    move-object/from16 v0, v63

    invoke-direct {v8, v0}, Lcom/android/camera/one/v2/common/LensDistanceSelector;-><init>(Lcom/google/common/base/Supplier;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v8}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 201
    :goto_0
    const/16 v22, 0x0

    .line 202
    .local v22, "slaveRequestTemplate":Lcom/android/camera/one/v2/core/RequestTemplate;
    const/16 v30, 0x0

    .line 203
    .local v30, "slaveCurrentMeteringParameters":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Lcom/android/camera/one/v2/autofocus/MeteringParameters;>;"
    const/16 v32, 0x0

    .line 204
    .local v32, "slaveAeMeteringRegion":Lcom/android/camera/one/v2/autofocus/AEMeteringRegion;
    const/16 v34, 0x0

    .line 205
    .local v34, "slaveAfMeteringRegion":Lcom/android/camera/one/v2/autofocus/AFMeteringRegion;
    if-eqz p7, :cond_2

    .line 206
    new-instance v22, Lcom/android/camera/one/v2/core/RequestTemplate;

    .end local v22    # "slaveRequestTemplate":Lcom/android/camera/one/v2/core/RequestTemplate;
    move-object/from16 v0, v22

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/core/RequestTemplate;-><init>(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)V

    .line 207
    .restart local v22    # "slaveRequestTemplate":Lcom/android/camera/one/v2/core/RequestTemplate;
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v8, Lcom/android/camera/one/v2/common/ControlFocusModeSelector;

    move-object/from16 v0, v63

    move-object/from16 v1, v17

    invoke-direct {v8, v0, v1}, Lcom/android/camera/one/v2/common/ControlFocusModeSelector;-><init>(Lcom/google/common/base/Supplier;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v8}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 208
    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v3, Lcom/android/camera/one/v2/common/FlashBasedAEMode;

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/one/v2/common/FlashBasedAEMode;-><init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/android/camera/one/OneCameraCharacteristics;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9, v3}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 210
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v8, Lcom/android/camera/one/v2/common/ControlWBModeSelector;

    move-object/from16 v0, v65

    move-object/from16 v1, v79

    move-object/from16 v2, v17

    invoke-direct {v8, v0, v1, v13, v2}, Lcom/android/camera/one/v2/common/ControlWBModeSelector;-><init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v8}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 212
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v8}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 213
    sget-object v12, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v3, Lcom/android/camera/one/v2/common/FlashMode;

    move-object/from16 v8, v17

    move-object/from16 v9, p3

    move/from16 v10, p18

    invoke-direct/range {v3 .. v11}, Lcom/android/camera/one/v2/common/FlashMode;-><init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/android/camera/async/Observable;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/OneCameraCharacteristics;ILcom/android/camera/async/Observable;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v12, v3}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 215
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v12, Lcom/android/camera/one/v2/common/ControlModeSelector;

    .line 216
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedHardwareLevel()Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;

    move-result-object v16

    move-object v14, v7

    invoke-direct/range {v12 .. v17}, Lcom/android/camera/one/v2/common/ControlModeSelector;-><init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V

    .line 215
    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v12}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 218
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v8, Lcom/android/camera/one/v2/common/ControlSceneModeSelector;

    .line 221
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedHardwareLevel()Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;

    move-result-object v9

    move-object/from16 v0, v17

    invoke-direct {v8, v7, v15, v9, v0}, Lcom/android/camera/one/v2/common/ControlSceneModeSelector;-><init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V

    .line 218
    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v8}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 224
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v8, Lcom/android/camera/one/v2/common/StatisticsFaceDetectMode;

    move-object/from16 v0, v17

    invoke-direct {v8, v15, v0}, Lcom/android/camera/one/v2/common/StatisticsFaceDetectMode;-><init>(Lcom/google/common/base/Supplier;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v8}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 227
    new-instance v84, Lcom/android/camera/one/v2/common/ZoomedCropRegion;

    .line 228
    invoke-interface/range {p3 .. p3}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorInfoActiveArraySize()Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, v84

    move-object/from16 v1, p13

    invoke-direct {v0, v3, v1}, Lcom/android/camera/one/v2/common/ZoomedCropRegion;-><init>(Landroid/graphics/Rect;Lcom/google/common/base/Supplier;)V

    .line 229
    .local v84, "slaveCropRegion":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroid/graphics/Rect;>;"
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v22

    move-object/from16 v1, v84

    invoke-virtual {v0, v3, v1}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 231
    new-instance v83, Lcom/android/camera/one/v2/common/CaptureSizeZoomedCropRegion;

    .line 232
    invoke-interface/range {p3 .. p3}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorInfoActiveArraySize()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual/range {p11 .. p11}, Lcom/android/camera/one/OneCameraCaptureSetting;->getSlaveCaptureSize()Lcom/android/camera/util/Size;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/camera/util/CameraUtil;->cropToPictureSizeRegion(Landroid/graphics/Rect;Lcom/android/camera/util/Size;)Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, v83

    move-object/from16 v1, p13

    invoke-direct {v0, v3, v1}, Lcom/android/camera/one/v2/common/CaptureSizeZoomedCropRegion;-><init>(Landroid/graphics/Rect;Lcom/google/common/base/Supplier;)V

    .line 234
    .local v83, "slaveCaptureSizeCropRegion":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroid/graphics/Rect;>;"
    invoke-static/range {v17 .. v17}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isDualSightMode(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v30, Lcom/android/camera/async/ConcurrentState;

    .end local v30    # "slaveCurrentMeteringParameters":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Lcom/android/camera/one/v2/autofocus/MeteringParameters;>;"
    invoke-static {}, Lcom/android/camera/one/v2/autofocus/GlobalMeteringParameters;->create()Lcom/android/camera/one/v2/autofocus/MeteringParameters;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-direct {v0, v3}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 235
    .restart local v30    # "slaveCurrentMeteringParameters":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Lcom/android/camera/one/v2/autofocus/MeteringParameters;>;"
    :goto_1
    new-instance v32, Lcom/android/camera/one/v2/autofocus/AEMeteringRegion;

    .line 236
    .end local v32    # "slaveAeMeteringRegion":Lcom/android/camera/one/v2/autofocus/AEMeteringRegion;
    invoke-static/range {p18 .. p18}, Lcom/android/camera/device/CameraId;->fromLegacyId(I)Lcom/android/camera/device/CameraId;

    move-result-object v3

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    move-object/from16 v2, v83

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/one/v2/autofocus/AEMeteringRegion;-><init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/android/camera/device/CameraId;)V

    .line 237
    .restart local v32    # "slaveAeMeteringRegion":Lcom/android/camera/one/v2/autofocus/AEMeteringRegion;
    new-instance v34, Lcom/android/camera/one/v2/autofocus/AFMeteringRegion;

    .line 238
    .end local v34    # "slaveAfMeteringRegion":Lcom/android/camera/one/v2/autofocus/AFMeteringRegion;
    invoke-static/range {p18 .. p18}, Lcom/android/camera/device/CameraId;->fromLegacyId(I)Lcom/android/camera/device/CameraId;

    move-result-object v3

    move-object/from16 v0, v34

    move-object/from16 v1, v30

    move-object/from16 v2, v83

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/one/v2/autofocus/AFMeteringRegion;-><init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/android/camera/device/CameraId;)V

    .line 239
    .restart local v34    # "slaveAfMeteringRegion":Lcom/android/camera/one/v2/autofocus/AFMeteringRegion;
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v3, v1}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 240
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-virtual {v0, v3, v1}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 242
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v8, Lcom/android/camera/one/v2/common/LensOISModeSelector;

    .line 243
    invoke-virtual/range {p11 .. p11}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureSize()Lcom/android/camera/util/Size;

    move-result-object v9

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-direct {v8, v0, v1, v9}, Lcom/android/camera/one/v2/common/LensOISModeSelector;-><init>(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;)V

    .line 242
    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v8}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 244
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v8, Lcom/android/camera/one/v2/common/EISModeSelector;

    invoke-virtual/range {p11 .. p11}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureSize()Lcom/android/camera/util/Size;

    move-result-object v9

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v8, v0, v1, v9}, Lcom/android/camera/one/v2/common/EISModeSelector;-><init>(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v8}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 247
    invoke-static/range {v17 .. v17}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isManual(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 248
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->enableManualShutterSpeedPreviewEffect()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 249
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v8, Lcom/android/camera/one/v2/common/SensorExpTimeSelector;

    invoke-direct {v8, v6, v5}, Lcom/android/camera/one/v2/common/SensorExpTimeSelector;-><init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v8}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 251
    :cond_1
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v8, Lcom/android/camera/one/v2/common/SensorSensitivitySelector;

    invoke-direct {v8, v6, v5}, Lcom/android/camera/one/v2/common/SensorSensitivitySelector;-><init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v8}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 252
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v8, Lcom/android/camera/one/v2/common/ExpTimeBasedExpValue;

    move-object/from16 v0, v62

    invoke-direct {v8, v5, v0}, Lcom/android/camera/one/v2/common/ExpTimeBasedExpValue;-><init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v8}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 254
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v8, Lcom/android/camera/one/v2/common/LensDistanceSelector;

    move-object/from16 v0, v63

    invoke-direct {v8, v0}, Lcom/android/camera/one/v2/common/LensDistanceSelector;-><init>(Lcom/google/common/base/Supplier;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v8}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    .line 262
    .end local v83    # "slaveCaptureSizeCropRegion":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroid/graphics/Rect;>;"
    .end local v84    # "slaveCropRegion":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroid/graphics/Rect;>;"
    :cond_2
    :goto_2
    invoke-static {}, Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtensionCreator;->create()Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/one/v2/common/BasicCameraFactory;->mCaptureRequestExtension:Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/common/BasicCameraFactory;->mCaptureRequestExtension:Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    move-object/from16 v18, v0

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    move-object/from16 v23, v17

    move-object/from16 v24, p11

    invoke-virtual/range {v18 .. v24}, Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;->appendParamForPreview(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/core/RequestTemplate;Lcom/android/camera/one/v2/core/RequestTemplate;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/OneCameraCaptureSetting;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/common/BasicCameraFactory;->mCaptureRequestExtension:Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    move-object/from16 v18, v0

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    move-object/from16 v23, v17

    invoke-virtual/range {v18 .. v23}, Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;->appendParamForAutoFocus(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/core/RequestTemplate;Lcom/android/camera/one/v2/core/RequestTemplate;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V

    .line 267
    move-object/from16 v0, p9

    move-object/from16 v1, v21

    move/from16 v2, p15

    invoke-interface {v0, v1, v2}, Lcom/android/camera/one/v2/commands/PreviewCommandFactory;->get(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;I)Lcom/android/camera/one/v2/commands/CameraCommand;

    move-result-object v69

    .line 269
    .local v69, "previewUpdaterCommand":Lcom/android/camera/one/v2/commands/CameraCommand;
    const/16 v85, 0x0

    .line 270
    .local v85, "slavePreviewUpdaterCommand":Lcom/android/camera/one/v2/commands/CameraCommand;
    if-eqz v22, :cond_3

    .line 272
    move-object/from16 v0, p10

    move-object/from16 v1, v22

    move/from16 v2, p16

    invoke-interface {v0, v1, v2}, Lcom/android/camera/one/v2/commands/PreviewCommandFactory;->get(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;I)Lcom/android/camera/one/v2/commands/CameraCommand;

    move-result-object v85

    .line 277
    :cond_3
    new-instance v3, Lcom/android/camera/one/v2/commands/PreviewRunnableCameraCommand;

    move-object/from16 v0, p8

    move-object/from16 v1, v69

    move-object/from16 v2, v85

    invoke-direct {v3, v0, v1, v2}, Lcom/android/camera/one/v2/commands/PreviewRunnableCameraCommand;-><init>(Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/one/v2/commands/CameraCommand;Lcom/android/camera/one/v2/commands/CameraCommand;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/one/v2/common/BasicCameraFactory;->mPreviewUpdater:Ljava/lang/Runnable;

    .line 282
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/common/BasicCameraFactory;->mPreviewUpdater:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 289
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/common/BasicCameraFactory;->mPreviewUpdater:Ljava/lang/Runnable;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v8

    move-object/from16 v0, p12

    invoke-interface {v0, v3, v8}, Lcom/android/camera/async/Observable;->addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v89

    .line 290
    .local v89, "zoomCallback":Lcom/android/camera/async/SafeCloseable;
    move-object/from16 v0, p1

    move-object/from16 v1, v89

    invoke-virtual {v0, v1}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 291
    invoke-static/range {v17 .. v17}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isDualSightMode(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 292
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/common/BasicCameraFactory;->mPreviewUpdater:Ljava/lang/Runnable;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v8

    move-object/from16 v0, p13

    invoke-interface {v0, v3, v8}, Lcom/android/camera/async/Observable;->addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v86

    .line 293
    .local v86, "slaveZoomCallback":Lcom/android/camera/async/SafeCloseable;
    move-object/from16 v0, p1

    move-object/from16 v1, v86

    invoke-virtual {v0, v1}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 295
    .end local v86    # "slaveZoomCallback":Lcom/android/camera/async/SafeCloseable;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/common/BasicCameraFactory;->mPreviewUpdater:Ljava/lang/Runnable;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v8

    invoke-interface {v4, v3, v8}, Lcom/android/camera/async/Observable;->addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v56

    .line 296
    .local v56, "flashCallback":Lcom/android/camera/async/SafeCloseable;
    move-object/from16 v0, p1

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 297
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/common/BasicCameraFactory;->mPreviewUpdater:Ljava/lang/Runnable;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v8

    move-object/from16 v0, v62

    invoke-interface {v0, v3, v8}, Lcom/android/camera/async/Observable;->addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v54

    .line 298
    .local v54, "expSettingCallback":Lcom/android/camera/async/SafeCloseable;
    move-object/from16 v0, p1

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 299
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/common/BasicCameraFactory;->mPreviewUpdater:Ljava/lang/Runnable;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v8

    invoke-interface {v7, v3, v8}, Lcom/android/camera/async/Observable;->addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v60

    .line 300
    .local v60, "hdrCallback":Lcom/android/camera/async/SafeCloseable;
    move-object/from16 v0, p1

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 301
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/common/BasicCameraFactory;->mPreviewUpdater:Ljava/lang/Runnable;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v8

    invoke-interface {v6, v3, v8}, Lcom/android/camera/async/Observable;->addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v64

    .line 302
    .local v64, "manualISOCallback":Lcom/android/camera/async/SafeCloseable;
    move-object/from16 v0, p1

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 303
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/common/BasicCameraFactory;->mPreviewUpdater:Ljava/lang/Runnable;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v8

    invoke-interface {v5, v3, v8}, Lcom/android/camera/async/Observable;->addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v55

    .line 304
    .local v55, "expTimeCallback":Lcom/android/camera/async/SafeCloseable;
    move-object/from16 v0, p1

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 305
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/common/BasicCameraFactory;->mPreviewUpdater:Ljava/lang/Runnable;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v8

    move-object/from16 v0, v63

    invoke-interface {v0, v3, v8}, Lcom/android/camera/async/Observable;->addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v57

    .line 306
    .local v57, "focusSettingCallback":Lcom/android/camera/async/SafeCloseable;
    move-object/from16 v0, p1

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 307
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/common/BasicCameraFactory;->mPreviewUpdater:Ljava/lang/Runnable;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v8

    move-object/from16 v0, v65

    invoke-interface {v0, v3, v8}, Lcom/android/camera/async/Observable;->addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v88

    .line 308
    .local v88, "wbSettingCallback":Lcom/android/camera/async/SafeCloseable;
    move-object/from16 v0, p1

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 309
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/common/BasicCameraFactory;->mPreviewUpdater:Ljava/lang/Runnable;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v8

    move-object/from16 v0, v59

    invoke-interface {v0, v3, v8}, Lcom/android/camera/async/Observable;->addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v58

    .line 310
    .local v58, "frontCamMirrorCallback":Lcom/android/camera/async/SafeCloseable;
    move-object/from16 v0, p1

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 311
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/common/BasicCameraFactory;->mPreviewUpdater:Ljava/lang/Runnable;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v8

    move-object/from16 v0, v68

    invoke-interface {v0, v3, v8}, Lcom/android/camera/async/Observable;->addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v87

    .line 312
    .local v87, "targetPreviewFpsCallback":Lcom/android/camera/async/SafeCloseable;
    move-object/from16 v0, p1

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 313
    invoke-static/range {v17 .. v17}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isNeedSceneUpdateIQParmeter(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v13}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 314
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/common/BasicCameraFactory;->mPreviewUpdater:Ljava/lang/Runnable;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v8

    move-object/from16 v0, v71

    invoke-interface {v0, v3, v8}, Lcom/android/camera/async/Observable;->addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v70

    .line 315
    .local v70, "saturationCallback":Lcom/android/camera/async/SafeCloseable;
    move-object/from16 v0, p1

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 316
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/common/BasicCameraFactory;->mPreviewUpdater:Ljava/lang/Runnable;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v8

    move-object/from16 v0, v51

    invoke-interface {v0, v3, v8}, Lcom/android/camera/async/Observable;->addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v50

    .line 317
    .local v50, "contrastCallback":Lcom/android/camera/async/SafeCloseable;
    move-object/from16 v0, p1

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 318
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/common/BasicCameraFactory;->mPreviewUpdater:Ljava/lang/Runnable;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v8

    move-object/from16 v0, v82

    invoke-interface {v0, v3, v8}, Lcom/android/camera/async/Observable;->addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v81

    .line 319
    .local v81, "sharpnessCallback":Lcom/android/camera/async/SafeCloseable;
    move-object/from16 v0, p1

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 320
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/common/BasicCameraFactory;->mPreviewUpdater:Ljava/lang/Runnable;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v8

    move-object/from16 v0, v77

    invoke-interface {v0, v3, v8}, Lcom/android/camera/async/Observable;->addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v76

    .line 321
    .local v76, "sceneExpCallback":Lcom/android/camera/async/SafeCloseable;
    move-object/from16 v0, p1

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 322
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/common/BasicCameraFactory;->mPreviewUpdater:Ljava/lang/Runnable;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v8

    move-object/from16 v0, v79

    invoke-interface {v0, v3, v8}, Lcom/android/camera/async/Observable;->addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v78

    .line 323
    .local v78, "sceneWBCallback":Lcom/android/camera/async/SafeCloseable;
    move-object/from16 v0, p1

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 324
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/common/BasicCameraFactory;->mPreviewUpdater:Ljava/lang/Runnable;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v8

    move-object/from16 v0, v67

    invoke-interface {v0, v3, v8}, Lcom/android/camera/async/Observable;->addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v66

    .line 325
    .local v66, "manualWbValueCallback":Lcom/android/camera/async/SafeCloseable;
    move-object/from16 v0, p1

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 326
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/common/BasicCameraFactory;->mPreviewUpdater:Ljava/lang/Runnable;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v8

    move-object/from16 v0, v73

    invoke-interface {v0, v3, v8}, Lcom/android/camera/async/Observable;->addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v72

    .line 327
    .local v72, "sceneClassifyModeCallback":Lcom/android/camera/async/SafeCloseable;
    move-object/from16 v0, p1

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 328
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/common/BasicCameraFactory;->mPreviewUpdater:Ljava/lang/Runnable;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v8

    move-object/from16 v0, v75

    invoke-interface {v0, v3, v8}, Lcom/android/camera/async/Observable;->addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v74

    .line 329
    .local v74, "sceneClassifyOrientationCallback":Lcom/android/camera/async/SafeCloseable;
    move-object/from16 v0, p1

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 331
    .end local v50    # "contrastCallback":Lcom/android/camera/async/SafeCloseable;
    .end local v66    # "manualWbValueCallback":Lcom/android/camera/async/SafeCloseable;
    .end local v70    # "saturationCallback":Lcom/android/camera/async/SafeCloseable;
    .end local v72    # "sceneClassifyModeCallback":Lcom/android/camera/async/SafeCloseable;
    .end local v74    # "sceneClassifyOrientationCallback":Lcom/android/camera/async/SafeCloseable;
    .end local v76    # "sceneExpCallback":Lcom/android/camera/async/SafeCloseable;
    .end local v78    # "sceneWBCallback":Lcom/android/camera/async/SafeCloseable;
    .end local v81    # "sharpnessCallback":Lcom/android/camera/async/SafeCloseable;
    :cond_5
    invoke-static/range {v17 .. v17}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isControlByCameraIdRequired(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 332
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/common/BasicCameraFactory;->mPreviewUpdater:Ljava/lang/Runnable;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v8

    invoke-interface {v11, v3, v8}, Lcom/android/camera/async/Observable;->addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v53

    .line 333
    .local v53, "currentCameraIdCallback":Lcom/android/camera/async/SafeCloseable;
    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 335
    .end local v53    # "currentCameraIdCallback":Lcom/android/camera/async/SafeCloseable;
    :cond_6
    sget-object v3, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->BOKEH:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-object/from16 v0, v17

    if-ne v3, v0, :cond_7

    .line 336
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v3

    sget-object v8, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v3, v8, :cond_7

    .line 337
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getDualCamType()Lcom/android/camera/util/ProductModelUtil$DualCamType;

    move-result-object v3

    sget-object v8, Lcom/android/camera/util/ProductModelUtil$DualCamType;->QC_LOGIC_CAM:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    if-ne v3, v8, :cond_7

    .line 338
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/common/BasicCameraFactory;->mPreviewUpdater:Ljava/lang/Runnable;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v8

    move-object/from16 v0, v47

    invoke-interface {v0, v3, v8}, Lcom/android/camera/async/Observable;->addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v48

    .line 339
    .local v48, "bokehLevelSettingCallback":Lcom/android/camera/async/SafeCloseable;
    move-object/from16 v0, p1

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 340
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqBokehBeauty()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 341
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/common/BasicCameraFactory;->mPreviewUpdater:Ljava/lang/Runnable;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v8

    move-object/from16 v0, v45

    invoke-interface {v0, v3, v8}, Lcom/android/camera/async/Observable;->addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v46

    .line 342
    .local v46, "beautySettingCallback":Lcom/android/camera/async/SafeCloseable;
    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 346
    .end local v46    # "beautySettingCallback":Lcom/android/camera/async/SafeCloseable;
    .end local v48    # "bokehLevelSettingCallback":Lcom/android/camera/async/SafeCloseable;
    :cond_7
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorOrientation()I

    move-result v80

    .line 347
    .local v80, "sensorOrientation":I
    new-instance v23, Lcom/android/camera/async/Lifetime;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/camera/async/Lifetime;-><init>(Lcom/android/camera/async/Lifetime;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/common/BasicCameraFactory;->mPreviewUpdater:Ljava/lang/Runnable;

    move-object/from16 v37, v0

    new-instance v42, Lcom/android/camera/one/Settings3A;

    invoke-direct/range {v42 .. v42}, Lcom/android/camera/one/Settings3A;-><init>()V

    const/4 v3, 0x1

    .line 369
    invoke-static {v3}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v44

    move-object/from16 v24, p2

    move-object/from16 v25, p3

    move-object/from16 v26, p4

    move-object/from16 v27, p5

    move-object/from16 v28, p8

    move-object/from16 v35, v17

    move-object/from16 v38, v21

    move-object/from16 v39, v22

    move/from16 v40, p15

    move/from16 v41, p16

    move-object/from16 v43, p11

    .line 347
    invoke-static/range {v23 .. v44}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusFactory;->create(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/one/v2/autofocus/AEMeteringRegion;Lcom/android/camera/one/v2/autofocus/AEMeteringRegion;Lcom/android/camera/one/v2/autofocus/AFMeteringRegion;Lcom/android/camera/one/v2/autofocus/AFMeteringRegion;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/async/ConcurrentState;Ljava/lang/Runnable;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;IILcom/android/camera/one/Settings3A;Lcom/android/camera/one/OneCameraCaptureSetting;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/android/camera/one/v2/autofocus/ManualAutoFocusFactory;

    move-result-object v61

    .line 370
    .local v61, "manualAutoFocusFactory":Lcom/android/camera/one/v2/autofocus/ManualAutoFocusFactory;
    invoke-virtual/range {v61 .. v61}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocusFactory;->provideManualAutoFocus()Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/one/v2/common/BasicCameraFactory;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    .line 371
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/one/v2/common/BasicCameraFactory;->mMeteredZoomedRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 372
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/one/v2/common/BasicCameraFactory;->mSlaveMeteredZoomedRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 373
    return-void

    .line 193
    .end local v22    # "slaveRequestTemplate":Lcom/android/camera/one/v2/core/RequestTemplate;
    .end local v30    # "slaveCurrentMeteringParameters":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Lcom/android/camera/one/v2/autofocus/MeteringParameters;>;"
    .end local v32    # "slaveAeMeteringRegion":Lcom/android/camera/one/v2/autofocus/AEMeteringRegion;
    .end local v34    # "slaveAfMeteringRegion":Lcom/android/camera/one/v2/autofocus/AFMeteringRegion;
    .end local v54    # "expSettingCallback":Lcom/android/camera/async/SafeCloseable;
    .end local v55    # "expTimeCallback":Lcom/android/camera/async/SafeCloseable;
    .end local v56    # "flashCallback":Lcom/android/camera/async/SafeCloseable;
    .end local v57    # "focusSettingCallback":Lcom/android/camera/async/SafeCloseable;
    .end local v58    # "frontCamMirrorCallback":Lcom/android/camera/async/SafeCloseable;
    .end local v60    # "hdrCallback":Lcom/android/camera/async/SafeCloseable;
    .end local v61    # "manualAutoFocusFactory":Lcom/android/camera/one/v2/autofocus/ManualAutoFocusFactory;
    .end local v64    # "manualISOCallback":Lcom/android/camera/async/SafeCloseable;
    .end local v69    # "previewUpdaterCommand":Lcom/android/camera/one/v2/commands/CameraCommand;
    .end local v80    # "sensorOrientation":I
    .end local v85    # "slavePreviewUpdaterCommand":Lcom/android/camera/one/v2/commands/CameraCommand;
    .end local v87    # "targetPreviewFpsCallback":Lcom/android/camera/async/SafeCloseable;
    .end local v88    # "wbSettingCallback":Lcom/android/camera/async/SafeCloseable;
    .end local v89    # "zoomCallback":Lcom/android/camera/async/SafeCloseable;
    :cond_8
    invoke-static/range {v17 .. v17}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->needLockPreviewFps(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 194
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v8, Lcom/android/camera/one/v2/common/PreviewFpsRangeSelector;

    move-object/from16 v0, v68

    move-object/from16 v1, p14

    invoke-direct {v8, v0, v1}, Lcom/android/camera/one/v2/common/PreviewFpsRangeSelector;-><init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v8}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    goto/16 :goto_0

    .line 195
    :cond_9
    invoke-static/range {v17 .. v17}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isNeedSceneUpdateIQParmeter(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v13}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 196
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v8, Lcom/android/camera/one/v2/common/ExpValueBasedTouchExp;

    move-object/from16 v0, v77

    move-object/from16 v1, v36

    invoke-direct {v8, v0, v1}, Lcom/android/camera/one/v2/common/ExpValueBasedTouchExp;-><init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v8}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    goto/16 :goto_0

    .line 198
    :cond_a
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v8, Lcom/android/camera/one/v2/common/TouchExposureValue;

    move-object/from16 v0, v36

    invoke-direct {v8, v0}, Lcom/android/camera/one/v2/common/TouchExposureValue;-><init>(Lcom/google/common/base/Supplier;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v8}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    goto/16 :goto_0

    .restart local v22    # "slaveRequestTemplate":Lcom/android/camera/one/v2/core/RequestTemplate;
    .restart local v30    # "slaveCurrentMeteringParameters":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Lcom/android/camera/one/v2/autofocus/MeteringParameters;>;"
    .restart local v32    # "slaveAeMeteringRegion":Lcom/android/camera/one/v2/autofocus/AEMeteringRegion;
    .restart local v34    # "slaveAfMeteringRegion":Lcom/android/camera/one/v2/autofocus/AFMeteringRegion;
    .restart local v83    # "slaveCaptureSizeCropRegion":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroid/graphics/Rect;>;"
    .restart local v84    # "slaveCropRegion":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroid/graphics/Rect;>;"
    :cond_b
    move-object/from16 v30, v29

    .line 234
    goto/16 :goto_1

    .line 255
    :cond_c
    invoke-static/range {v17 .. v17}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->needLockPreviewFps(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 256
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v8, Lcom/android/camera/one/v2/common/PreviewFpsRangeSelector;

    move-object/from16 v0, v68

    move-object/from16 v1, p14

    invoke-direct {v8, v0, v1}, Lcom/android/camera/one/v2/common/PreviewFpsRangeSelector;-><init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v8}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    goto/16 :goto_2

    .line 258
    :cond_d
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v8, Lcom/android/camera/one/v2/common/TouchExposureValue;

    move-object/from16 v0, v36

    invoke-direct {v8, v0}, Lcom/android/camera/one/v2/common/TouchExposureValue;-><init>(Lcom/google/common/base/Supplier;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v8}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    goto/16 :goto_2
.end method


# virtual methods
.method public provideCaptureRequestExtension()Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/camera/one/v2/common/BasicCameraFactory;->mCaptureRequestExtension:Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;

    return-object v0
.end method

.method public provideManualAutoFocus()Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/camera/one/v2/common/BasicCameraFactory;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    return-object v0
.end method

.method public provideMeteredZoomedRequestBuilder()Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/camera/one/v2/common/BasicCameraFactory;->mMeteredZoomedRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    return-object v0
.end method

.method public providePreviewUpdater()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/camera/one/v2/common/BasicCameraFactory;->mPreviewUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method public provideSlaveMeteredZoomedRequestBuilder()Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/camera/one/v2/common/BasicCameraFactory;->mSlaveMeteredZoomedRequestBuilder:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    return-object v0
.end method
