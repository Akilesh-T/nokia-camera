.class public abstract Lcom/android/camera/opengl/effect/EffectEngine;
.super Ljava/lang/Object;
.source "EffectEngine.java"


# instance fields
.field protected final mAppController:Lcom/android/camera/app/AppController;

.field protected final mCameraMatrix:Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;

.field protected mHandler:Landroid/os/Handler;

.field protected mHandlerThread:Landroid/os/HandlerThread;

.field protected final mHeight:I

.field protected final mIsFacingFront:Z

.field protected final mMainThread:Lcom/android/camera/async/MainThread;

.field protected final mSensorOrientation:I

.field protected final mSurfaceHeight:I

.field protected final mSurfaceWidth:I

.field protected final mWidth:I


# direct methods
.method public constructor <init>(Lcom/android/camera/app/AppController;IIIIZI)V
    .locals 2
    .param p1, "appController"    # Lcom/android/camera/app/AppController;
    .param p2, "surfaceWidth"    # I
    .param p3, "surfaceHeight"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "isFacingFront"    # Z
    .param p7, "sensorOrientation"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/camera/opengl/effect/EffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    .line 31
    iput p2, p0, Lcom/android/camera/opengl/effect/EffectEngine;->mSurfaceWidth:I

    .line 32
    iput p3, p0, Lcom/android/camera/opengl/effect/EffectEngine;->mSurfaceHeight:I

    .line 33
    iput p4, p0, Lcom/android/camera/opengl/effect/EffectEngine;->mWidth:I

    .line 34
    iput p5, p0, Lcom/android/camera/opengl/effect/EffectEngine;->mHeight:I

    .line 35
    iput-boolean p6, p0, Lcom/android/camera/opengl/effect/EffectEngine;->mIsFacingFront:Z

    .line 36
    iput p7, p0, Lcom/android/camera/opengl/effect/EffectEngine;->mSensorOrientation:I

    .line 37
    new-instance v0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;

    invoke-interface {p1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/opengl/effect/EffectEngine;->mCameraMatrix:Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;

    .line 38
    iget-object v0, p0, Lcom/android/camera/opengl/effect/EffectEngine;->mCameraMatrix:Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;

    invoke-virtual {v0, p6}, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->init(Z)V

    .line 39
    iget-object v0, p0, Lcom/android/camera/opengl/effect/EffectEngine;->mCameraMatrix:Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;

    invoke-virtual {v0, p4, p5}, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->initCameraFrameBuffer(II)V

    .line 40
    iget-object v0, p0, Lcom/android/camera/opengl/effect/EffectEngine;->mCameraMatrix:Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;

    invoke-virtual {v0, p4, p5}, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->onOutputSizeChanged(II)V

    .line 41
    invoke-static {}, Lcom/android/camera/async/MainThread;->create()Lcom/android/camera/async/MainThread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/effect/EffectEngine;->mMainThread:Lcom/android/camera/async/MainThread;

    .line 42
    return-void
.end method


# virtual methods
.method public abstract isNeedFaceData()Z
.end method

.method public abstract onPreviewFrame([B)V
.end method

.method public abstract onPreviewStop()V
.end method

.method public abstract process(I[F)I
.end method

.method public abstract release()V
.end method

.method public updateBuffer(Ljava/nio/FloatBuffer;)V
    .locals 0
    .param p1, "vertexBuffer"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 75
    return-void
.end method

.method protected waitDone(Landroid/os/Handler;)Z
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 55
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 56
    .local v2, "waitDoneLock":Ljava/lang/Object;
    new-instance v1, Lcom/android/camera/opengl/effect/EffectEngine$1;

    invoke-direct {v1, p0, v2}, Lcom/android/camera/opengl/effect/EffectEngine$1;-><init>(Lcom/android/camera/opengl/effect/EffectEngine;Ljava/lang/Object;)V

    .line 64
    .local v1, "unlockRunnable":Ljava/lang/Runnable;
    monitor-enter v2

    .line 65
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :try_start_2
    monitor-exit v2

    .line 72
    const/4 v3, 0x1

    :goto_0
    return v3

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "ex":Ljava/lang/InterruptedException;
    const/4 v3, 0x0

    monitor-exit v2

    goto :goto_0

    .line 71
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method
