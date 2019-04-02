.class public Lcom/android/camera/one/v2/imageprocessor/JpegImageBackendImageProcessor;
.super Ljava/lang/Object;
.source "JpegImageBackendImageProcessor.java"

# interfaces
.implements Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/imageprocessor/JpegImageBackendImageProcessor$YuvImageProcessListener;,
        Lcom/android/camera/one/v2/imageprocessor/JpegImageBackendImageProcessor$ImageProcessorImpl;
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
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/camera/one/v2/imageprocessor/JpegImageBackendImageProcessor;->mImageRotationCalculator:Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    .line 78
    iput-object p2, p0, Lcom/android/camera/one/v2/imageprocessor/JpegImageBackendImageProcessor;->mImageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

    .line 79
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/JpegImageBackendImageProcessor;->mExecutor:Ljava/util/concurrent/Executor;

    .line 80
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch;->getImageEngineFactory(Z)Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/JpegImageBackendImageProcessor;->mImageEngineFactoryBase:Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;

    .line 81
    return-void
.end method


# virtual methods
.method public build(Lcom/android/ex/camera2/portability/CaptureIntent;ILcom/android/camera/util/Size;ZIILcom/android/camera/one/v2/imagesaver/ImageSaver;Lcom/android/camera/stats/profiler/Profile;)Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
    .locals 1
    .param p1, "captureIntent"    # Lcom/android/ex/camera2/portability/CaptureIntent;
    .param p2, "requiredImgNum"    # I
    .param p3, "targetCaptureSize"    # Lcom/android/camera/util/Size;
    .param p4, "isFrontFacing"    # Z
    .param p5, "currentIso"    # I
    .param p6, "beautyLevel"    # I
    .param p7, "finalImageSaver"    # Lcom/android/camera/one/v2/imagesaver/ImageSaver;
    .param p8, "guard"    # Lcom/android/camera/stats/profiler/Profile;

    .prologue
    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public build(Lcom/android/ex/camera2/portability/CaptureIntent;ILcom/android/camera/util/Size;ZIILcom/android/camera/one/v2/imagesaver/ImageSaver;Lcom/android/camera/stats/profiler/Profile;Landroid/hardware/camera2/CameraCharacteristics;)Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
    .locals 1
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
    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method public build(Lcom/android/ex/camera2/portability/CaptureIntent;ILcom/android/camera/util/Size;ZIILcom/android/camera/one/v2/imagesaver/ImageSaver;Lcom/android/camera/stats/profiler/Profile;Landroid/hardware/camera2/CameraCharacteristics;Z)Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
    .locals 1
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
    .line 167
    const/4 v0, 0x0

    return-object v0
.end method

.method public buildForDualCam(Lcom/android/ex/camera2/portability/CaptureIntent;[BIFFILandroid/graphics/Point;IIILcom/android/camera/util/Size;Lcom/android/camera/one/v2/imagesaver/ImageSaver;Lcom/android/camera/stats/profiler/Profile;)Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
    .locals 1
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
    .line 143
    const/4 v0, 0x0

    return-object v0
.end method

.method public buildForDualSight(Lcom/android/ex/camera2/portability/CaptureIntent;ILcom/android/camera/util/Size;Lcom/android/camera/util/Size;ILcom/android/camera/opengl/image/ImageGenerator;Lcom/android/camera/one/v2/imagesaver/ImageSaver;ZILcom/android/camera/stats/profiler/Profile;)Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
    .locals 1
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
    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method public buildForLogicCam(Lcom/android/ex/camera2/portability/CaptureIntent;ILcom/android/camera/util/Size;IILandroid/graphics/Point;Lcom/android/camera/one/v2/imagesaver/ImageSaver;Lcom/android/camera/stats/profiler/Profile;)Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
    .locals 1
    .param p1, "captureIntent"    # Lcom/android/ex/camera2/portability/CaptureIntent;
    .param p2, "requiredImgNum"    # I
    .param p3, "targetCaptureSize"    # Lcom/android/camera/util/Size;
    .param p4, "horizontalViewAngle"    # I
    .param p5, "blurIntensity"    # I
    .param p6, "focusPosiiton"    # Landroid/graphics/Point;
    .param p7, "finalImageSaver"    # Lcom/android/camera/one/v2/imagesaver/ImageSaver;
    .param p8, "guard"    # Lcom/android/camera/stats/profiler/Profile;

    .prologue
    .line 153
    const/4 v0, 0x0

    return-object v0
.end method

.method public buildForMegvii(Lcom/android/ex/camera2/portability/CaptureIntent;ILcom/android/camera/util/Size;IILjava/lang/String;ZILcom/android/camera/one/v2/imagesaver/ImageSaver;Lcom/android/camera/stats/profiler/Profile;Z)Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
    .locals 1
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
    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public buildForPanorama(Lcom/android/ex/camera2/portability/CaptureIntent;FFLcom/android/camera/util/Size;Lcom/android/camera/one/v2/imagesaver/ImageSaver;Lcom/android/camera/burst/BurstController;Lcom/android/camera/stats/profiler/Profile;)Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
    .locals 1
    .param p1, "captureIntent"    # Lcom/android/ex/camera2/portability/CaptureIntent;
    .param p2, "horizontalViewAngle"    # F
    .param p3, "verticalViewAngle"    # F
    .param p4, "targetCaptureSize"    # Lcom/android/camera/util/Size;
    .param p5, "finalImageSaver"    # Lcom/android/camera/one/v2/imagesaver/ImageSaver;
    .param p6, "burstController"    # Lcom/android/camera/burst/BurstController;
    .param p7, "guard"    # Lcom/android/camera/stats/profiler/Profile;

    .prologue
    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method public buildForPicSelf(Lcom/android/ex/camera2/portability/CaptureIntent;ILcom/android/camera/util/Size;IZIZILcom/android/camera/one/v2/imagesaver/ImageSaver;Lcom/android/camera/stats/profiler/Profile;)Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
    .locals 1
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
    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method public updatePostCaptureCrop(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "crop"    # Landroid/graphics/Rect;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/camera/one/v2/imageprocessor/JpegImageBackendImageProcessor;->mCrop:Landroid/graphics/Rect;

    .line 177
    return-void
.end method
