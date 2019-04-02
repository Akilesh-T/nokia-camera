.class public Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;
.super Lcom/thirdparty/arcsoft/engine/ImageEngineBase;
.source "PostProcessImageEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$WaitDoneBundle;,
        Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;,
        Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$PostProcessUnit;
    }
.end annotation


# instance fields
.field private final TAG:Lcom/android/camera/debug/Log$Tag;

.field private final mDispatchThread:Lcom/thirdparty/arcsoft/engine/EngineDispatchThread;

.field private final mEngineHandler:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;

.field private final mEngineHandlerThread:Landroid/os/HandlerThread;

.field private final mImgHeight:I

.field private final mImgWidth:I

.field private final mInfinite:Z

.field private mIsFirstFrame:Z

.field private mIsLongExposureTime:Z

.field private final mLockableImageBuffer:Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;

.field private final mPostProcessUnit:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$PostProcessUnit;

.field private final mRequiredFrameNum:I

.field private final mWaitFrameTimeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$PostProcessUnit;IZII)V
    .locals 3
    .param p1, "listener"    # Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "postProcessUnit"    # Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$PostProcessUnit;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "requiredFrameNum"    # I
    .param p4, "infinite"    # Z
    .param p5, "imgWidth"    # I
    .param p6, "imgHeight"    # I

    .prologue
    const/4 v0, 0x1

    .line 42
    invoke-direct {p0, p1}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase;-><init>(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;)V

    .line 32
    iput-boolean v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mIsFirstFrame:Z

    .line 34
    iput-boolean v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mIsLongExposureTime:Z

    .line 43
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "PostProcessImageEngine"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 45
    iput-object p2, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mPostProcessUnit:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$PostProcessUnit;

    .line 46
    iput p3, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mRequiredFrameNum:I

    .line 47
    iput-boolean p4, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mInfinite:Z

    .line 48
    iput p5, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mImgWidth:I

    .line 49
    iput p6, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mImgHeight:I

    .line 51
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PostProcessImageEngine"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mEngineHandlerThread:Landroid/os/HandlerThread;

    .line 52
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mEngineHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 53
    new-instance v0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;

    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mEngineHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;-><init>(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mEngineHandler:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;

    .line 54
    new-instance v0, Lcom/thirdparty/arcsoft/engine/EngineDispatchThread;

    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mEngineHandler:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;

    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mEngineHandlerThread:Landroid/os/HandlerThread;

    invoke-direct {v0, v1, v2}, Lcom/thirdparty/arcsoft/engine/EngineDispatchThread;-><init>(Landroid/os/Handler;Landroid/os/HandlerThread;)V

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mDispatchThread:Lcom/thirdparty/arcsoft/engine/EngineDispatchThread;

    .line 55
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mDispatchThread:Lcom/thirdparty/arcsoft/engine/EngineDispatchThread;

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/EngineDispatchThread;->start()V

    .line 57
    new-instance v0, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;

    invoke-direct {v0, p3}, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mLockableImageBuffer:Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;

    .line 58
    new-instance v0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$1;

    invoke-direct {v0, p0}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$1;-><init>(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;)V

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mWaitFrameTimeoutRunnable:Ljava/lang/Runnable;

    .line 66
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mEngineState:Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->setState(I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$PostProcessUnit;IZIIZ)V
    .locals 0
    .param p1, "listener"    # Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "postProcessUnit"    # Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$PostProcessUnit;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "requiredFrameNum"    # I
    .param p4, "infinite"    # Z
    .param p5, "imgWidth"    # I
    .param p6, "imgHeight"    # I
    .param p7, "isLongExposureTime"    # Z

    .prologue
    .line 71
    invoke-direct/range {p0 .. p6}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;-><init>(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$PostProcessUnit;IZII)V

    .line 72
    iput-boolean p7, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mIsLongExposureTime:Z

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;)Lcom/android/camera/debug/Log$Tag;
    .locals 1
    .param p0, "x0"    # Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;)Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;
    .locals 1
    .param p0, "x0"    # Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mLockableImageBuffer:Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;)Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$PostProcessUnit;
    .locals 1
    .param p0, "x0"    # Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mPostProcessUnit:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$PostProcessUnit;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;)Lcom/thirdparty/arcsoft/engine/EngineDispatchThread;
    .locals 1
    .param p0, "x0"    # Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mDispatchThread:Lcom/thirdparty/arcsoft/engine/EngineDispatchThread;

    return-object v0
.end method

.method static synthetic access$200(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mIsFirstFrame:Z

    return v0
.end method

.method static synthetic access$202(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mIsFirstFrame:Z

    return p1
.end method

.method static synthetic access$300(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;)I
    .locals 1
    .param p0, "x0"    # Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    .prologue
    .line 17
    iget v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mImgWidth:I

    return v0
.end method

.method static synthetic access$400(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;)I
    .locals 1
    .param p0, "x0"    # Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    .prologue
    .line 17
    iget v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mImgHeight:I

    return v0
.end method

.method static synthetic access$500(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mInfinite:Z

    return v0
.end method

.method static synthetic access$600(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;)I
    .locals 1
    .param p0, "x0"    # Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    .prologue
    .line 17
    iget v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mRequiredFrameNum:I

    return v0
.end method

.method static synthetic access$700(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mWaitFrameTimeoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mIsLongExposureTime:Z

    return v0
.end method

.method static synthetic access$900(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;)Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;
    .locals 1
    .param p0, "x0"    # Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mEngineHandler:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;

    return-object v0
.end method


# virtual methods
.method public final abort()V
    .locals 8

    .prologue
    .line 250
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "ImageProcess - abort"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->getEngineState()Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mEngineHandler:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;

    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mWaitFrameTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 258
    :try_start_0
    new-instance v0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$WaitDoneBundle;

    invoke-direct {v0}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$WaitDoneBundle;-><init>()V

    .line 259
    .local v0, "bundle":Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$WaitDoneBundle;
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mDispatchThread:Lcom/thirdparty/arcsoft/engine/EngineDispatchThread;

    new-instance v2, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$4;

    invoke-direct {v2, p0, v0}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$4;-><init>(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$WaitDoneBundle;)V

    iget-object v3, v0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$WaitDoneBundle;->mWaitLock:Ljava/lang/Object;

    const-wide/16 v4, 0xdac

    const-string v6, "abort engine"

    invoke-virtual/range {v1 .. v6}, Lcom/thirdparty/arcsoft/engine/EngineDispatchThread;->runJobSync(Ljava/lang/Runnable;Ljava/lang/Object;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 267
    .end local v0    # "bundle":Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$WaitDoneBundle;
    :catch_0
    move-exception v7

    .line 268
    .local v7, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v7}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 269
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mOnProcessStateListener:Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    const/4 v2, -0x4

    invoke-interface {v1, v2}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onProcessError(I)V

    goto :goto_0
.end method

.method public final addFrame(I[BZ)V
    .locals 6
    .param p1, "frameNum"    # I
    .param p2, "data"    # [B
    .param p3, "sync"    # Z

    .prologue
    .line 222
    sget-object v1, Lcom/android/camera/one/CameraType;->BAYER:Lcom/android/camera/one/CameraType;

    sget-object v2, Lcom/android/camera/one/DualSightCamType;->MAIN:Lcom/android/camera/one/DualSightCamType;

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->addFrame(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/DualSightCamType;I[BZ)V

    .line 223
    return-void
.end method

.method public final addFrame(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/DualSightCamType;I[BZ)V
    .locals 2
    .param p1, "cameraType"    # Lcom/android/camera/one/CameraType;
    .param p2, "dualSightCamType"    # Lcom/android/camera/one/DualSightCamType;
    .param p3, "frameNum"    # I
    .param p4, "data"    # [B
    .param p5, "sync"    # Z

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->getEngineState()Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->getEngineState()Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->getEngineState()Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->getState()I

    move-result v0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    .line 236
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mEngineHandler:Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;

    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mWaitFrameTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$EngineHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 238
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mDispatchThread:Lcom/thirdparty/arcsoft/engine/EngineDispatchThread;

    new-instance v1, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$3;

    invoke-direct {v1, p0, p3, p4, p5}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$3;-><init>(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;I[BZ)V

    invoke-virtual {v0, v1}, Lcom/thirdparty/arcsoft/engine/EngineDispatchThread;->runJob(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final release()V
    .locals 2

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->getEngineState()Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mDispatchThread:Lcom/thirdparty/arcsoft/engine/EngineDispatchThread;

    new-instance v1, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$5;

    invoke-direct {v1, p0}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$5;-><init>(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;)V

    invoke-virtual {v0, v1}, Lcom/thirdparty/arcsoft/engine/EngineDispatchThread;->runJob(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final start()V
    .locals 8

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->getEngineState()Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->getEngineState()Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->waitForStates(I)Z

    .line 206
    :try_start_0
    new-instance v0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$WaitDoneBundle;

    invoke-direct {v0}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$WaitDoneBundle;-><init>()V

    .line 207
    .local v0, "bundle":Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$WaitDoneBundle;
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mDispatchThread:Lcom/thirdparty/arcsoft/engine/EngineDispatchThread;

    new-instance v2, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$2;

    invoke-direct {v2, p0, v0}, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$2;-><init>(Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$WaitDoneBundle;)V

    iget-object v3, v0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$WaitDoneBundle;->mWaitLock:Ljava/lang/Object;

    const-wide/16 v4, 0xdac

    const-string v6, "start engine"

    invoke-virtual/range {v1 .. v6}, Lcom/thirdparty/arcsoft/engine/EngineDispatchThread;->runJobSync(Ljava/lang/Runnable;Ljava/lang/Object;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    .end local v0    # "bundle":Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine$WaitDoneBundle;
    :catch_0
    move-exception v7

    .line 215
    .local v7, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v7}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 216
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/PostProcessImageEngine;->mOnProcessStateListener:Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    const/4 v2, -0x4

    invoke-interface {v1, v2}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onProcessError(I)V

    goto :goto_0
.end method
