.class public Lcom/android/camera/one/v2/OneCameraCreator$ImageProcessorStub;
.super Ljava/lang/Object;
.source "OneCameraCreator.java"

# interfaces
.implements Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/OneCameraCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageProcessorStub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 58
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
    .line 95
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
    .line 91
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
    .line 68
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
    .line 73
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
    .line 78
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
    .line 82
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
    .line 63
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
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public updatePostCaptureCrop(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "crop"    # Landroid/graphics/Rect;

    .prologue
    .line 101
    return-void
.end method
