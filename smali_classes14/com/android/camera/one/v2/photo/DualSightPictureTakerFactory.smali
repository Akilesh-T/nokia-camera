.class public Lcom/android/camera/one/v2/photo/DualSightPictureTakerFactory;
.super Ljava/lang/Object;
.source "DualSightPictureTakerFactory.java"

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
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/DualSightPictureTakerFactory;->mPictureTaker:Lcom/android/camera/one/v2/photo/PictureTakerImpl;

    .line 53
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/DualSightPictureTakerFactory;->mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

    .line 54
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/DualSightPictureTakerFactory;->mFlashDetector:Lcom/android/camera/one/v2/photo/FlashDetector;

    .line 55
    return-void
.end method

.method public static create(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/async/MainThread;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Ljava/lang/Runnable;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/v2/core/ResponseManager;Lcom/android/camera/one/v2/core/ResponseManager;IIILcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/opengl/image/ImageGeneratorProvider;)Lcom/android/camera/one/v2/photo/DualSightPictureTakerFactory;
    .locals 34
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
    .param p14, "sharedImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p15, "slaveSharedImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p16, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .param p17, "globalResponseManager"    # Lcom/android/camera/one/v2/core/ResponseManager;
    .param p18, "slaveGlobalResponseManager"    # Lcom/android/camera/one/v2/core/ResponseManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p19, "repeatingTemplateType"    # I
    .param p20, "slaveRepeatingTemplateType"    # I
    .param p21, "captureTemplateType"    # I
    .param p22, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;
    .param p23, "imageRotationCalculator"    # Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    .param p24, "slaveImageRotationCalculator"    # Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    .param p25, "imageGeneratorProvider"    # Lcom/android/camera/opengl/image/ImageGeneratorProvider;

    .prologue
    .line 85
    new-instance v31, Lcom/android/camera/one/v2/photo/FlashDetectorStub;

    invoke-direct/range {v31 .. v31}, Lcom/android/camera/one/v2/photo/FlashDetectorStub;-><init>()V

    .line 87
    .local v31, "flashDetector":Lcom/android/camera/one/v2/photo/FlashDetector;
    new-instance v33, Lcom/android/camera/one/v2/photo/SceneDetectorStub;

    invoke-direct/range {v33 .. v33}, Lcom/android/camera/one/v2/photo/SceneDetectorStub;-><init>()V

    .line 89
    .local v33, "sceneDetector":Lcom/android/camera/one/v2/photo/SceneDetector;
    invoke-static {}, Lcom/android/camera/one/v2/photo/extension/CameraCommandFactoryCreator;->create()Lcom/android/camera/one/v2/photo/extension/CameraCommandFactory;

    move-result-object v5

    .line 90
    .local v5, "cameraCommandFactory":Lcom/android/camera/one/v2/photo/extension/CameraCommandFactory;
    const/16 v19, 0x0

    .line 106
    invoke-virtual/range {p22 .. p22}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureSize()Lcom/android/camera/util/Size;

    move-result-object v21

    .line 107
    invoke-virtual/range {p22 .. p22}, Lcom/android/camera/one/OneCameraCaptureSetting;->getSlaveCaptureSize()Lcom/android/camera/util/Size;

    move-result-object v22

    .line 111
    invoke-virtual/range {p22 .. p22}, Lcom/android/camera/one/OneCameraCaptureSetting;->getBeautySetting()Lcom/android/camera/async/Observable;

    move-result-object v26

    .line 112
    invoke-virtual/range {p22 .. p22}, Lcom/android/camera/one/OneCameraCaptureSetting;->getBeautyLevelSetting()Lcom/android/camera/async/Observable;

    move-result-object v27

    .line 113
    invoke-virtual/range {p22 .. p22}, Lcom/android/camera/one/OneCameraCaptureSetting;->getTwiceShotSetting()Lcom/android/camera/async/Observable;

    move-result-object v28

    .line 114
    invoke-virtual/range {p22 .. p22}, Lcom/android/camera/one/OneCameraCaptureSetting;->getScreenMode()Lcom/android/camera/async/Observable;

    move-result-object v29

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move/from16 v16, p19

    move/from16 v17, p20

    move/from16 v18, p21

    move-object/from16 v20, p6

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    .line 90
    invoke-virtual/range {v5 .. v29}, Lcom/android/camera/one/v2/photo/extension/CameraCommandFactory;->createDualSightImageCaptureCommand(Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/photo/extension/CaptureRequestExtension;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;IIIZLcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/opengl/image/ImageGeneratorProvider;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;)Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    move-result-object v30

    .line 116
    .local v30, "dualSightCaptureCommand":Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    new-instance v32, Lcom/android/camera/one/v2/photo/PictureTakerImpl;

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/photo/PictureTakerImpl;-><init>(Lcom/android/camera/async/MainThread;Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;)V

    .line 118
    .local v32, "pictureTaker":Lcom/android/camera/one/v2/photo/PictureTakerImpl;
    new-instance v6, Lcom/android/camera/one/v2/photo/DualSightPictureTakerFactory;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v31

    invoke-direct {v6, v0, v1, v2}, Lcom/android/camera/one/v2/photo/DualSightPictureTakerFactory;-><init>(Lcom/android/camera/one/v2/photo/PictureTakerImpl;Lcom/android/camera/one/v2/photo/SceneDetector;Lcom/android/camera/one/v2/photo/FlashDetector;)V

    return-object v6
.end method


# virtual methods
.method public provideFlashDetector()Lcom/android/camera/one/v2/photo/FlashDetector;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/DualSightPictureTakerFactory;->mFlashDetector:Lcom/android/camera/one/v2/photo/FlashDetector;

    return-object v0
.end method

.method public providePictureTaker()Lcom/android/camera/one/v2/photo/PictureTaker;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/DualSightPictureTakerFactory;->mPictureTaker:Lcom/android/camera/one/v2/photo/PictureTakerImpl;

    return-object v0
.end method

.method public provideSceneDetector()Lcom/android/camera/one/v2/photo/SceneDetector;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/DualSightPictureTakerFactory;->mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

    return-object v0
.end method
