.class public Lcom/android/camera/panorama/PanoFacadeImpl;
.super Ljava/lang/Object;
.source "PanoFacadeImpl.java"

# interfaces
.implements Lcom/android/camera/panorama/PanoramaFacade;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/panorama/PanoFacadeImpl$PanoFacadeState;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLoadSoundFuture:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainThread:Lcom/android/camera/async/MainThread;

.field private final mMediaActionSound:Landroid/media/MediaActionSound;

.field private final mOrientationLockController:Lcom/android/camera/burst/OrientationLockController;

.field private final mPanoProcessState:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/camera/panorama/PanoFacadeImpl$PanoFacadeState;",
            ">;"
        }
    .end annotation
.end field

.field private mPanoSoundLoaded:Z

.field private final mPanoramaTaker:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/camera/burst/BurstTaker;",
            ">;"
        }
    .end annotation
.end field

.field private final mReadyStateListener:Lcom/android/camera/panorama/PanoReadyStateChangeListener;

.field private final mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mShutterSoundEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "PanoFacadeImpl"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/panorama/PanoFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/panorama/PanoReadyStateChangeListener;)V
    .locals 3
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "orientationLockController"    # Lcom/android/camera/burst/OrientationLockController;
    .param p3, "readyStateListener"    # Lcom/android/camera/panorama/PanoReadyStateChangeListener;

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/android/camera/panorama/PanoFacadeImpl$PanoFacadeState;->IDLE:Lcom/android/camera/panorama/PanoFacadeImpl$PanoFacadeState;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mPanoProcessState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mPanoramaTaker:Ljava/util/concurrent/atomic/AtomicReference;

    .line 51
    iput-boolean v2, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mPanoSoundLoaded:Z

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mShutterSoundEnabled:Z

    .line 55
    iput-object p1, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mOrientationLockController:Lcom/android/camera/burst/OrientationLockController;

    .line 57
    iput-object p3, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mReadyStateListener:Lcom/android/camera/panorama/PanoReadyStateChangeListener;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    invoke-static {}, Lcom/android/camera/async/MainThread;->create()Lcom/android/camera/async/MainThread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mMainThread:Lcom/android/camera/async/MainThread;

    .line 61
    new-instance v0, Landroid/media/MediaActionSound;

    invoke-direct {v0}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mMediaActionSound:Landroid/media/MediaActionSound;

    .line 62
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mLoadSoundFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 63
    new-instance v0, Lcom/android/camera/panorama/PanoFacadeImpl$1;

    invoke-direct {v0, p0}, Lcom/android/camera/panorama/PanoFacadeImpl$1;-><init>(Lcom/android/camera/panorama/PanoFacadeImpl;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/panorama/PanoFacadeImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/panorama/PanoFacadeImpl;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/panorama/PanoFacadeImpl;)Lcom/google/common/util/concurrent/SettableFuture;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/panorama/PanoFacadeImpl;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mLoadSoundFuture:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/panorama/PanoFacadeImpl;)Landroid/media/MediaActionSound;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/panorama/PanoFacadeImpl;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mMediaActionSound:Landroid/media/MediaActionSound;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/camera/panorama/PanoFacadeImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/panorama/PanoFacadeImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mPanoSoundLoaded:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/panorama/PanoFacadeImpl;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/panorama/PanoFacadeImpl;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mPanoProcessState:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/panorama/PanoFacadeImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/panorama/PanoFacadeImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/camera/panorama/PanoFacadeImpl;->playSound(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/panorama/PanoFacadeImpl;)Lcom/android/camera/async/MainThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/panorama/PanoFacadeImpl;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mMainThread:Lcom/android/camera/async/MainThread;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/panorama/PanoFacadeImpl;)Lcom/android/camera/panorama/PanoReadyStateChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/panorama/PanoFacadeImpl;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mReadyStateListener:Lcom/android/camera/panorama/PanoReadyStateChangeListener;

    return-object v0
.end method

.method static synthetic access$800()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/camera/panorama/PanoFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/panorama/PanoFacadeImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/panorama/PanoFacadeImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/camera/panorama/PanoFacadeImpl;->reEnableUI(Z)V

    return-void
.end method

.method private playSound(Z)V
    .locals 3
    .param p1, "recordStarted"    # Z

    .prologue
    .line 348
    iget-object v1, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 349
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 350
    iget-boolean v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mPanoSoundLoaded:Z

    if-nez v0, :cond_0

    monitor-exit v1

    .line 355
    :goto_0
    return-void

    .line 351
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mShutterSoundEnabled:Z

    if-nez v0, :cond_1

    monitor-exit v1

    goto :goto_0

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 352
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mMediaActionSound:Landroid/media/MediaActionSound;

    if-eqz p1, :cond_3

    const/4 v0, 0x2

    :goto_1
    invoke-virtual {v2, v0}, Landroid/media/MediaActionSound;->play(I)V

    .line 354
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 352
    :cond_3
    const/4 v0, 0x3

    goto :goto_1
.end method

.method private reEnableUI(Z)V
    .locals 1
    .param p1, "hasFail"    # Z

    .prologue
    .line 339
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V

    .line 341
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/panorama/PanoFacadeImpl;->playSound(Z)V

    .line 343
    iget-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mOrientationLockController:Lcom/android/camera/burst/OrientationLockController;

    invoke-interface {v0}, Lcom/android/camera/burst/OrientationLockController;->unlockOrientation()V

    .line 344
    iget-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mReadyStateListener:Lcom/android/camera/panorama/PanoReadyStateChangeListener;

    invoke-interface {v0, p1}, Lcom/android/camera/panorama/PanoReadyStateChangeListener;->onPanoramaStoped(Z)V

    .line 345
    return-void
.end method


# virtual methods
.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x0

    return-object v0
.end method

.method public isBurstRunning()Z
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mPanoProcessState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/panorama/PanoFacadeImpl$PanoFacadeState;->RUNNING:Lcom/android/camera/panorama/PanoFacadeImpl$PanoFacadeState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBurstStopping()Z
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mPanoProcessState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/panorama/PanoFacadeImpl$PanoFacadeState;->STOPPING:Lcom/android/camera/panorama/PanoFacadeImpl$PanoFacadeState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 314
    iget-object v1, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/android/camera/panorama/PanoFacadeImpl;->stopBurst()Z

    .line 317
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mPanoSoundLoaded:Z

    .line 318
    iget-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mMediaActionSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 320
    :cond_0
    monitor-exit v1

    .line 321
    return-void

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBurstTaker(Lcom/android/camera/burst/BurstTaker;)V
    .locals 1
    .param p1, "burstTaker"    # Lcom/android/camera/burst/BurstTaker;

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mPanoramaTaker:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 326
    return-void
.end method

.method public setShutterSoundEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 335
    iput-boolean p1, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mShutterSoundEnabled:Z

    .line 336
    return-void
.end method

.method public startBurst(Lcom/android/camera/async/MainThread;Lcom/android/camera/session/CaptureSession$CaptureSessionCreator;Lcom/android/camera/burst/BurstFacade$BurstIntent;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/one/OneCamera$Facing;IJ)V
    .locals 13
    .param p1, "mainThread"    # Lcom/android/camera/async/MainThread;
    .param p2, "captureSessionCreator"    # Lcom/android/camera/session/CaptureSession$CaptureSessionCreator;
    .param p3, "burstIntent"    # Lcom/android/camera/burst/BurstFacade$BurstIntent;
    .param p4, "deviceOrientation"    # Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .param p5, "cameraFacing"    # Lcom/android/camera/one/OneCamera$Facing;
    .param p6, "imageOrientationDegrees"    # I
    .param p7, "remainingStorageBytes"    # J

    .prologue
    .line 109
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V

    .line 110
    iget-object v12, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v12

    .line 111
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_1

    .line 112
    iget-object v2, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mPanoramaTaker:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mPanoProcessState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lcom/android/camera/panorama/PanoFacadeImpl$PanoFacadeState;->IDLE:Lcom/android/camera/panorama/PanoFacadeImpl$PanoFacadeState;

    sget-object v4, Lcom/android/camera/panorama/PanoFacadeImpl$PanoFacadeState;->RUNNING:Lcom/android/camera/panorama/PanoFacadeImpl$PanoFacadeState;

    .line 113
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 115
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Lcom/android/camera/session/CaptureSession$CaptureSessionCreator;->createAndStartEmpty(Landroid/net/Uri;)Lcom/android/camera/session/CaptureSession;

    move-result-object v6

    .line 116
    .local v6, "captureSession":Lcom/android/camera/session/CaptureSession;
    if-nez v6, :cond_0

    .line 117
    sget-object v2, Lcom/android/camera/panorama/PanoFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Cannot start panorama : captureSession is null"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 118
    iget-object v2, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mPanoProcessState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lcom/android/camera/panorama/PanoFacadeImpl$PanoFacadeState;->IDLE:Lcom/android/camera/panorama/PanoFacadeImpl$PanoFacadeState;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 119
    monitor-exit v12

    .line 274
    .end local v6    # "captureSession":Lcom/android/camera/session/CaptureSession;
    :goto_0
    return-void

    .line 122
    .restart local v6    # "captureSession":Lcom/android/camera/session/CaptureSession;
    :cond_0
    sget-object v2, Lcom/android/camera/panorama/PanoFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting panorama. Device orientation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", image orientation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", remainingStorageBytes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p7

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 127
    iget-object v2, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mOrientationLockController:Lcom/android/camera/burst/OrientationLockController;

    invoke-interface {v2}, Lcom/android/camera/burst/OrientationLockController;->lockOrientation()V

    .line 129
    iget-object v2, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mReadyStateListener:Lcom/android/camera/panorama/PanoReadyStateChangeListener;

    invoke-interface {v2}, Lcom/android/camera/panorama/PanoReadyStateChangeListener;->onPanoramaStarting()V

    .line 131
    new-instance v3, Lcom/android/camera/panorama/PanoFacadeImpl$2;

    move/from16 v0, p6

    invoke-direct {v3, p0, p1, v0}, Lcom/android/camera/panorama/PanoFacadeImpl$2;-><init>(Lcom/android/camera/panorama/PanoFacadeImpl;Lcom/android/camera/async/MainThread;I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p3

    move-object/from16 v8, p4

    move/from16 v9, p6

    invoke-static/range {v2 .. v9}, Lcom/android/camera/burst/BurstControllerCreator;->create(Lcom/android/camera/burst/BurstFacade$BurstIntent;Lcom/android/camera/burst/BurstResultsListener;Landroid/view/Surface;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/session/CaptureSession;Lcom/android/camera/async/Lifetime;Lcom/android/camera/app/OrientationManager$DeviceOrientation;I)Lcom/android/camera/burst/BurstController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 260
    .local v11, "panoController":Lcom/android/camera/burst/BurstController;
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mPanoramaTaker:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/burst/BurstTaker;

    invoke-interface {v2, v11}, Lcom/android/camera/burst/BurstTaker;->startBurst(Lcom/android/camera/burst/BurstController;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    .end local v6    # "captureSession":Lcom/android/camera/session/CaptureSession;
    .end local v11    # "panoController":Lcom/android/camera/burst/BurstController;
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v12

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 261
    .restart local v6    # "captureSession":Lcom/android/camera/session/CaptureSession;
    .restart local v11    # "panoController":Lcom/android/camera/burst/BurstController;
    :catch_0
    move-exception v10

    .line 262
    .local v10, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v2, Lcom/android/camera/panorama/PanoFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start panorama fail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 263
    iget-object v2, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mReadyStateListener:Lcom/android/camera/panorama/PanoReadyStateChangeListener;

    const/16 v3, 0x7012

    invoke-interface {v2, v3}, Lcom/android/camera/panorama/PanoReadyStateChangeListener;->onPanoramaFailed(I)V

    .line 264
    invoke-virtual {p0}, Lcom/android/camera/panorama/PanoFacadeImpl;->stopBurst()Z

    .line 265
    iget-object v2, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mPanoProcessState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lcom/android/camera/panorama/PanoFacadeImpl$PanoFacadeState;->STOPPING:Lcom/android/camera/panorama/PanoFacadeImpl$PanoFacadeState;

    sget-object v4, Lcom/android/camera/panorama/PanoFacadeImpl$PanoFacadeState;->IDLE:Lcom/android/camera/panorama/PanoFacadeImpl$PanoFacadeState;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 266
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/camera/panorama/PanoFacadeImpl;->reEnableUI(Z)V

    .line 267
    invoke-interface {v6}, Lcom/android/camera/session/CaptureSession;->cancel()V

    goto :goto_1

    .line 270
    .end local v6    # "captureSession":Lcom/android/camera/session/CaptureSession;
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "panoController":Lcom/android/camera/burst/BurstController;
    :cond_2
    sget-object v2, Lcom/android/camera/panorama/PanoFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Cannot start panorama."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public stopBurst()Z
    .locals 5

    .prologue
    .line 278
    const/4 v1, 0x0

    .line 279
    .local v1, "wasStopped":Z
    iget-object v2, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mPanoramaTaker:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mPanoProcessState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lcom/android/camera/panorama/PanoFacadeImpl$PanoFacadeState;->RUNNING:Lcom/android/camera/panorama/PanoFacadeImpl$PanoFacadeState;

    sget-object v4, Lcom/android/camera/panorama/PanoFacadeImpl$PanoFacadeState;->STOPPING:Lcom/android/camera/panorama/PanoFacadeImpl$PanoFacadeState;

    .line 280
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    sget-object v2, Lcom/android/camera/panorama/PanoFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Stopping panorama"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 282
    const/4 v1, 0x1

    .line 284
    new-instance v0, Lcom/android/camera/panorama/PanoFacadeImpl$3;

    invoke-direct {v0, p0}, Lcom/android/camera/panorama/PanoFacadeImpl$3;-><init>(Lcom/android/camera/panorama/PanoFacadeImpl;)V

    .line 291
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/camera/async/MainThread;->isMainThread()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 292
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 297
    :goto_0
    iget-object v2, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mPanoramaTaker:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/burst/BurstTaker;

    invoke-interface {v2}, Lcom/android/camera/burst/BurstTaker;->stopBurst()V

    .line 299
    .end local v0    # "runnable":Ljava/lang/Runnable;
    :cond_0
    return v1

    .line 294
    .restart local v0    # "runnable":Ljava/lang/Runnable;
    :cond_1
    iget-object v2, p0, Lcom/android/camera/panorama/PanoFacadeImpl;->mMainThread:Lcom/android/camera/async/MainThread;

    invoke-virtual {v2, v0}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
