.class public abstract Lcom/thirdparty/arcsoft/engine/ImageEngine;
.super Lcom/thirdparty/arcsoft/engine/ImageEngineBase;
.source "ImageEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle;,
        Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;
    }
.end annotation


# instance fields
.field private final TAG:Lcom/android/camera/debug/Log$Tag;

.field private final mDispatchThread:Lcom/thirdparty/arcsoft/engine/EngineDispatchThread;

.field private final mEngineHandler:Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;

.field private final mEngineHandlerThread:Landroid/os/HandlerThread;

.field private final mInfinite:Z

.field private final mLockableImageBuffer:Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;

.field private final mRequiredFrameNum:I

.field private final mWaitFrameTimeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZ)V
    .locals 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "requiredFrameNum"    # I
    .param p4, "infinite"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/thirdparty/arcsoft/engine/ImageEngine;",
            ">;",
            "Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;",
            "IZ)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/thirdparty/arcsoft/engine/ImageEngine;>;"
    invoke-direct {p0, p2}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase;-><init>(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;)V

    .line 29
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 31
    iput p3, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mRequiredFrameNum:I

    .line 32
    iput-boolean p4, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mInfinite:Z

    .line 34
    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mEngineHandlerThread:Landroid/os/HandlerThread;

    .line 35
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mEngineHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 36
    new-instance v0, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;

    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mEngineHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;-><init>(Lcom/thirdparty/arcsoft/engine/ImageEngine;Lcom/thirdparty/arcsoft/engine/ImageEngine;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mEngineHandler:Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;

    .line 37
    new-instance v0, Lcom/thirdparty/arcsoft/engine/EngineDispatchThread;

    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mEngineHandler:Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;

    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mEngineHandlerThread:Landroid/os/HandlerThread;

    invoke-direct {v0, v1, v2}, Lcom/thirdparty/arcsoft/engine/EngineDispatchThread;-><init>(Landroid/os/Handler;Landroid/os/HandlerThread;)V

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mDispatchThread:Lcom/thirdparty/arcsoft/engine/EngineDispatchThread;

    .line 38
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mDispatchThread:Lcom/thirdparty/arcsoft/engine/EngineDispatchThread;

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/EngineDispatchThread;->start()V

    .line 40
    new-instance v0, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;

    invoke-direct {v0, p3}, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mLockableImageBuffer:Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;

    .line 41
    new-instance v0, Lcom/thirdparty/arcsoft/engine/ImageEngine$1;

    invoke-direct {v0, p0}, Lcom/thirdparty/arcsoft/engine/ImageEngine$1;-><init>(Lcom/thirdparty/arcsoft/engine/ImageEngine;)V

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mWaitFrameTimeoutRunnable:Ljava/lang/Runnable;

    .line 48
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mDispatchThread:Lcom/thirdparty/arcsoft/engine/EngineDispatchThread;

    new-instance v1, Lcom/thirdparty/arcsoft/engine/ImageEngine$2;

    invoke-direct {v1, p0}, Lcom/thirdparty/arcsoft/engine/ImageEngine$2;-><init>(Lcom/thirdparty/arcsoft/engine/ImageEngine;)V

    invoke-virtual {v0, v1}, Lcom/thirdparty/arcsoft/engine/EngineDispatchThread;->runJob(Ljava/lang/Runnable;)V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/thirdparty/arcsoft/engine/ImageEngine;)Lcom/android/camera/debug/Log$Tag;
    .locals 1
    .param p0, "x0"    # Lcom/thirdparty/arcsoft/engine/ImageEngine;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/thirdparty/arcsoft/engine/ImageEngine;)Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;
    .locals 1
    .param p0, "x0"    # Lcom/thirdparty/arcsoft/engine/ImageEngine;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mEngineHandler:Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/thirdparty/arcsoft/engine/ImageEngine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/thirdparty/arcsoft/engine/ImageEngine;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mInfinite:Z

    return v0
.end method

.method static synthetic access$300(Lcom/thirdparty/arcsoft/engine/ImageEngine;)Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;
    .locals 1
    .param p0, "x0"    # Lcom/thirdparty/arcsoft/engine/ImageEngine;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mLockableImageBuffer:Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/thirdparty/arcsoft/engine/ImageEngine;)I
    .locals 1
    .param p0, "x0"    # Lcom/thirdparty/arcsoft/engine/ImageEngine;

    .prologue
    .line 16
    iget v0, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mRequiredFrameNum:I

    return v0
.end method

.method static synthetic access$500(Lcom/thirdparty/arcsoft/engine/ImageEngine;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/thirdparty/arcsoft/engine/ImageEngine;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mWaitFrameTimeoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public final abort()V
    .locals 8

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->getEngineState()Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mEngineState:Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    invoke-virtual {v1}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->getState()I

    move-result v1

    const/16 v2, 0x80

    if-eq v1, v2, :cond_0

    .line 328
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "ImageProcess - abort"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 330
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mEngineHandler:Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;

    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mWaitFrameTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 333
    :try_start_0
    new-instance v0, Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle;

    invoke-direct {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle;-><init>()V

    .line 334
    .local v0, "bundle":Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle;
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mDispatchThread:Lcom/thirdparty/arcsoft/engine/EngineDispatchThread;

    new-instance v2, Lcom/thirdparty/arcsoft/engine/ImageEngine$6;

    invoke-direct {v2, p0, v0}, Lcom/thirdparty/arcsoft/engine/ImageEngine$6;-><init>(Lcom/thirdparty/arcsoft/engine/ImageEngine;Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle;)V

    iget-object v3, v0, Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle;->mWaitLock:Ljava/lang/Object;

    const-wide/16 v4, 0xdac

    const-string v6, "abort engine"

    invoke-virtual/range {v1 .. v6}, Lcom/thirdparty/arcsoft/engine/EngineDispatchThread;->runJobSync(Ljava/lang/Runnable;Ljava/lang/Object;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 341
    .end local v0    # "bundle":Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle;
    :catch_0
    move-exception v7

    .line 342
    .local v7, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v7}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 343
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mOnProcessStateListener:Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    const/4 v2, -0x4

    invoke-interface {v1, v2}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onProcessError(I)V

    goto :goto_0
.end method

.method protected abstract abortEngineInternal()V
.end method

.method public final addFrame(I[BZ)V
    .locals 6
    .param p1, "frameNum"    # I
    .param p2, "data"    # [B
    .param p3, "sync"    # Z

    .prologue
    .line 257
    sget-object v1, Lcom/android/camera/one/CameraType;->BAYER:Lcom/android/camera/one/CameraType;

    sget-object v2, Lcom/android/camera/one/DualSightCamType;->MAIN:Lcom/android/camera/one/DualSightCamType;

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->addFrame(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/DualSightCamType;I[BZ)V

    .line 258
    return-void
.end method

.method public final addFrame(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/DualSightCamType;I[BZ)V
    .locals 8
    .param p1, "cameraType"    # Lcom/android/camera/one/CameraType;
    .param p2, "dualSightCamType"    # Lcom/android/camera/one/DualSightCamType;
    .param p3, "frameNum"    # I
    .param p4, "data"    # [B
    .param p5, "sync"    # Z

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->getEngineState()Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->getEngineState()Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 267
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->getEngineState()Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 268
    :cond_2
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waitForStates start : current = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->getEngineState()Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->getEngineState()Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    move-result-object v0

    const/16 v1, 0x8c

    invoke-virtual {v0, v1}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->waitForStates(I)Z

    .line 270
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waitForStates end : current = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->getEngineState()Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 273
    :cond_3
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->getEngineState()Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->getEngineState()Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->getState()I

    move-result v0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    .line 278
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mEngineHandler:Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;

    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mWaitFrameTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 280
    iget-object v7, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mDispatchThread:Lcom/thirdparty/arcsoft/engine/EngineDispatchThread;

    new-instance v0, Lcom/thirdparty/arcsoft/engine/ImageEngine$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/thirdparty/arcsoft/engine/ImageEngine$4;-><init>(Lcom/thirdparty/arcsoft/engine/ImageEngine;Lcom/android/camera/one/CameraType;Lcom/android/camera/one/DualSightCamType;I[BZ)V

    invoke-virtual {v7, v0}, Lcom/thirdparty/arcsoft/engine/EngineDispatchThread;->runJob(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public final finish()V
    .locals 4

    .prologue
    const/16 v3, 0x10

    .line 294
    iget-boolean v0, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mInfinite:Z

    if-nez v0, :cond_1

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->getEngineState()Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->isInvalid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageProcess - finish : mEngineState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mEngineState:Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    invoke-virtual {v2}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mEngineState:Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->getState()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 302
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mEngineState:Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    invoke-virtual {v0, v3}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->setState(I)V

    .line 303
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mEngineHandler:Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;

    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mWaitFrameTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 304
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mEngineHandler:Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/thirdparty/arcsoft/engine/ImageEngine$EngineHandler;->removeMessages(I)V

    .line 306
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mDispatchThread:Lcom/thirdparty/arcsoft/engine/EngineDispatchThread;

    new-instance v1, Lcom/thirdparty/arcsoft/engine/ImageEngine$5;

    invoke-direct {v1, p0}, Lcom/thirdparty/arcsoft/engine/ImageEngine$5;-><init>(Lcom/thirdparty/arcsoft/engine/ImageEngine;)V

    invoke-virtual {v0, v1}, Lcom/thirdparty/arcsoft/engine/EngineDispatchThread;->runJob(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 315
    :cond_2
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mEngineState:Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->getState()I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mEngineState:Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    .line 316
    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->getState()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 319
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mOnProcessStateListener:Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onProcessError(I)V

    goto :goto_0
.end method

.method protected abstract initEngineInternal()Z
.end method

.method protected abstract inputImageInternal(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/DualSightCamType;[BZ)Z
.end method

.method protected abstract processReultImageInternal()Z
.end method

.method public final release()V
    .locals 7

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->getEngineState()Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    :goto_0
    return-void

    .line 351
    :cond_0
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "ImageProcess - release"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 354
    :try_start_0
    new-instance v0, Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle;

    invoke-direct {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle;-><init>()V

    .line 355
    .local v0, "bundle":Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle;
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mDispatchThread:Lcom/thirdparty/arcsoft/engine/EngineDispatchThread;

    new-instance v2, Lcom/thirdparty/arcsoft/engine/ImageEngine$7;

    invoke-direct {v2, p0, v0}, Lcom/thirdparty/arcsoft/engine/ImageEngine$7;-><init>(Lcom/thirdparty/arcsoft/engine/ImageEngine;Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle;)V

    iget-object v3, v0, Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle;->mWaitLock:Ljava/lang/Object;

    const-wide/16 v4, 0xdac

    const-string v6, "release engine"

    invoke-virtual/range {v1 .. v6}, Lcom/thirdparty/arcsoft/engine/EngineDispatchThread;->runJobSync(Ljava/lang/Runnable;Ljava/lang/Object;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    .end local v0    # "bundle":Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle;
    :goto_1
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mEngineState:Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    invoke-virtual {v1}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->invalidate()V

    .line 365
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mDispatchThread:Lcom/thirdparty/arcsoft/engine/EngineDispatchThread;

    invoke-virtual {v1}, Lcom/thirdparty/arcsoft/engine/EngineDispatchThread;->end()V

    .line 366
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mLockableImageBuffer:Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;

    invoke-virtual {v1}, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->close()V

    goto :goto_0

    .line 362
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method protected abstract releaseEngineInternal()V
.end method

.method public final start()V
    .locals 8

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->getEngineState()Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/thirdparty/arcsoft/engine/ImageEngine;->getEngineState()Lcom/thirdparty/arcsoft/engine/EngineStateHolder;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/thirdparty/arcsoft/engine/EngineStateHolder;->waitForStates(I)Z

    .line 241
    :try_start_0
    new-instance v0, Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle;

    invoke-direct {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle;-><init>()V

    .line 242
    .local v0, "bundle":Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle;
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mDispatchThread:Lcom/thirdparty/arcsoft/engine/EngineDispatchThread;

    new-instance v2, Lcom/thirdparty/arcsoft/engine/ImageEngine$3;

    invoke-direct {v2, p0, v0}, Lcom/thirdparty/arcsoft/engine/ImageEngine$3;-><init>(Lcom/thirdparty/arcsoft/engine/ImageEngine;Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle;)V

    iget-object v3, v0, Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle;->mWaitLock:Ljava/lang/Object;

    const-wide/16 v4, 0xdac

    const-string v6, "start engine"

    invoke-virtual/range {v1 .. v6}, Lcom/thirdparty/arcsoft/engine/EngineDispatchThread;->runJobSync(Ljava/lang/Runnable;Ljava/lang/Object;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 249
    .end local v0    # "bundle":Lcom/thirdparty/arcsoft/engine/ImageEngine$WaitDoneBundle;
    :catch_0
    move-exception v7

    .line 250
    .local v7, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v7}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 251
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/ImageEngine;->mOnProcessStateListener:Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;

    const/4 v2, -0x4

    invoke-interface {v1, v2}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;->onProcessError(I)V

    goto :goto_0
.end method
