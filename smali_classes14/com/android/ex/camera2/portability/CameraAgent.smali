.class public abstract Lcom/android/ex/camera2/portability/CameraAgent;
.super Ljava/lang/Object;
.source "CameraAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;,
        Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;,
        Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;,
        Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;,
        Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;,
        Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;,
        Lcom/android/ex/camera2/portability/CameraAgent$CameraMetaDataCallback;,
        Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;,
        Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;,
        Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;,
        Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;,
        Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;,
        Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;,
        Lcom/android/ex/camera2/portability/CameraAgent$CameraErrorCallback;,
        Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallbackForward;,
        Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallbackForward;
    }
.end annotation


# static fields
.field public static final CAMERA_OPERATION_TIMEOUT_MS:J = 0xdacL

.field public static final ERROR_ACTION_ABORT:I = -0x3

.field public static final ERROR_CAMERA_RELEASED:I = -0x2

.field public static final ERROR_NOT_SUPPORT:I = -0x1

.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "CamAgnt"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraAgent;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/android/ex/camera2/portability/debug/Log$Tag;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgent;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-object v0
.end method


# virtual methods
.method public closeCamera(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;Z)V
    .locals 8
    .param p1, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
    .param p2, "synced"    # Z

    .prologue
    .line 367
    if-eqz p2, :cond_2

    .line 369
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraState()Lcom/android/ex/camera2/portability/CameraStateHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraStateHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 370
    sget-boolean v1, Lcom/android/camera/util/PIPSTBUtil;->ENABLE_PIP_STB_DUMP:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/camera/util/PIPSTBUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "closeCamera isInvalid"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    new-instance v0, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;

    invoke-direct {v0}, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;-><init>()V

    .line 375
    .local v0, "bundle":Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v1

    new-instance v2, Lcom/android/ex/camera2/portability/CameraAgent$3;

    invoke-direct {v2, p0, v0}, Lcom/android/ex/camera2/portability/CameraAgent$3;-><init>(Lcom/android/ex/camera2/portability/CameraAgent;Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;)V

    iget-object v3, v0, Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;->mWaitLock:Ljava/lang/Object;

    const-wide/16 v4, 0xdac

    const-string v6, "camera release"

    invoke-virtual/range {v1 .. v6}, Lcom/android/ex/camera2/portability/DispatchThread;->runJobSync(Ljava/lang/Runnable;Ljava/lang/Object;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 389
    .end local v0    # "bundle":Lcom/android/ex/camera2/portability/CameraAgent$WaitDoneBundle;
    :catch_0
    move-exception v7

    .line 390
    .local v7, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 382
    .end local v7    # "ex":Ljava/lang/RuntimeException;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v1

    new-instance v2, Lcom/android/ex/camera2/portability/CameraAgent$4;

    invoke-direct {v2, p0}, Lcom/android/ex/camera2/portability/CameraAgent$4;-><init>(Lcom/android/ex/camera2/portability/CameraAgent;)V

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public abstract getCameraDeviceInfo()Lcom/android/ex/camera2/portability/CameraDeviceInfo;
.end method

.method protected abstract getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;
.end method

.method protected abstract getCameraHandler()Landroid/os/Handler;
.end method

.method protected abstract getCameraState()Lcom/android/ex/camera2/portability/CameraStateHolder;
.end method

.method protected abstract getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;
.end method

.method public openCamera(Landroid/os/Handler;ILcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "cameraId"    # I
    .param p3, "callback"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    .prologue
    .line 332
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v1

    new-instance v2, Lcom/android/ex/camera2/portability/CameraAgent$1;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/android/ex/camera2/portability/CameraAgent$1;-><init>(Lcom/android/ex/camera2/portability/CameraAgent;ILandroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)V

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :goto_0
    return-void

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public abstract recycle()V
.end method

.method public abstract setCameraExceptionHandler(Lcom/android/ex/camera2/portability/CameraExceptionHandler;)V
.end method

.method public warmStart(Landroid/os/Handler;ILcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "cameraId"    # I
    .param p3, "callback"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;

    .prologue
    .line 347
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent;->getDispatchThread()Lcom/android/ex/camera2/portability/DispatchThread;

    move-result-object v1

    new-instance v2, Lcom/android/ex/camera2/portability/CameraAgent$2;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/android/ex/camera2/portability/CameraAgent$2;-><init>(Lcom/android/ex/camera2/portability/CameraAgent;ILandroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;)V

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/DispatchThread;->runJob(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :goto_0
    return-void

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraAgent;->getCameraExceptionHandler()Lcom/android/ex/camera2/portability/CameraExceptionHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraExceptionHandler;->onDispatchThreadException(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method
