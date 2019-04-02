.class public Lcom/android/camera/one/v2/photo/BokehPictureTakerFactory;
.super Ljava/lang/Object;
.source "BokehPictureTakerFactory.java"

# interfaces
.implements Lcom/android/camera/one/v2/photo/PictureTakerFactory;


# static fields
.field private static final MAX_LOOKBACK_NANOS:J = 0x5f5e100L


# instance fields
.field private final mFlashDetector:Lcom/android/camera/one/v2/photo/FlashDetector;

.field private final mPictureTaker:Lcom/android/camera/one/v2/photo/PictureTakerImpl;

.field private final mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/photo/PictureTakerImpl;Lcom/android/camera/one/v2/photo/SceneDetector;Lcom/android/camera/one/v2/photo/FlashDetector;)V
    .locals 0
    .param p1, "pictureTaker"    # Lcom/android/camera/one/v2/photo/PictureTakerImpl;
    .param p2, "sceneDetector"    # Lcom/android/camera/one/v2/photo/SceneDetector;
    .param p3, "flashDetector"    # Lcom/android/camera/one/v2/photo/FlashDetector;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/BokehPictureTakerFactory;->mPictureTaker:Lcom/android/camera/one/v2/photo/PictureTakerImpl;

    .line 66
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/BokehPictureTakerFactory;->mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

    .line 67
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/BokehPictureTakerFactory;->mFlashDetector:Lcom/android/camera/one/v2/photo/FlashDetector;

    .line 68
    return-void
.end method

.method public static create(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/async/MainThread;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Ljava/lang/Runnable;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/async/BufferQueue;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/v2/core/ResponseManager;Lcom/android/camera/one/v2/core/ResponseManager;IIILcom/android/camera/async/Observable;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/v2/photo/BokehResultProvider;)Lcom/android/camera/one/v2/photo/BokehPictureTakerFactory;
    .locals 70
    .param p0, "logFactory"    # Lcom/android/camera/debug/Logger$Factory;
    .param p1, "mainExecutor"    # Lcom/android/camera/async/MainThread;
    .param p2, "characteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p3, "slaveCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "commandExecutor"    # Lcom/android/camera/one/v2/commands/CameraCommandExecutor;
    .param p5, "imageSaverBuilder"    # Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;
    .param p6, "imageProcessorBuilder"    # Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;
    .param p7, "frameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
    .param p8, "slaveFrameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p9, "manualAutoFocus"    # Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    .param p10, "rootRequestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p11, "slaveRootRequestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p12, "restorePreviewCommand"    # Ljava/lang/Runnable;
    .param p13, "captureRequestExtension"    # Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;
    .param p14    # Lcom/android/camera/async/BufferQueue;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p15, "sharedImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p16, "slaveSharedImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p17, "imageReprocessor"    # Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;
    .param p18, "rawImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p19, "metadataPool"    # Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p20, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .param p21, "globalResponseManager"    # Lcom/android/camera/one/v2/core/ResponseManager;
    .param p22, "slaveGlobalResponseManager"    # Lcom/android/camera/one/v2/core/ResponseManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p23, "repeatingTemplateType"    # I
    .param p24, "slaveRepeatingTemplateType"    # I
    .param p25, "captureTemplateType"    # I
    .param p27, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;
    .param p28, "bokehResultProvider"    # Lcom/android/camera/one/v2/photo/BokehResultProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/debug/Logger$Factory;",
            "Lcom/android/camera/async/MainThread;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/android/camera/one/v2/commands/CameraCommandExecutor;",
            "Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;",
            "Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            "Ljava/lang/Runnable;",
            "Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;",
            "Lcom/android/camera/async/BufferQueue",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            ">;",
            "Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;",
            "Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;",
            "Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;",
            "Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;",
            "Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;",
            "Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;",
            "Lcom/android/camera/one/v2/core/ResponseManager;",
            "Lcom/android/camera/one/v2/core/ResponseManager;",
            "III",
            "Lcom/android/camera/async/Observable",
            "<[",
            "Landroid/hardware/camera2/params/Face;",
            ">;",
            "Lcom/android/camera/one/OneCameraCaptureSetting;",
            "Lcom/android/camera/one/v2/photo/BokehResultProvider;",
            ")",
            "Lcom/android/camera/one/v2/photo/BokehPictureTakerFactory;"
        }
    .end annotation

    .prologue
    .line 101
    .local p14, "ringBuffer":Lcom/android/camera/async/BufferQueue;, "Lcom/android/camera/async/BufferQueue<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;"
    .local p26, "faceData":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<[Landroid/hardware/camera2/params/Face;>;"
    invoke-static/range {p0 .. p0}, Lcom/android/camera/one/v2/photo/State3ADetector;->create(Lcom/android/camera/debug/Logger$Factory;)Lcom/android/camera/one/v2/photo/State3ADetector;

    move-result-object v21

    .line 102
    .local v21, "state3ADetector":Lcom/android/camera/one/v2/photo/State3ADetector;
    invoke-static/range {v21 .. v21}, Lcom/android/camera/one/v2/core/ResponseListeners;->forPartialMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v7

    move-object/from16 v0, p21

    invoke-interface {v0, v7}, Lcom/android/camera/one/v2/core/ResponseManager;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 104
    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter;->create(Lcom/android/camera/debug/Logger$Factory;Z)Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter;

    move-result-object v22

    .line 106
    .local v22, "autoFlashZslImageFilter":Lcom/android/camera/one/v2/photo/zsl/AutoFlashZslImageFilter;
    invoke-static/range {v22 .. v22}, Lcom/android/camera/one/v2/core/ResponseListeners;->forPartialMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v7

    move-object/from16 v0, p21

    invoke-interface {v0, v7}, Lcom/android/camera/one/v2/core/ResponseManager;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 108
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, p20

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/one/v2/photo/ASDImageFilter;->create(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/one/v2/photo/FlashDetector;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Lcom/android/camera/one/v2/photo/ASDImageFilter;

    move-result-object v41

    .line 109
    .local v41, "sceneDetector":Lcom/android/camera/one/v2/photo/ASDImageFilter;
    invoke-static/range {v41 .. v41}, Lcom/android/camera/one/v2/core/ResponseListeners;->forFinalMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v7

    move-object/from16 v0, p21

    invoke-interface {v0, v7}, Lcom/android/camera/one/v2/core/ResponseManager;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 111
    const/16 v42, 0x0

    .line 112
    .local v42, "slaveSceneDetector":Lcom/android/camera/one/v2/photo/ASDImageFilter;
    if-eqz p22, :cond_0

    .line 113
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p3

    move-object/from16 v3, p20

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/one/v2/photo/ASDImageFilter;->create(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/one/v2/photo/FlashDetector;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Lcom/android/camera/one/v2/photo/ASDImageFilter;

    move-result-object v42

    .line 114
    invoke-static/range {v42 .. v42}, Lcom/android/camera/one/v2/core/ResponseListeners;->forFinalMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v7

    move-object/from16 v0, p22

    invoke-interface {v0, v7}, Lcom/android/camera/one/v2/core/ResponseManager;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 117
    :cond_0
    invoke-static {}, Lcom/android/camera/one/v2/photo/extension/CameraCommandFactoryCreator;->create()Lcom/android/camera/one/v2/photo/extension/CameraCommandFactory;

    move-result-object v68

    .line 120
    .local v68, "cameraCommandFactory":Lcom/android/camera/one/v2/photo/extension/CameraCommandFactory;
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v7

    sget-object v8, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v7, v8, :cond_2

    .line 122
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getDualCamType()Lcom/android/camera/util/ProductModelUtil$DualCamType;

    move-result-object v7

    sget-object v8, Lcom/android/camera/util/ProductModelUtil$DualCamType;->NONE:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    if-eq v7, v8, :cond_1

    .line 123
    new-instance v6, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    const/4 v8, 0x0

    aput-object p10, v7, v8

    .line 124
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-virtual/range {p27 .. p27}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureRawSetting()Lcom/android/camera/async/Observable;

    move-result-object v20

    move-object/from16 v7, p2

    move-object/from16 v8, p15

    move-object/from16 v9, p17

    move-object/from16 v10, p18

    move-object/from16 v11, p7

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p13

    move/from16 v15, p23

    move/from16 v16, p25

    move-object/from16 v23, p20

    invoke-direct/range {v6 .. v23}, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;-><init>(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;IILjava/util/List;ZZLcom/android/camera/async/Observable;Lcom/android/camera/one/v2/photo/State3AProvider;Lcom/android/camera/one/v2/photo/FlashDetector;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V

    .line 126
    .local v6, "flashOffFallback":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    const/16 v39, 0x1

    .line 130
    invoke-virtual/range {p27 .. p27}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureSize()Lcom/android/camera/util/Size;

    move-result-object v44

    invoke-virtual/range {p27 .. p27}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureRawSetting()Lcom/android/camera/async/Observable;

    move-result-object v45

    .line 131
    invoke-virtual/range {p27 .. p27}, Lcom/android/camera/one/OneCameraCaptureSetting;->getBokehLevelSetting()Lcom/android/camera/async/Observable;

    move-result-object v47

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getDualCamType()Lcom/android/camera/util/ProductModelUtil$DualCamType;

    move-result-object v49

    move-object/from16 v23, v68

    move-object/from16 v24, p7

    move-object/from16 v25, p8

    move-object/from16 v26, p2

    move-object/from16 v27, p3

    move-object/from16 v28, p9

    move-object/from16 v29, p10

    move-object/from16 v30, p11

    move-object/from16 v31, p13

    move-object/from16 v32, p15

    move-object/from16 v33, p16

    move-object/from16 v34, p18

    move/from16 v35, p23

    move/from16 v36, p24

    move/from16 v37, p25

    move/from16 v38, p25

    move-object/from16 v40, v21

    move-object/from16 v43, p6

    move-object/from16 v46, p26

    move-object/from16 v48, v6

    move-object/from16 v50, p27

    move-object/from16 v51, p28

    .line 126
    invoke-virtual/range {v23 .. v51}, Lcom/android/camera/one/v2/photo/extension/CameraCommandFactory;->createBokehImageCaptureCommand(Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;IIIIZLcom/android/camera/one/v2/photo/State3AProvider;Lcom/android/camera/one/v2/photo/SceneDetector;Lcom/android/camera/one/v2/photo/SceneDetector;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/util/Size;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/util/ProductModelUtil$DualCamType;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/v2/photo/BokehResultProvider;)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    move-result-object v23

    .line 140
    .end local v6    # "flashOffFallback":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .local v23, "bokehCaptureCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    :goto_0
    new-instance v69, Lcom/android/camera/one/v2/photo/PictureTakerImpl;

    move-object/from16 v0, v69

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/PictureTakerImpl;-><init>(Lcom/android/camera/async/MainThread;Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;)V

    .line 142
    .local v69, "pictureTaker":Lcom/android/camera/one/v2/photo/PictureTakerImpl;
    new-instance v7, Lcom/android/camera/one/v2/photo/BokehPictureTakerFactory;

    move-object/from16 v0, v69

    move-object/from16 v1, v41

    move-object/from16 v2, v22

    invoke-direct {v7, v0, v1, v2}, Lcom/android/camera/one/v2/photo/BokehPictureTakerFactory;-><init>(Lcom/android/camera/one/v2/photo/PictureTakerImpl;Lcom/android/camera/one/v2/photo/SceneDetector;Lcom/android/camera/one/v2/photo/FlashDetector;)V

    return-object v7

    .line 133
    .end local v23    # "bokehCaptureCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .end local v69    # "pictureTaker":Lcom/android/camera/one/v2/photo/PictureTakerImpl;
    :cond_1
    new-instance v23, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    const/4 v8, 0x0

    aput-object p10, v7, v8

    .line 134
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v34

    const/16 v35, 0x0

    const/16 v36, 0x1

    invoke-virtual/range {p27 .. p27}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureRawSetting()Lcom/android/camera/async/Observable;

    move-result-object v37

    move-object/from16 v24, p2

    move-object/from16 v25, p15

    move-object/from16 v26, p17

    move-object/from16 v27, p18

    move-object/from16 v28, p7

    move-object/from16 v29, p9

    move-object/from16 v30, p10

    move-object/from16 v31, p13

    move/from16 v32, p23

    move/from16 v33, p25

    move-object/from16 v38, v21

    move-object/from16 v39, v22

    move-object/from16 v40, p20

    invoke-direct/range {v23 .. v40}, Lcom/android/camera/one/v2/photo/ConvergedImageCaptureCommand;-><init>(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;IILjava/util/List;ZZLcom/android/camera/async/Observable;Lcom/android/camera/one/v2/photo/State3AProvider;Lcom/android/camera/one/v2/photo/FlashDetector;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V

    .restart local v23    # "bokehCaptureCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    goto :goto_0

    .line 137
    .end local v23    # "bokehCaptureCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    :cond_2
    const/16 v56, 0x1

    invoke-virtual/range {p27 .. p27}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureSize()Lcom/android/camera/util/Size;

    move-result-object v60

    invoke-virtual/range {p27 .. p27}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureRawSetting()Lcom/android/camera/async/Observable;

    move-result-object v62

    invoke-virtual/range {p27 .. p27}, Lcom/android/camera/one/OneCameraCaptureSetting;->getBeautySetting()Lcom/android/camera/async/Observable;

    move-result-object v63

    invoke-virtual/range {p27 .. p27}, Lcom/android/camera/one/OneCameraCaptureSetting;->getBeautyLevelSetting()Lcom/android/camera/async/Observable;

    move-result-object v64

    const/16 v65, 0x1

    const-wide/32 v66, 0x5f5e100

    move-object/from16 v44, v68

    move-object/from16 v45, p2

    move-object/from16 v46, p14

    move-object/from16 v47, p19

    move-object/from16 v48, p7

    move-object/from16 v49, p9

    move-object/from16 v50, p10

    move-object/from16 v51, p13

    move-object/from16 v52, p15

    move-object/from16 v53, p18

    move/from16 v54, p23

    move/from16 v55, p25

    move-object/from16 v57, v21

    move-object/from16 v58, p12

    move-object/from16 v59, p6

    move-object/from16 v61, v22

    invoke-virtual/range {v44 .. v67}, Lcom/android/camera/one/v2/photo/extension/CameraCommandFactory;->creatPicSelfieImageCaptureCommand(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/async/BufferQueue;Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;IIZLcom/android/camera/one/v2/photo/State3AProvider;Ljava/lang/Runnable;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/util/Size;Lcom/android/camera/one/v2/photo/FlashDetector;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;ZJ)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    move-result-object v23

    .restart local v23    # "bokehCaptureCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    goto/16 :goto_0
.end method


# virtual methods
.method public provideFlashDetector()Lcom/android/camera/one/v2/photo/FlashDetector;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/BokehPictureTakerFactory;->mFlashDetector:Lcom/android/camera/one/v2/photo/FlashDetector;

    return-object v0
.end method

.method public providePictureTaker()Lcom/android/camera/one/v2/photo/PictureTaker;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/BokehPictureTakerFactory;->mPictureTaker:Lcom/android/camera/one/v2/photo/PictureTakerImpl;

    return-object v0
.end method

.method public provideSceneDetector()Lcom/android/camera/one/v2/photo/SceneDetector;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/BokehPictureTakerFactory;->mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

    return-object v0
.end method
