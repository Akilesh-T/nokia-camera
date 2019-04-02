.class public Lcom/android/ex/camera2/portability/extension/QCCameraExtension;
.super Lcom/android/ex/camera2/portability/extension/CameraExtension;
.source "QCCameraExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;,
        Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;,
        Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;,
        Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;,
        Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;,
        Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;,
        Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# instance fields
.field private mImageProcess:Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "QCCameraExtension"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/Camera;I)V
    .locals 2
    .param p1, "camera"    # Landroid/hardware/Camera;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cameraId"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/ex/camera2/portability/extension/CameraExtension;-><init>(Landroid/hardware/Camera;I)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mImageProcess:Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;

    .line 36
    sget-object v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method static synthetic access$100()Lcom/android/ex/camera2/portability/debug/Log$Tag;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/ex/camera2/portability/extension/QCCameraExtension;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->setLongshot(Z)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/ex/camera2/portability/extension/QCCameraExtension;Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;)Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/QCCameraExtension;
    .param p1, "x1"    # Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mImageProcess:Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;

    return-object p1
.end method

.method private declared-synchronized setLongshot(Z)V
    .locals 8
    .param p1, "enable"    # Z

    .prologue
    .line 927
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 928
    .local v2, "methods":[Ljava/lang/reflect/Method;
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setLongshot"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 929
    .local v1, "md":Ljava/lang/reflect/Method;
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 933
    .end local v1    # "md":Ljava/lang/reflect/Method;
    .end local v2    # "methods":[Ljava/lang/reflect/Method;
    :goto_0
    monitor-exit p0

    return-void

    .line 930
    :catch_0
    move-exception v0

    .line 931
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v3, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invoke setLongshot fail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 927
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public abortCapture(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mImageProcess:Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mImageProcess:Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;->abort()V

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->waitForStates(I)Z

    goto :goto_0
.end method

.method public invalidate(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->abortCapture(Landroid/os/Handler;)V

    .line 53
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->invalidate()V

    .line 54
    return-void
.end method

.method public setCameraMetaData(Lcom/android/ex/camera2/portability/CameraAgent$CameraMetaDataCallback;)V
    .locals 8
    .param p1, "proxy"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraMetaDataCallback;

    .prologue
    .line 1408
    :try_start_0
    const-string v4, "android.hardware.Camera"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1409
    .local v0, "cameraClazz":Ljava/lang/Class;
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/CameraMetadataCallbackCreator;->getMetadataClazz()Ljava/lang/Class;

    move-result-object v2

    .line 1410
    .local v2, "metadataClazz":Ljava/lang/Class;
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/CameraMetadataCallbackCreator;->getSetMetadataCallbackMethodName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1411
    .local v3, "setMetadataCb":Ljava/lang/reflect/Method;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraMetaDataCallback;->getMetadataCallbak()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1412
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1420
    .end local v0    # "cameraClazz":Ljava/lang/Class;
    .end local v2    # "metadataClazz":Ljava/lang/Class;
    .end local v3    # "setMetadataCb":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1414
    .restart local v0    # "cameraClazz":Ljava/lang/Class;
    .restart local v2    # "metadataClazz":Ljava/lang/Class;
    .restart local v3    # "setMetadataCb":Ljava/lang/reflect/Method;
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {p1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraMetaDataCallback;->getMetadataCallbak()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1416
    .end local v0    # "cameraClazz":Ljava/lang/Class;
    .end local v2    # "metadataClazz":Ljava/lang/Class;
    .end local v3    # "setMetadataCb":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 1417
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 1418
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startBurst(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "captureBurstCallback"    # Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, -0x2

    invoke-interface {p2, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;->onBurstFailed(I)V

    .line 70
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->waitForStates(I)Z

    .line 64
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->setState(I)V

    .line 66
    invoke-interface {p2}, Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;->onBurstStarted()V

    .line 68
    new-instance v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BurstImageProcess;-><init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension;Lcom/android/ex/camera2/portability/extension/CameraExtension;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mImageProcess:Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;

    .line 69
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mImageProcess:Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;->run()V

    goto :goto_0
.end method

.method public startPanorama(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;)V
    .locals 7
    .param p1, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "capturePanoramaCallback"    # Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, -0x2

    invoke-interface {p2, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;->onPanoramaFailed(I)V

    .line 108
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->waitForStates(I)Z

    .line 92
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->setState(I)V

    .line 94
    invoke-interface {p2}, Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;->onPanoramaStarted()V

    .line 96
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 98
    .local v3, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPictureFormat()I

    move-result v6

    .line 99
    .local v6, "IMAGE_FORMAT":I
    sget-object v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPanorama- IMAGE_FORMAT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 101
    const/16 v0, 0x11

    if-eq v6, v0, :cond_1

    .line 102
    const/4 v0, -0x1

    invoke-interface {p2, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;->onPanoramaFailed(I)V

    goto :goto_0

    .line 106
    :cond_1
    new-instance v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;

    move-object v1, p0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$PanoramaImageProcess;-><init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension;Lcom/android/ex/camera2/portability/extension/CameraExtension;Landroid/hardware/Camera$Parameters;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;I)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mImageProcess:Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;

    .line 107
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mImageProcess:Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;->run()V

    goto :goto_0
.end method

.method public stopBurst(Landroid/os/Handler;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 75
    sget-object v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopBurst called when mCameraExtensionState is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mImageProcess:Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mImageProcess:Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;->finish()V

    goto :goto_0
.end method

.method public stopPanorama(Landroid/os/Handler;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 113
    sget-object v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPanorama called when mCameraExtensionState is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mImageProcess:Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mImageProcess:Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;->finish()V

    goto :goto_0
.end method

.method public takeBeautyPicture(Landroid/os/Handler;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;)V
    .locals 7
    .param p1, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "captureCallbacks"    # Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v4, 0x2c4

    .line 200
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p2, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mActionNotSupport:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

    invoke-interface {v0, v4}, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;->onActionAbort(I)V

    .line 220
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 207
    .local v3, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPictureFormat()I

    move-result v5

    .line 208
    .local v5, "IMAGE_FORMAT":I
    sget-object v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "takeBeautyPicture- IMAGE_FORMAT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->i(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 210
    const/16 v0, 0x11

    if-eq v5, v0, :cond_1

    .line 211
    iget-object v0, p2, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mActionNotSupport:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

    invoke-interface {v0, v4}, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;->onActionNotSupport(I)V

    goto :goto_0

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->waitForStates(I)Z

    .line 216
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->setState(I)V

    .line 218
    new-instance v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;

    move-object v1, p0

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BeautyImageProcess;-><init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension;Lcom/android/ex/camera2/portability/extension/CameraExtension;Landroid/hardware/Camera$Parameters;Landroid/os/Handler;ILcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mImageProcess:Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;

    .line 219
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mImageProcess:Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;->run()V

    goto :goto_0
.end method

.method public takeBokehPicture(Landroid/os/Handler;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "captureCallbacks"    # Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p2, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mActionNotSupport:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

    const/16 v1, 0x2c5

    invoke-interface {v0, v1}, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;->onActionAbort(I)V

    .line 234
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->waitForStates(I)Z

    .line 230
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->setState(I)V

    .line 232
    new-instance v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$BokehImageProcess;-><init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension;Lcom/android/ex/camera2/portability/extension/CameraExtension;Landroid/os/Handler;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mImageProcess:Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;

    .line 233
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mImageProcess:Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;->run()V

    goto :goto_0
.end method

.method public takeDenoisePicture(Landroid/os/Handler;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;)V
    .locals 7
    .param p1, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "captureCallbacks"    # Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v4, 0x2c2

    .line 154
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p2, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mActionNotSupport:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

    invoke-interface {v0, v4}, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;->onActionAbort(I)V

    .line 174
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 161
    .local v3, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPictureFormat()I

    move-result v5

    .line 162
    .local v5, "IMAGE_FORMAT":I
    sget-object v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "takeDenoisePicture- IMAGE_FORMAT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 164
    const/16 v0, 0x11

    if-eq v5, v0, :cond_1

    .line 165
    iget-object v0, p2, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mActionNotSupport:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

    invoke-interface {v0, v4}, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;->onActionNotSupport(I)V

    goto :goto_0

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->waitForStates(I)Z

    .line 170
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->setState(I)V

    .line 172
    new-instance v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;

    move-object v1, p0

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$DenoiseImageProcess;-><init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension;Lcom/android/ex/camera2/portability/extension/CameraExtension;Landroid/hardware/Camera$Parameters;Landroid/os/Handler;ILcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mImageProcess:Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;

    .line 173
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mImageProcess:Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;->run()V

    goto :goto_0
.end method

.method public takeHDRPicture(Landroid/os/Handler;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;)V
    .locals 8
    .param p1, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "captureCallbacks"    # Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v3, 0x2c1

    .line 125
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p2, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mActionNotSupport:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

    invoke-interface {v0, v3}, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;->onActionAbort(I)V

    .line 149
    :goto_0
    return-void

    .line 130
    :cond_0
    sget-boolean v0, Lcom/android/camera/product_utils/ProductUtil;->USE_VENDOR_HDR:Z

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p2, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mActionNotSupport:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

    invoke-interface {v0, v3}, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;->onActionNotSupport(I)V

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 136
    .local v4, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPictureFormat()I

    move-result v6

    .line 137
    .local v6, "IMAGE_FORMAT":I
    sget-object v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "takeHDRPicture- IMAGE_FORMAT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 139
    const/16 v0, 0x11

    if-eq v6, v0, :cond_2

    .line 140
    iget-object v0, p2, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mActionNotSupport:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

    invoke-interface {v0, v3}, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;->onActionNotSupport(I)V

    goto :goto_0

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->waitForStates(I)Z

    .line 145
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->setState(I)V

    .line 147
    new-instance v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;

    const/4 v5, 0x3

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$HDRImageProcess;-><init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension;Lcom/android/ex/camera2/portability/extension/CameraExtension;Landroid/os/Handler;Landroid/hardware/Camera$Parameters;IILcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mImageProcess:Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;

    .line 148
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mImageProcess:Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;->run()V

    goto :goto_0
.end method

.method public takeLowLightPicture(Landroid/os/Handler;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;)V
    .locals 7
    .param p1, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "captureCallbacks"    # Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v3, 0x2c3

    .line 178
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p2, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mActionNotSupport:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

    invoke-interface {v0, v3}, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;->onActionAbort(I)V

    .line 196
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 183
    .local v4, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPictureFormat()I

    move-result v5

    .line 184
    .local v5, "IMAGE_FORMAT":I
    sget-object v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "takeLowLightPicture- IMAGE_FORMAT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 186
    const/16 v0, 0x11

    if-eq v5, v0, :cond_1

    .line 187
    iget-object v0, p2, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mActionNotSupport:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

    invoke-interface {v0, v3}, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;->onActionNotSupport(I)V

    goto :goto_0

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->waitForStates(I)Z

    .line 192
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->setState(I)V

    .line 194
    new-instance v0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/ex/camera2/portability/extension/QCCameraExtension$LowLightImageProcess;-><init>(Lcom/android/ex/camera2/portability/extension/QCCameraExtension;Lcom/android/ex/camera2/portability/extension/CameraExtension;Landroid/os/Handler;Landroid/hardware/Camera$Parameters;ILcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mImageProcess:Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;

    .line 195
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/QCCameraExtension;->mImageProcess:Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;->run()V

    goto :goto_0
.end method
