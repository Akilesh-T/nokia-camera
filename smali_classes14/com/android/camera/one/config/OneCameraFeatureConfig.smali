.class public Lcom/android/camera/one/config/OneCameraFeatureConfig;
.super Ljava/lang/Object;
.source "OneCameraFeatureConfig.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;,
        Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;
    }
.end annotation


# instance fields
.field private final mCaptureModeDetector:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            "Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;",
            ">;"
        }
    .end annotation
.end field

.field private final mHdrPlusSupportLevel:Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;

.field private final mMaxAllowedImageReaderCount:I

.field private final mMaxMemoryMB:I

.field private final mUseCaptureModule:Z


# direct methods
.method constructor <init>(ZLcom/google/common/base/Function;Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;II)V
    .locals 0
    .param p1, "useCaptureModule"    # Z
    .param p3, "hdrPlusSupportLevel"    # Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;
    .param p4, "maxMemoryMB"    # I
    .param p5, "maxAllowedImageReaderCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/google/common/base/Function",
            "<",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            "Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;",
            ">;",
            "Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p2, "captureModeDetector":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-boolean p1, p0, Lcom/android/camera/one/config/OneCameraFeatureConfig;->mUseCaptureModule:Z

    .line 107
    iput-object p2, p0, Lcom/android/camera/one/config/OneCameraFeatureConfig;->mCaptureModeDetector:Lcom/google/common/base/Function;

    .line 108
    iput-object p3, p0, Lcom/android/camera/one/config/OneCameraFeatureConfig;->mHdrPlusSupportLevel:Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;

    .line 109
    iput p4, p0, Lcom/android/camera/one/config/OneCameraFeatureConfig;->mMaxMemoryMB:I

    .line 110
    iput p5, p0, Lcom/android/camera/one/config/OneCameraFeatureConfig;->mMaxAllowedImageReaderCount:I

    .line 111
    return-void
.end method


# virtual methods
.method public getCaptureSupportLevel(Landroid/hardware/camera2/CameraCharacteristics;)Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;
    .locals 1
    .param p1, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/camera/one/config/OneCameraFeatureConfig;->mCaptureModeDetector:Lcom/google/common/base/Function;

    invoke-interface {v0, p1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/config/OneCameraFeatureConfig$CaptureSupportLevel;

    return-object v0
.end method

.method public getHdrPlusSupportLevel(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;
    .locals 1
    .param p1, "cameraFacing"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    .line 133
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p1, v0, :cond_0

    .line 134
    sget-object v0, Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;->NONE:Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;

    .line 136
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/config/OneCameraFeatureConfig;->mHdrPlusSupportLevel:Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;

    goto :goto_0
.end method

.method public getMaxAllowedImageReaderCount()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/android/camera/one/config/OneCameraFeatureConfig;->mMaxAllowedImageReaderCount:I

    return v0
.end method

.method public getMaxMemoryMB()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/android/camera/one/config/OneCameraFeatureConfig;->mMaxMemoryMB:I

    return v0
.end method

.method public isUsingCaptureModule()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/camera/one/config/OneCameraFeatureConfig;->mUseCaptureModule:Z

    return v0
.end method
