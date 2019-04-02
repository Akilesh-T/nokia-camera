.class public Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;
.super Lcom/android/ex/camera2/portability/extension/CameraExtension;
.source "MTKCameraExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess;,
        Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;,
        Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstImageProcess;,
        Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;,
        Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$ContinuousShotCallback;
    }
.end annotation


# static fields
.field public static final NUM_AUTORAMA_CAPTURE:I = 0x9

.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# instance fields
.field private mCaptureBurstCallback:Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;

.field private mCaptureBurstRunnable:Ljava/lang/Runnable;

.field private mImageProcess:Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "MtkCamExt"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

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
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/ex/camera2/portability/extension/CameraExtension;-><init>(Landroid/hardware/Camera;I)V

    .line 24
    iput-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->mCaptureBurstCallback:Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;

    .line 25
    iput-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->mCaptureBurstRunnable:Ljava/lang/Runnable;

    .line 27
    iput-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->mImageProcess:Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;

    .line 37
    sget-object v0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method static synthetic access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;)Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;
    .param p1, "x1"    # Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->mImageProcess:Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/InvocationHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/reflect/InvocationHandler;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->takeInvokeHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/InvocationHandler;)V

    return-void
.end method

.method private takeInvokeHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/InvocationHandler;)V
    .locals 10
    .param p1, "interfacespec"    # Ljava/lang/String;
    .param p2, "methodSpec"    # Ljava/lang/String;
    .param p3, "inhandler"    # Ljava/lang/reflect/InvocationHandler;

    .prologue
    .line 537
    :try_start_0
    const-class v6, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 539
    .local v3, "loader":Ljava/lang/ClassLoader;
    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 541
    .local v0, "callback":Ljava/lang/Class;
    const-string v6, "android.hardware.Camera"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 543
    .local v1, "cameraClazz":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v3, v6, p3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v4

    .line 545
    .local v4, "object":Ljava/lang/Object;
    if-nez v4, :cond_0

    .line 554
    .end local v0    # "callback":Ljava/lang/Class;
    .end local v1    # "cameraClazz":Ljava/lang/Class;
    .end local v3    # "loader":Ljava/lang/ClassLoader;
    .end local v4    # "object":Ljava/lang/Object;
    :goto_0
    return-void

    .line 548
    .restart local v0    # "callback":Ljava/lang/Class;
    .restart local v1    # "cameraClazz":Ljava/lang/Class;
    .restart local v3    # "loader":Ljava/lang/ClassLoader;
    .restart local v4    # "object":Ljava/lang/Object;
    :cond_0
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v1, p2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 549
    .local v5, "openMethod":Ljava/lang/reflect/Method;
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 551
    .end local v0    # "callback":Ljava/lang/Class;
    .end local v1    # "cameraClazz":Ljava/lang/Class;
    .end local v3    # "loader":Ljava/lang/ClassLoader;
    .end local v4    # "object":Ljava/lang/Object;
    .end local v5    # "openMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 552
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public abortCapture(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->mImageProcess:Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->mImageProcess:Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;->abort()V

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

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
    .line 53
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->invalidate()V

    .line 54
    return-void
.end method

.method public setCameraMetaData(Lcom/android/ex/camera2/portability/CameraAgent$CameraMetaDataCallback;)V
    .locals 0
    .param p1, "proxy"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraMetaDataCallback;

    .prologue
    .line 532
    return-void
.end method

.method public startBurst(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "captureBurstCallback"    # Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 177
    sget-object v1, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v2, "startBurst++"

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    const/4 v1, -0x2

    invoke-interface {p2, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;->onBurstFailed(I)V

    .line 198
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->waitForStates(I)Z

    .line 184
    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->setState(I)V

    .line 186
    iput-object p2, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->mCaptureBurstCallback:Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;

    .line 189
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->enableShutterSound(Z)Z

    .line 191
    new-instance v0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;

    const/16 v1, 0x28

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;-><init>(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;I)V

    .line 194
    .local v0, "burstCallbackForward":Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;
    invoke-interface {p2}, Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;->onBurstStarted()V

    .line 196
    new-instance v1, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstImageProcess;

    invoke-direct {v1, p0, p0, p1, v0}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstImageProcess;-><init>(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;Lcom/android/ex/camera2/portability/extension/CameraExtension;Landroid/os/Handler;Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$BurstCallbackForward;)V

    iput-object v1, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->mImageProcess:Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;

    .line 197
    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->mImageProcess:Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;->run()V

    goto :goto_0
.end method

.method public startPanorama(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "capturePanoramaCallback"    # Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 403
    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    const/4 v1, -0x2

    invoke-interface {p2, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;->onPanoramaFailed(I)V

    .line 419
    :goto_0
    return-void

    .line 408
    :cond_0
    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->waitForStates(I)Z

    .line 409
    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->setState(I)V

    .line 411
    invoke-interface {p2}, Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;->onPanoramaStarted()V

    .line 413
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 415
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopFaceDetection()V

    .line 417
    new-instance v1, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;

    invoke-direct {v1, p0, p0, p1, p2}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$PanoramaImageProcess;-><init>(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;Lcom/android/ex/camera2/portability/extension/CameraExtension;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;)V

    iput-object v1, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->mImageProcess:Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;

    .line 418
    iget-object v1, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->mImageProcess:Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;->run()V

    goto :goto_0
.end method

.method public stopBurst(Landroid/os/Handler;)V
    .locals 7
    .param p1, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 203
    iget-object v2, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 204
    sget-object v2, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopBurst called when mCameraExtensionState is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 212
    :try_start_0
    const-string v2, "android.hardware.Camera"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "cancelContinuousShot"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 217
    .local v1, "openMethod":Ljava/lang/reflect/Method;
    sget-object v2, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v3, "burst: cancel ContinuousShot in app level"

    invoke-static {v2, v3}, Lcom/android/ex/camera2/portability/debug/Log;->d(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 231
    .end local v1    # "openMethod":Ljava/lang/reflect/Method;
    :goto_1
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->getCamera()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/hardware/Camera;->enableShutterSound(Z)Z

    .line 233
    iget-object v2, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v2, v5}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->setState(I)V

    .line 235
    iget-object v2, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->mCaptureBurstRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_3

    .line 236
    if-eqz p1, :cond_2

    .line 237
    iget-object v2, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->mCaptureBurstRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 239
    :cond_2
    iput-object v6, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->mCaptureBurstRunnable:Ljava/lang/Runnable;

    .line 242
    :cond_3
    iget-object v2, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->mCaptureBurstCallback:Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;

    if-eqz v2, :cond_0

    .line 243
    iget-object v2, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->mCaptureBurstCallback:Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;

    invoke-interface {v2}, Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;->onBurstCompleted()V

    .line 244
    iput-object v6, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->mCaptureBurstCallback:Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 222
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 224
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 226
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method public stopPanorama(Landroid/os/Handler;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 424
    sget-object v0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPanorama called when mCameraExtensionState is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->mImageProcess:Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->mImageProcess:Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;->finish()V

    goto :goto_0
.end method

.method public takeBeautyPicture(Landroid/os/Handler;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;)V
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
    .line 512
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p2, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mActionNotSupport:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

    const/16 v1, 0x2c4

    invoke-interface {v0, v1}, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;->onActionNotSupport(I)V

    .line 522
    :goto_0
    return-void

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->waitForStates(I)Z

    .line 518
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;->setState(I)V

    .line 520
    new-instance v0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension$FaceBeautyImageProcess;-><init>(Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;Lcom/android/ex/camera2/portability/extension/CameraExtension;Landroid/os/Handler;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;)V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->mImageProcess:Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;

    .line 521
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/MTKCameraExtension;->mImageProcess:Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;

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
    .line 526
    iget-object v0, p2, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mActionNotSupport:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

    const/16 v1, 0x2c5

    invoke-interface {v0, v1}, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;->onActionNotSupport(I)V

    .line 527
    return-void
.end method

.method public takeDenoisePicture(Landroid/os/Handler;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;)V
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
    .line 440
    iget-object v0, p2, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mActionNotSupport:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

    const/16 v1, 0x2c2

    invoke-interface {v0, v1}, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;->onActionNotSupport(I)V

    .line 441
    return-void
.end method

.method public takeHDRPicture(Landroid/os/Handler;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;)V
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
    .line 435
    iget-object v0, p2, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mActionNotSupport:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

    const/16 v1, 0x2c1

    invoke-interface {v0, v1}, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;->onActionNotSupport(I)V

    .line 436
    return-void
.end method

.method public takeLowLightPicture(Landroid/os/Handler;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;)V
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
    .line 445
    iget-object v0, p2, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mActionNotSupport:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

    const/16 v1, 0x2c3

    invoke-interface {v0, v1}, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;->onActionNotSupport(I)V

    .line 446
    return-void
.end method
