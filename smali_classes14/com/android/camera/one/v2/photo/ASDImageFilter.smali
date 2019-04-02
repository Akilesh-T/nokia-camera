.class public final Lcom/android/camera/one/v2/photo/ASDImageFilter;
.super Ljava/lang/Object;
.source "ASDImageFilter.java"

# interfaces
.implements Lcom/android/camera/one/v2/photo/SceneDetector;
.implements Lcom/android/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/one/v2/photo/SceneDetector;",
        "Lcom/android/camera/async/Updatable",
        "<",
        "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

.field private final mDetectIsoValue:Lcom/android/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDetectSceneMode:Lcom/android/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;",
            ">;"
        }
    .end annotation
.end field

.field private final mDetectSensorExposureTimeValue:Lcom/android/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mFlashDetector:Lcom/android/camera/one/v2/photo/FlashDetector;

.field private final mHDRMode:Lcom/android/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Lcom/android/camera/one/v2/photo/SceneDetector$HDR;",
            ">;"
        }
    .end annotation
.end field

.field private mLastFrameNumber:J

.field private final mLog:Lcom/android/camera/debug/Logger;

.field private mMetaData:Landroid/hardware/camera2/CameraCharacteristics;

.field private final mOneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private final mSRMode:Lcom/android/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Lcom/android/camera/one/v2/photo/SceneDetector$SR;",
            ">;"
        }
    .end annotation
.end field

.field private final mSceneDetectorExtension:Lcom/android/camera/one/v2/photo/extension/SceneDetectorExtension;

.field private mSceneModeChangeListener:Lcom/android/camera/one/OneCamera$SceneModeChangeListener;


# direct methods
.method private constructor <init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/one/v2/photo/FlashDetector;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V
    .locals 6
    .param p1, "logFactory"    # Lcom/android/camera/debug/Logger$Factory;
    .param p2, "flashDetector"    # Lcom/android/camera/one/v2/photo/FlashDetector;
    .param p3, "characteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p4, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .prologue
    const-wide/16 v4, -0x1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mMetaData:Landroid/hardware/camera2/CameraCharacteristics;

    .line 87
    invoke-interface {p3}, Lcom/android/camera/one/OneCameraCharacteristics;->isMonoCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "_MONO"

    .line 88
    .local v0, "POSTFIX":Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ASDImgFltr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/android/camera/debug/Logger$Factory;->create(Lcom/android/camera/debug/Log$Tag;)Lcom/android/camera/debug/Logger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mLog:Lcom/android/camera/debug/Logger;

    .line 89
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mFlashDetector:Lcom/android/camera/one/v2/photo/FlashDetector;

    .line 90
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mOneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 91
    iput-object p4, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .line 92
    new-instance v1, Lcom/android/camera/async/ConcurrentState;

    sget-object v2, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->AUTO:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    invoke-direct {v1, v2}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mDetectSceneMode:Lcom/android/camera/async/ConcurrentState;

    .line 93
    new-instance v1, Lcom/android/camera/async/ConcurrentState;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mDetectIsoValue:Lcom/android/camera/async/ConcurrentState;

    .line 94
    new-instance v1, Lcom/android/camera/async/ConcurrentState;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mDetectSensorExposureTimeValue:Lcom/android/camera/async/ConcurrentState;

    .line 95
    new-instance v1, Lcom/android/camera/async/ConcurrentState;

    sget-object v2, Lcom/android/camera/one/v2/photo/SceneDetector$HDR;->OFF:Lcom/android/camera/one/v2/photo/SceneDetector$HDR;

    invoke-direct {v1, v2}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mHDRMode:Lcom/android/camera/async/ConcurrentState;

    .line 96
    new-instance v1, Lcom/android/camera/async/ConcurrentState;

    sget-object v2, Lcom/android/camera/one/v2/photo/SceneDetector$SR;->OFF:Lcom/android/camera/one/v2/photo/SceneDetector$SR;

    invoke-direct {v1, v2}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mSRMode:Lcom/android/camera/async/ConcurrentState;

    .line 97
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mOneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v1}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v1

    invoke-interface {p3}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/camera/one/v2/photo/extension/SceneDetectorExtensionCreator;->create(Lcom/android/camera/one/OneCamera$Facing;Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;)Lcom/android/camera/one/v2/photo/extension/SceneDetectorExtension;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mSceneDetectorExtension:Lcom/android/camera/one/v2/photo/extension/SceneDetectorExtension;

    .line 98
    iput-wide v4, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mLastFrameNumber:J

    .line 101
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mOneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v1}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/one/v2/photo/ASDImageFilter;->setMetaData(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 103
    return-void

    .line 87
    .end local v0    # "POSTFIX":Ljava/lang/String;
    :cond_0
    const-string v0, "_BAYER"

    goto :goto_0
.end method

.method public static create(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/one/v2/photo/FlashDetector;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Lcom/android/camera/one/v2/photo/ASDImageFilter;
    .locals 1
    .param p0, "logFactory"    # Lcom/android/camera/debug/Logger$Factory;
    .param p1, "flashDetector"    # Lcom/android/camera/one/v2/photo/FlashDetector;
    .param p2, "characteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p3, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .prologue
    .line 81
    new-instance v0, Lcom/android/camera/one/v2/photo/ASDImageFilter;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/camera/one/v2/photo/ASDImageFilter;-><init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/one/v2/photo/FlashDetector;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V

    return-object v0
.end method

.method public static getSensorSensitivity(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)Ljava/lang/Integer;
    .locals 4
    .param p0, "totalCaptureResult"    # Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 218
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v2}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 219
    .local v1, "sensitivity":Ljava/lang/Integer;
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v2}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 220
    .local v0, "postRawSensitivity":Ljava/lang/Integer;
    if-eqz v1, :cond_1

    .line 221
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 227
    .end local v1    # "sensitivity":Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-object v1

    .restart local v1    # "sensitivity":Ljava/lang/Integer;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setMetaData(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 0
    .param p1, "meta"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mMetaData:Landroid/hardware/camera2/CameraCharacteristics;

    .line 242
    return-void
.end method

.method private updateCCTValue(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)V
    .locals 3
    .param p1, "totalCaptureResult"    # Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 209
    sget-object v1, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureResult;->FIH_3A_CCT_VALUE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v1}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 210
    .local v0, "mCCt":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 211
    sget-object v1, Lcom/android/camera/util/MorphoUtil;->mCCT:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v1, v0}, Lcom/android/camera/async/LockableConcurrentState;->update(Ljava/lang/Object;)V

    .line 215
    :goto_0
    return-void

    .line 213
    :cond_0
    sget-object v1, Lcom/android/camera/util/MorphoUtil;->mCCT:Lcom/android/camera/async/LockableConcurrentState;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/async/LockableConcurrentState;->update(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateIsoValue(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)V
    .locals 3
    .param p1, "totalCaptureResult"    # Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 204
    invoke-static {p1}, Lcom/android/camera/one/v2/photo/ASDImageFilter;->getSensorSensitivity(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)Ljava/lang/Integer;

    move-result-object v0

    .line 205
    .local v0, "isoState":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mDetectIsoValue:Lcom/android/camera/async/ConcurrentState;

    if-eqz v0, :cond_0

    .end local v0    # "isoState":Ljava/lang/Integer;
    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 206
    return-void

    .line 205
    .restart local v0    # "isoState":Ljava/lang/Integer;
    :cond_0
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mDetectIsoValue:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v1}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object v0, v1

    goto :goto_0
.end method

.method private updateSensorExposureTimeValue(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)V
    .locals 3
    .param p1, "totalCaptureResult"    # Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 199
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v1}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 200
    .local v0, "sensorExposureTimeState":Ljava/lang/Long;
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mDetectSensorExposureTimeValue:Lcom/android/camera/async/ConcurrentState;

    if-eqz v0, :cond_0

    .end local v0    # "sensorExposureTimeState":Ljava/lang/Long;
    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 201
    return-void

    .line 200
    .restart local v0    # "sensorExposureTimeState":Ljava/lang/Long;
    :cond_0
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mDetectSensorExposureTimeValue:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v1}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public get()Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mDetectSceneMode:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    return-object v0
.end method

.method public getCurrentIsoValue()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mDetectIsoValue:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCurrentSensorExposureTime()J
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mDetectSensorExposureTimeValue:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMetaData()Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mMetaData:Landroid/hardware/camera2/CameraCharacteristics;

    return-object v0
.end method

.method public onHDRModeChange(Lcom/android/camera/one/v2/photo/SceneDetector$HDR;)V
    .locals 3
    .param p1, "hdrMode"    # Lcom/android/camera/one/v2/photo/SceneDetector$HDR;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mHDRMode:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mHDRMode:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v0, p1}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mLog:Lcom/android/camera/debug/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HDR Change : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mHDRMode:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v2}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/one/v2/photo/ASDImageFilter;->update(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)V

    .line 117
    :cond_0
    return-void
.end method

.method public onSRModeChange(Lcom/android/camera/one/v2/photo/SceneDetector$SR;)V
    .locals 3
    .param p1, "srMode"    # Lcom/android/camera/one/v2/photo/SceneDetector$SR;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mSRMode:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mSRMode:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v0, p1}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mLog:Lcom/android/camera/debug/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SR Change : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mSRMode:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v2}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/one/v2/photo/ASDImageFilter;->update(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)V

    .line 126
    :cond_0
    return-void
.end method

.method public setSceneModeChangeListener(Lcom/android/camera/one/OneCamera$SceneModeChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/camera/one/OneCamera$SceneModeChangeListener;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mSceneModeChangeListener:Lcom/android/camera/one/OneCamera$SceneModeChangeListener;

    .line 235
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mSceneModeChangeListener:Lcom/android/camera/one/OneCamera$SceneModeChangeListener;

    if-eqz v0, :cond_0

    .line 236
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mSceneModeChangeListener:Lcom/android/camera/one/OneCamera$SceneModeChangeListener;

    iget-object v0, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mDetectSceneMode:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    invoke-interface {v1, v0}, Lcom/android/camera/one/OneCamera$SceneModeChangeListener;->onSceneModeChange(Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;)V

    .line 238
    :cond_0
    return-void
.end method

.method public update(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)V
    .locals 6
    .param p1, "totalCaptureResult"    # Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 141
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    sget-object v2, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eq v1, v2, :cond_1

    .line 142
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mDetectSceneMode:Lcom/android/camera/async/ConcurrentState;

    sget-object v2, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->AUTO:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    invoke-virtual {v1, v2}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 143
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->getFrameNumber()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mLastFrameNumber:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 144
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/photo/ASDImageFilter;->updateIsoValue(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)V

    .line 145
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/photo/ASDImageFilter;->updateSensorExposureTimeValue(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)V

    .line 146
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->getFrameNumber()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mLastFrameNumber:J

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mDetectSceneMode:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v1}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    .line 152
    .local v0, "previousScene":Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mSRMode:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v1}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/camera/one/v2/photo/SceneDetector$SR;->ON:Lcom/android/camera/one/v2/photo/SceneDetector$SR;

    if-ne v1, v2, :cond_3

    .line 153
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mDetectSceneMode:Lcom/android/camera/async/ConcurrentState;

    sget-object v2, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->SR:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    invoke-virtual {v1, v2}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 154
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->getFrameNumber()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mLastFrameNumber:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 155
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/photo/ASDImageFilter;->updateIsoValue(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)V

    .line 156
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/photo/ASDImageFilter;->updateSensorExposureTimeValue(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)V

    .line 157
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->getFrameNumber()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mLastFrameNumber:J

    .line 190
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mDetectSceneMode:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v1}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mLog:Lcom/android/camera/debug/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scene Change : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mDetectSceneMode:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v3}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mSceneModeChangeListener:Lcom/android/camera/one/OneCamera$SceneModeChangeListener;

    if-eqz v1, :cond_0

    .line 193
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mSceneModeChangeListener:Lcom/android/camera/one/OneCamera$SceneModeChangeListener;

    iget-object v1, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mDetectSceneMode:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v1}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    invoke-interface {v2, v1}, Lcom/android/camera/one/OneCamera$SceneModeChangeListener;->onSceneModeChange(Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;)V

    goto :goto_0

    .line 159
    :cond_3
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mHDRMode:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v1}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/camera/one/v2/photo/SceneDetector$HDR;->ON:Lcom/android/camera/one/v2/photo/SceneDetector$HDR;

    if-ne v1, v2, :cond_4

    .line 160
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mDetectSceneMode:Lcom/android/camera/async/ConcurrentState;

    sget-object v2, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->HDR:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    invoke-virtual {v1, v2}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 161
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->getFrameNumber()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mLastFrameNumber:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 162
    sget-object v1, Lcom/android/camera/one/v2/photo/extension/fih/FIHCaptureResult;->FIH_DR_CHECKER_EV:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v1}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-static {v1}, Lcom/android/camera/util/MorphoUtil;->isNeedHDR([I)Z

    .line 163
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/photo/ASDImageFilter;->updateIsoValue(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)V

    .line 164
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/photo/ASDImageFilter;->updateSensorExposureTimeValue(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)V

    .line 165
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->getFrameNumber()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mLastFrameNumber:J

    goto :goto_1

    .line 167
    :cond_4
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mFlashDetector:Lcom/android/camera/one/v2/photo/FlashDetector;

    invoke-interface {v1}, Lcom/android/camera/one/v2/photo/FlashDetector;->isFlashRequired()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 168
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mOneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v1}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v1

    sget-object v2, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v1, v2, :cond_5

    .line 169
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mSceneDetectorExtension:Lcom/android/camera/one/v2/photo/extension/SceneDetectorExtension;

    iget-object v1, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mHDRMode:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v1}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/photo/SceneDetector$HDR;

    iget-object v3, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mFlashDetector:Lcom/android/camera/one/v2/photo/FlashDetector;

    invoke-interface {v3}, Lcom/android/camera/one/v2/photo/FlashDetector;->isFlashRequired()Z

    move-result v3

    invoke-virtual {v2, p1, v1, v3}, Lcom/android/camera/one/v2/photo/extension/SceneDetectorExtension;->update(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;Lcom/android/camera/one/v2/photo/SceneDetector$HDR;Z)V

    .line 170
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mDetectSceneMode:Lcom/android/camera/async/ConcurrentState;

    iget-object v2, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mSceneDetectorExtension:Lcom/android/camera/one/v2/photo/extension/SceneDetectorExtension;

    invoke-virtual {v2}, Lcom/android/camera/one/v2/photo/extension/SceneDetectorExtension;->getCurrentScene()Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 171
    if-eqz p1, :cond_2

    .line 172
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/photo/ASDImageFilter;->updateIsoValue(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)V

    .line 173
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/photo/ASDImageFilter;->updateSensorExposureTimeValue(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)V

    goto/16 :goto_1

    .line 176
    :cond_5
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mDetectSceneMode:Lcom/android/camera/async/ConcurrentState;

    sget-object v2, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->AUTO:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    invoke-virtual {v1, v2}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 177
    if-eqz p1, :cond_2

    .line 178
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mDetectIsoValue:Lcom/android/camera/async/ConcurrentState;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 179
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mDetectSensorExposureTimeValue:Lcom/android/camera/async/ConcurrentState;

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 182
    :cond_6
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->getFrameNumber()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mLastFrameNumber:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 183
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mSceneDetectorExtension:Lcom/android/camera/one/v2/photo/extension/SceneDetectorExtension;

    iget-object v1, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mHDRMode:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v1}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/photo/SceneDetector$HDR;

    iget-object v3, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mFlashDetector:Lcom/android/camera/one/v2/photo/FlashDetector;

    invoke-interface {v3}, Lcom/android/camera/one/v2/photo/FlashDetector;->isFlashRequired()Z

    move-result v3

    invoke-virtual {v2, p1, v1, v3}, Lcom/android/camera/one/v2/photo/extension/SceneDetectorExtension;->update(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;Lcom/android/camera/one/v2/photo/SceneDetector$HDR;Z)V

    .line 184
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mDetectSceneMode:Lcom/android/camera/async/ConcurrentState;

    iget-object v2, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mSceneDetectorExtension:Lcom/android/camera/one/v2/photo/extension/SceneDetectorExtension;

    invoke-virtual {v2}, Lcom/android/camera/one/v2/photo/extension/SceneDetectorExtension;->getCurrentScene()Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 185
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/photo/ASDImageFilter;->updateIsoValue(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)V

    .line 186
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/photo/ASDImageFilter;->updateSensorExposureTimeValue(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)V

    .line 187
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->getFrameNumber()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/one/v2/photo/ASDImageFilter;->mLastFrameNumber:J

    goto/16 :goto_1
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 63
    check-cast p1, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;

    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/photo/ASDImageFilter;->update(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)V

    return-void
.end method
