.class public Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;
.super Ljava/lang/Object;
.source "Camera2OneCameraOpenerImpl.java"

# interfaces
.implements Lcom/android/camera/one/OneCameraOpener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mActiveCameraDeviceTracker:Lcom/android/camera/device/ActiveCameraDeviceTracker;

.field private final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private final mContext:Landroid/content/Context;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mFeatureConfig:Lcom/android/camera/one/config/OneCameraFeatureConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "OneCamera1Opnr"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/one/config/OneCameraFeatureConfig;Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Lcom/android/camera/device/ActiveCameraDeviceTracker;Landroid/util/DisplayMetrics;)V
    .locals 0
    .param p1, "featureConfig"    # Lcom/android/camera/one/config/OneCameraFeatureConfig;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cameraManager"    # Landroid/hardware/camera2/CameraManager;
    .param p4, "activeCameraDeviceTracker"    # Lcom/android/camera/device/ActiveCameraDeviceTracker;
    .param p5, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;->mFeatureConfig:Lcom/android/camera/one/config/OneCameraFeatureConfig;

    .line 98
    iput-object p2, p0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;->mContext:Landroid/content/Context;

    .line 99
    iput-object p3, p0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 100
    iput-object p4, p0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;->mActiveCameraDeviceTracker:Lcom/android/camera/device/ActiveCameraDeviceTracker;

    .line 101
    iput-object p5, p0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;)Landroid/hardware/camera2/CameraManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;)Lcom/android/camera/one/config/OneCameraFeatureConfig;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;->mFeatureConfig:Lcom/android/camera/one/config/OneCameraFeatureConfig;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;)Landroid/util/DisplayMetrics;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method public static create(Lcom/android/camera/one/config/OneCameraFeatureConfig;Landroid/content/Context;Lcom/android/camera/device/ActiveCameraDeviceTracker;Landroid/util/DisplayMetrics;)Lcom/google/common/base/Optional;
    .locals 7
    .param p0, "featureConfig"    # Lcom/android/camera/one/config/OneCameraFeatureConfig;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activeCameraDeviceTracker"    # Lcom/android/camera/device/ActiveCameraDeviceTracker;
    .param p3, "displayMetrics"    # Landroid/util/DisplayMetrics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/config/OneCameraFeatureConfig;",
            "Landroid/content/Context;",
            "Lcom/android/camera/device/ActiveCameraDeviceTracker;",
            "Landroid/util/DisplayMetrics;",
            ")",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/one/OneCameraOpener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    sget-boolean v1, Lcom/android/camera/util/ApiHelper;->HAS_CAMERA_2_API:Z

    if-nez v1, :cond_0

    .line 69
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v1

    .line 84
    :goto_0
    return-object v1

    .line 73
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/util/AndroidServices;->provideCameraManager()Landroid/hardware/camera2/CameraManager;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 78
    .local v3, "cameraManager":Landroid/hardware/camera2/CameraManager;
    new-instance v0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;-><init>(Lcom/android/camera/one/config/OneCameraFeatureConfig;Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Lcom/android/camera/device/ActiveCameraDeviceTracker;Landroid/util/DisplayMetrics;)V

    .line 84
    .local v0, "oneCameraOpener":Lcom/android/camera/one/OneCameraOpener;
    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    goto :goto_0

    .line 74
    .end local v0    # "oneCameraOpener":Lcom/android/camera/one/OneCameraOpener;
    .end local v3    # "cameraManager":Landroid/hardware/camera2/CameraManager;
    :catch_0
    move-exception v6

    .line 75
    .local v6, "ex":Ljava/lang/IllegalStateException;
    sget-object v1, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "camera2.CameraManager is not available."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public open(Lcom/android/camera/device/CameraId;Landroid/os/Handler;Lcom/android/camera/async/MainThread;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/SoundPlayer;Lcom/android/camera/one/OneCamera$OpenCallback;Lcom/android/camera/FatalErrorHandler;)V
    .locals 9
    .param p1, "cameraKey"    # Lcom/android/camera/device/CameraId;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "mainThread"    # Lcom/android/camera/async/MainThread;
    .param p4, "imageRotationCalculator"    # Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    .param p5, "soundPlayer"    # Lcom/android/camera/SoundPlayer;
    .param p6, "openCallback"    # Lcom/android/camera/one/OneCamera$OpenCallback;
    .param p7, "fatalErrorHandler"    # Lcom/android/camera/FatalErrorHandler;

    .prologue
    .line 114
    :try_start_0
    sget-object v0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening Camera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;->mActiveCameraDeviceTracker:Lcom/android/camera/device/ActiveCameraDeviceTracker;

    invoke-virtual {v0, p1}, Lcom/android/camera/device/ActiveCameraDeviceTracker;->onCameraOpening(Lcom/android/camera/device/CameraId;)V

    .line 118
    iget-object v7, p0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p1}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl$1;

    move-object v1, p0

    move-object v2, p6

    move-object/from16 v3, p7

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl$1;-><init>(Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;Lcom/android/camera/one/OneCamera$OpenCallback;Lcom/android/camera/FatalErrorHandler;Lcom/android/camera/async/MainThread;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;)V

    invoke-virtual {v7, v8, v0, p2}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 215
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v6

    .line 197
    .local v6, "ex":Landroid/hardware/camera2/CameraAccessException;
    sget-object v0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not open camera. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 198
    new-instance v0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl$2;

    invoke-direct {v0, p0, p6}, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl$2;-><init>(Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;Lcom/android/camera/one/OneCamera$OpenCallback;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 204
    .end local v6    # "ex":Landroid/hardware/camera2/CameraAccessException;
    :catch_1
    move-exception v6

    .line 205
    .local v6, "ex":Ljava/lang/UnsupportedOperationException;
    sget-object v0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not open camera. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 206
    new-instance v0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl$3;

    invoke-direct {v0, p0, p6}, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl$3;-><init>(Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;Lcom/android/camera/one/OneCamera$OpenCallback;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 212
    .end local v6    # "ex":Ljava/lang/UnsupportedOperationException;
    :catch_2
    move-exception v6

    .line 213
    .local v6, "ex":Ljava/lang/SecurityException;
    invoke-interface/range {p7 .. p7}, Lcom/android/camera/FatalErrorHandler;->onCameraDisabledFailure()V

    goto :goto_0
.end method

.method public openCameraDevice(Lcom/android/camera/device/CameraId;Landroid/os/Handler;Landroid/hardware/camera2/CameraDevice$StateCallback;Lcom/android/camera/one/OneCameraOpener$OpenCameraExceptionHandler;)V
    .locals 4
    .param p1, "cameraKey"    # Lcom/android/camera/device/CameraId;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "stateCallback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "openCameraExceptionHandler"    # Lcom/android/camera/one/OneCameraOpener$OpenCameraExceptionHandler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 223
    :try_start_0
    sget-object v1, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openCameraDevice : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p1}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p3, p2}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 235
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "ex":Landroid/hardware/camera2/CameraAccessException;
    sget-object v1, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not open camera. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 227
    invoke-interface {p4, v0}, Lcom/android/camera/one/OneCameraOpener$OpenCameraExceptionHandler;->onCameraOpenFailed(Ljava/lang/Exception;)V

    goto :goto_0

    .line 228
    .end local v0    # "ex":Landroid/hardware/camera2/CameraAccessException;
    :catch_1
    move-exception v0

    .line 229
    .local v0, "ex":Ljava/lang/UnsupportedOperationException;
    sget-object v1, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not open camera. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 230
    invoke-interface {p4, v0}, Lcom/android/camera/one/OneCameraOpener$OpenCameraExceptionHandler;->onCameraOpenFailed(Ljava/lang/Exception;)V

    goto :goto_0

    .line 231
    .end local v0    # "ex":Ljava/lang/UnsupportedOperationException;
    :catch_2
    move-exception v0

    .line 232
    .local v0, "ex":Ljava/lang/SecurityException;
    sget-object v1, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not open camera. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 233
    invoke-interface {p4, v0}, Lcom/android/camera/one/OneCameraOpener$OpenCameraExceptionHandler;->onCameraOpenFailed(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setMonoInfo(Z)V
    .locals 8
    .param p1, "isMono"    # Z

    .prologue
    .line 239
    const-string v2, "SetMonoOnly"

    .line 241
    .local v2, "setMonoOnlyMethodName":Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMonoInfo start: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 242
    iget-object v3, p0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "SetMonoOnly"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 243
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    sget-object v3, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "setMonoInfo end"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 248
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/camera/one/v2/Camera2OneCameraOpenerImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception when SetMonoOnly : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method
