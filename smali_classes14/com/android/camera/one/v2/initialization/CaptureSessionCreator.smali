.class Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;
.super Ljava/lang/Object;
.source "CaptureSessionCreator.java"


# static fields
.field public static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mCameraHandler:Landroid/os/Handler;

.field private final mDevice:Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

.field private final mOneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private final mSlaveDevice:Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

.field private final mSlaveOneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "CapSessionCreator"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Landroid/os/Handler;)V
    .locals 0
    .param p1, "device"    # Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;
    .param p2, "slaveDevice"    # Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;
    .param p3, "characteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p4, "slaveCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p5, "cameraHandler"    # Landroid/os/Handler;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;->mDevice:Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

    .line 54
    iput-object p2, p0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;->mSlaveDevice:Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

    .line 55
    iput-object p3, p0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;->mOneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 56
    iput-object p4, p0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;->mSlaveOneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 57
    iput-object p5, p0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;->mCameraHandler:Landroid/os/Handler;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;)Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;->mSlaveDevice:Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;->mCameraHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public createCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Ljava/util/List;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/burst/BurstFacade;)Lcom/google/common/util/concurrent/SettableFuture;
    .locals 8
    .param p1, "inputConfiguration"    # Landroid/hardware/camera2/params/InputConfiguration;
    .param p2, "slaveInputConfiguration"    # Landroid/hardware/camera2/params/InputConfiguration;
    .param p5, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;
    .param p6, "burstFacade"    # Lcom/android/camera/burst/BurstFacade;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Lcom/android/camera/one/OneCameraCaptureSetting;",
            "Lcom/android/camera/burst/BurstFacade;",
            ")",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Landroid/support/v4/util/Pair",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;",
            "Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 68
    .local p3, "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    .local p4, "slaveSurfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v2

    .line 70
    .local v2, "sessionFuture":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Landroid/support/v4/util/Pair<Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;>;>;"
    new-instance v0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator$1;-><init>(Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;Lcom/google/common/util/concurrent/SettableFuture;Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/burst/BurstFacade;)V

    .line 242
    .local v0, "stateCallback":Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$StateCallback;
    sget-object v3, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createCaptureSession - surfaces num : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 244
    if-eqz p1, :cond_1

    .line 245
    :try_start_0
    sget-object v1, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "createReprocessableCaptureSession"

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;->mDevice:Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

    iget-object v3, p0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;->mCameraHandler:Landroid/os/Handler;

    invoke-interface {v1, p1, p3, v0, v3}, Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;->createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$StateCallback;Landroid/os/Handler;)V

    .line 257
    :goto_1
    return-object v2

    .line 242
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 247
    :cond_1
    invoke-virtual {p5}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureMode()Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isConstrainedHighSpeedSessionNeed(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 248
    iget-object v1, p0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;->mDevice:Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

    iget-object v3, p0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;->mCameraHandler:Landroid/os/Handler;

    invoke-interface {v1, p3, v0, v3}, Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;->createConstrainedHighSpeedCaptureSession(Ljava/util/List;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 253
    :catch_0
    move-exception v7

    .line 254
    .local v7, "e":Landroid/hardware/camera2/CameraAccessException;
    sget-object v1, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createCaptureSession fail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 255
    invoke-virtual {v2, v7}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_1

    .line 250
    .end local v7    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_2
    :try_start_1
    sget-object v1, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "createCaptureSession"

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;->mDevice:Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;

    iget-object v3, p0, Lcom/android/camera/one/v2/initialization/CaptureSessionCreator;->mCameraHandler:Landroid/os/Handler;

    invoke-interface {v1, p3, v0, v3}, Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;->createCaptureSession(Ljava/util/List;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$StateCallback;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
