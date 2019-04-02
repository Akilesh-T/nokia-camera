.class public Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;
.super Ljava/lang/Object;
.source "YuvImageBackendImageProcessor.java"

# interfaces
.implements Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;,
        Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;,
        Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$DSImageProcessorImpl;,
        Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$ImageProcessorImpl;
    }
.end annotation


# instance fields
.field private mCrop:Landroid/graphics/Rect;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mImageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

.field private final mImageEngineFactoryBase:Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;

.field private final mImageRotationCalculator:Lcom/android/camera/one/v2/photo/ImageRotationCalculator;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/processing/imagebackend/ImageBackend;)V
    .locals 1
    .param p1, "imageRotationCalculator"    # Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    .param p2, "imageBackend"    # Lcom/android/camera/processing/imagebackend/ImageBackend;

    .prologue
    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    iput-object p1, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;->mImageRotationCalculator:Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    .line 339
    iput-object p2, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;->mImageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

    .line 340
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;->mExecutor:Ljava/util/concurrent/Executor;

    .line 341
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch;->getImageEngineFactory(Z)Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;->mImageEngineFactoryBase:Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;

    .line 342
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;->mCrop:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;)Lcom/android/camera/processing/imagebackend/ImageBackend;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;->mImageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

    return-object v0
.end method


# virtual methods
.method public build(Lcom/android/ex/camera2/portability/CaptureIntent;ILcom/android/camera/util/Size;ZIILcom/android/camera/one/v2/imagesaver/ImageSaver;Lcom/android/camera/stats/profiler/Profile;)Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
    .locals 18
    .param p1, "captureIntent"    # Lcom/android/ex/camera2/portability/CaptureIntent;
    .param p2, "requiredImgNum"    # I
    .param p3, "targetCaptureSize"    # Lcom/android/camera/util/Size;
    .param p4, "isFrontFacing"    # Z
    .param p5, "currentIso"    # I
    .param p6, "beautyLevel"    # I
    .param p7, "finalImageSaver"    # Lcom/android/camera/one/v2/imagesaver/ImageSaver;
    .param p8, "guard"    # Lcom/android/camera/stats/profiler/Profile;

    .prologue
    .line 393
    new-instance v2, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    new-instance v4, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$ImageProcessorImpl;

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v4, v0, v1}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$ImageProcessorImpl;-><init>(Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V

    new-instance v5, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;

    move-object/from16 v0, p7

    invoke-direct {v5, v0}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;-><init>(Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;->mImageEngineFactoryBase:Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;

    const/4 v11, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v3, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v12, p6

    move-object/from16 v16, p8

    invoke-direct/range {v2 .. v17}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;-><init>(Lcom/android/ex/camera2/portability/CaptureIntent;Lcom/android/camera/one/v2/imageprocessor/SingleImageProcessor;Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;ILcom/android/camera/util/Size;ZIZIIILjava/lang/String;Lcom/android/camera/stats/profiler/Profile;Landroid/hardware/camera2/CameraCharacteristics;)V

    return-object v2
.end method

.method public build(Lcom/android/ex/camera2/portability/CaptureIntent;ILcom/android/camera/util/Size;ZIILcom/android/camera/one/v2/imagesaver/ImageSaver;Lcom/android/camera/stats/profiler/Profile;Landroid/hardware/camera2/CameraCharacteristics;)Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
    .locals 18
    .param p1, "captureIntent"    # Lcom/android/ex/camera2/portability/CaptureIntent;
    .param p2, "requiredImgNum"    # I
    .param p3, "targetCaptureSize"    # Lcom/android/camera/util/Size;
    .param p4, "isFrontFacing"    # Z
    .param p5, "currentIso"    # I
    .param p6, "beautyLevel"    # I
    .param p7, "finalImageSaver"    # Lcom/android/camera/one/v2/imagesaver/ImageSaver;
    .param p8, "guard"    # Lcom/android/camera/stats/profiler/Profile;
    .param p9, "metadata"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    .line 434
    new-instance v2, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    new-instance v4, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$ImageProcessorImpl;

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v4, v0, v1}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$ImageProcessorImpl;-><init>(Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V

    new-instance v5, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;

    move-object/from16 v0, p7

    invoke-direct {v5, v0}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;-><init>(Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;->mImageEngineFactoryBase:Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;

    const/4 v11, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, 0x0

    move-object/from16 v3, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v12, p6

    move-object/from16 v16, p8

    move-object/from16 v17, p9

    invoke-direct/range {v2 .. v17}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;-><init>(Lcom/android/ex/camera2/portability/CaptureIntent;Lcom/android/camera/one/v2/imageprocessor/SingleImageProcessor;Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;ILcom/android/camera/util/Size;ZIZIIILjava/lang/String;Lcom/android/camera/stats/profiler/Profile;Landroid/hardware/camera2/CameraCharacteristics;)V

    return-object v2
.end method

.method public build(Lcom/android/ex/camera2/portability/CaptureIntent;ILcom/android/camera/util/Size;ZIILcom/android/camera/one/v2/imagesaver/ImageSaver;Lcom/android/camera/stats/profiler/Profile;Landroid/hardware/camera2/CameraCharacteristics;Z)Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
    .locals 19
    .param p1, "captureIntent"    # Lcom/android/ex/camera2/portability/CaptureIntent;
    .param p2, "requiredImgNum"    # I
    .param p3, "targetCaptureSize"    # Lcom/android/camera/util/Size;
    .param p4, "isFrontFacing"    # Z
    .param p5, "currentIso"    # I
    .param p6, "beautyLevel"    # I
    .param p7, "finalImageSaver"    # Lcom/android/camera/one/v2/imagesaver/ImageSaver;
    .param p8, "guard"    # Lcom/android/camera/stats/profiler/Profile;
    .param p9, "metadata"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p10, "postHandleUltraWideDC"    # Z

    .prologue
    .line 430
    new-instance v2, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    new-instance v4, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$ImageProcessorImpl;

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v4, v0, v1}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$ImageProcessorImpl;-><init>(Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V

    new-instance v5, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;

    move-object/from16 v0, p7

    invoke-direct {v5, v0}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;-><init>(Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;->mImageEngineFactoryBase:Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;

    const/4 v11, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, 0x0

    move-object/from16 v3, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v12, p6

    move-object/from16 v16, p8

    move-object/from16 v17, p9

    move/from16 v18, p10

    invoke-direct/range {v2 .. v18}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;-><init>(Lcom/android/ex/camera2/portability/CaptureIntent;Lcom/android/camera/one/v2/imageprocessor/SingleImageProcessor;Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;ILcom/android/camera/util/Size;ZIZIIILjava/lang/String;Lcom/android/camera/stats/profiler/Profile;Landroid/hardware/camera2/CameraCharacteristics;Z)V

    return-object v2
.end method

.method public buildForDualCam(Lcom/android/ex/camera2/portability/CaptureIntent;[BIFFILandroid/graphics/Point;IIILcom/android/camera/util/Size;Lcom/android/camera/one/v2/imagesaver/ImageSaver;Lcom/android/camera/stats/profiler/Profile;)Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
    .locals 17
    .param p1, "captureIntent"    # Lcom/android/ex/camera2/portability/CaptureIntent;
    .param p2, "calibrationData"    # [B
    .param p3, "dualCamLayoutOrientation"    # I
    .param p4, "horizontalViewAngle"    # F
    .param p5, "verticalViewAngle"    # F
    .param p6, "blurIntensity"    # I
    .param p7, "focusPosiiton"    # Landroid/graphics/Point;
    .param p8, "currentIso"    # I
    .param p9, "slaveCurrentIso"    # I
    .param p10, "requiredImgNum"    # I
    .param p11, "targetCaptureSize"    # Lcom/android/camera/util/Size;
    .param p12, "finalImageSaver"    # Lcom/android/camera/one/v2/imagesaver/ImageSaver;
    .param p13, "guard"    # Lcom/android/camera/stats/profiler/Profile;

    .prologue
    .line 403
    new-instance v2, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;

    new-instance v4, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$ImageProcessorImpl;

    move-object/from16 v0, p0

    move-object/from16 v1, p12

    invoke-direct {v4, v0, v1}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$ImageProcessorImpl;-><init>(Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V

    new-instance v5, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;

    move-object/from16 v0, p12

    invoke-direct {v5, v0}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;-><init>(Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;->mImageEngineFactoryBase:Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;

    move-object/from16 v3, p1

    move/from16 v7, p10

    move-object/from16 v8, p11

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p13

    invoke-direct/range {v2 .. v16}, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;-><init>(Lcom/android/ex/camera2/portability/CaptureIntent;Lcom/android/camera/one/v2/imageprocessor/SingleImageProcessor;Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;ILcom/android/camera/util/Size;II[BIFILandroid/graphics/Point;Lcom/android/camera/stats/profiler/Profile;)V

    return-object v2
.end method

.method public buildForDualSight(Lcom/android/ex/camera2/portability/CaptureIntent;ILcom/android/camera/util/Size;Lcom/android/camera/util/Size;ILcom/android/camera/opengl/image/ImageGenerator;Lcom/android/camera/one/v2/imagesaver/ImageSaver;ZILcom/android/camera/stats/profiler/Profile;)Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
    .locals 14
    .param p1, "captureIntent"    # Lcom/android/ex/camera2/portability/CaptureIntent;
    .param p2, "requiredImgNum"    # I
    .param p3, "targetCaptureSize"    # Lcom/android/camera/util/Size;
    .param p4, "slaveTargetCaptureSize"    # Lcom/android/camera/util/Size;
    .param p5, "deviceRotation"    # I
    .param p6, "imageGenerator"    # Lcom/android/camera/opengl/image/ImageGenerator;
    .param p7, "finalImageSaver"    # Lcom/android/camera/one/v2/imagesaver/ImageSaver;
    .param p8, "beautySetting"    # Z
    .param p9, "beautyLevelSetting"    # I
    .param p10, "guard"    # Lcom/android/camera/stats/profiler/Profile;

    .prologue
    .line 408
    new-instance v1, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;

    new-instance v3, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$DSImageProcessorImpl;

    move-object/from16 v0, p7

    invoke-direct {v3, p0, v0}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$DSImageProcessorImpl;-><init>(Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V

    new-instance v4, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;

    move-object/from16 v0, p7

    invoke-direct {v4, v0}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;-><init>(Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V

    iget-object v5, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;->mImageEngineFactoryBase:Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;

    move-object v2, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p10

    invoke-direct/range {v1 .. v13}, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;-><init>(Lcom/android/ex/camera2/portability/CaptureIntent;Lcom/android/camera/one/v2/imageprocessor/DSImageProcessor;Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;ILcom/android/camera/util/Size;Lcom/android/camera/util/Size;ILcom/android/camera/opengl/image/ImageGenerator;ZILcom/android/camera/stats/profiler/Profile;)V

    return-object v1
.end method

.method public buildForLogicCam(Lcom/android/ex/camera2/portability/CaptureIntent;ILcom/android/camera/util/Size;IILandroid/graphics/Point;Lcom/android/camera/one/v2/imagesaver/ImageSaver;Lcom/android/camera/stats/profiler/Profile;)Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
    .locals 11
    .param p1, "captureIntent"    # Lcom/android/ex/camera2/portability/CaptureIntent;
    .param p2, "requiredImgNum"    # I
    .param p3, "targetCaptureSize"    # Lcom/android/camera/util/Size;
    .param p4, "horizontalViewAngle"    # I
    .param p5, "blurIntensity"    # I
    .param p6, "focusPosiiton"    # Landroid/graphics/Point;
    .param p7, "finalImageSaver"    # Lcom/android/camera/one/v2/imagesaver/ImageSaver;
    .param p8, "guard"    # Lcom/android/camera/stats/profiler/Profile;

    .prologue
    .line 414
    new-instance v1, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;

    new-instance v3, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;

    move-object/from16 v0, p7

    invoke-direct {v3, p0, v0}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;-><init>(Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V

    new-instance v4, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;

    move-object/from16 v0, p7

    invoke-direct {v4, v0}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;-><init>(Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V

    move-object v2, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;-><init>(Lcom/android/ex/camera2/portability/CaptureIntent;Lcom/android/camera/one/v2/imageprocessor/LogicImageProcessor;Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;ILcom/android/camera/util/Size;IILandroid/graphics/Point;Lcom/android/camera/stats/profiler/Profile;)V

    return-object v1
.end method

.method public buildForMegvii(Lcom/android/ex/camera2/portability/CaptureIntent;ILcom/android/camera/util/Size;IILjava/lang/String;ZILcom/android/camera/one/v2/imagesaver/ImageSaver;Lcom/android/camera/stats/profiler/Profile;Z)Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
    .locals 19
    .param p1, "captureIntent"    # Lcom/android/ex/camera2/portability/CaptureIntent;
    .param p2, "requiredImgNum"    # I
    .param p3, "targetCaptureSize"    # Lcom/android/camera/util/Size;
    .param p4, "screenOrientation"    # I
    .param p5, "effectMode"    # I
    .param p6, "effectSetting"    # Ljava/lang/String;
    .param p7, "beautySetting"    # Z
    .param p8, "beautyLevelSetting"    # I
    .param p9, "finalImageSaver"    # Lcom/android/camera/one/v2/imagesaver/ImageSaver;
    .param p10, "guard"    # Lcom/android/camera/stats/profiler/Profile;
    .param p11, "postHandleUltraWideDC"    # Z

    .prologue
    .line 420
    new-instance v2, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    new-instance v4, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$ImageProcessorImpl;

    move-object/from16 v0, p0

    move-object/from16 v1, p9

    invoke-direct {v4, v0, v1}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$ImageProcessorImpl;-><init>(Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V

    new-instance v5, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;

    move-object/from16 v0, p9

    invoke-direct {v5, v0}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;-><init>(Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;->mImageEngineFactoryBase:Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;

    const/4 v9, 0x0

    const/4 v10, -0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;->mImageRotationCalculator:Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    invoke-interface {v3}, Lcom/android/camera/one/v2/photo/ImageRotationCalculator;->getSupplier()Lcom/google/common/base/Supplier;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v17, 0x0

    move-object/from16 v3, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v16, p10

    move/from16 v18, p11

    invoke-direct/range {v2 .. v18}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;-><init>(Lcom/android/ex/camera2/portability/CaptureIntent;Lcom/android/camera/one/v2/imageprocessor/SingleImageProcessor;Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;ILcom/android/camera/util/Size;ZIZIIILjava/lang/String;Lcom/android/camera/stats/profiler/Profile;Landroid/hardware/camera2/CameraCharacteristics;Z)V

    return-object v2
.end method

.method public buildForPanorama(Lcom/android/ex/camera2/portability/CaptureIntent;FFLcom/android/camera/util/Size;Lcom/android/camera/one/v2/imagesaver/ImageSaver;Lcom/android/camera/burst/BurstController;Lcom/android/camera/stats/profiler/Profile;)Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
    .locals 10
    .param p1, "captureIntent"    # Lcom/android/ex/camera2/portability/CaptureIntent;
    .param p2, "horizontalViewAngle"    # F
    .param p3, "verticalViewAngle"    # F
    .param p4, "targetCaptureSize"    # Lcom/android/camera/util/Size;
    .param p5, "finalImageSaver"    # Lcom/android/camera/one/v2/imagesaver/ImageSaver;
    .param p6, "burstController"    # Lcom/android/camera/burst/BurstController;
    .param p7, "guard"    # Lcom/android/camera/stats/profiler/Profile;

    .prologue
    .line 398
    new-instance v0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;

    new-instance v2, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$ImageProcessorImpl;

    invoke-direct {v2, p0, p5}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$ImageProcessorImpl;-><init>(Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V

    new-instance v3, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;

    invoke-direct {v3, p5}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;-><init>(Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V

    iget-object v4, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;->mImageEngineFactoryBase:Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;

    move-object v1, p1

    move-object v5, p4

    move v6, p2

    move v7, p3

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;-><init>(Lcom/android/ex/camera2/portability/CaptureIntent;Lcom/android/camera/one/v2/imageprocessor/SingleImageProcessor;Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;Lcom/android/camera/util/Size;FFLcom/android/camera/burst/BurstController;Lcom/android/camera/stats/profiler/Profile;)V

    return-object v0
.end method

.method public buildForPicSelf(Lcom/android/ex/camera2/portability/CaptureIntent;ILcom/android/camera/util/Size;IZIZILcom/android/camera/one/v2/imagesaver/ImageSaver;Lcom/android/camera/stats/profiler/Profile;)Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
    .locals 18
    .param p1, "captureIntent"    # Lcom/android/ex/camera2/portability/CaptureIntent;
    .param p2, "requiredImgNum"    # I
    .param p3, "targetCaptureSize"    # Lcom/android/camera/util/Size;
    .param p4, "screenOrientation"    # I
    .param p5, "isFrontFacing"    # Z
    .param p6, "currentIso"    # I
    .param p7, "beautySetting"    # Z
    .param p8, "beautyLevel"    # I
    .param p9, "finalImageSaver"    # Lcom/android/camera/one/v2/imagesaver/ImageSaver;
    .param p10, "guard"    # Lcom/android/camera/stats/profiler/Profile;

    .prologue
    .line 425
    new-instance v2, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    new-instance v4, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$ImageProcessorImpl;

    move-object/from16 v0, p0

    move-object/from16 v1, p9

    invoke-direct {v4, v0, v1}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$ImageProcessorImpl;-><init>(Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V

    new-instance v5, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;

    move-object/from16 v0, p9

    invoke-direct {v5, v0}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;-><init>(Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;->mImageEngineFactoryBase:Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;->mImageRotationCalculator:Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    invoke-interface {v3}, Lcom/android/camera/one/v2/photo/ImageRotationCalculator;->getSupplier()Lcom/google/common/base/Supplier;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v3, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v16, p10

    invoke-direct/range {v2 .. v17}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;-><init>(Lcom/android/ex/camera2/portability/CaptureIntent;Lcom/android/camera/one/v2/imageprocessor/SingleImageProcessor;Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;ILcom/android/camera/util/Size;ZIZIIILjava/lang/String;Lcom/android/camera/stats/profiler/Profile;Landroid/hardware/camera2/CameraCharacteristics;)V

    return-object v2
.end method

.method public updatePostCaptureCrop(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "crop"    # Landroid/graphics/Rect;

    .prologue
    .line 439
    iput-object p1, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;->mCrop:Landroid/graphics/Rect;

    .line 440
    return-void
.end method
