.class Lcom/android/camera/burst/BurstFacadeImpl;
.super Ljava/lang/Object;
.source "BurstFacadeImpl.java"

# interfaces
.implements Lcom/android/camera/burst/BurstFacade;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;
    }
.end annotation


# static fields
.field private static final BURST_SOUND_RES_ID:I = 0x7f070006

.field private static final BURST_SOUND_STOP:I = -0x1

.field private static final BURST_SOUND_VOLUME:F = 1.0f

.field private static final DEFAULT_PREVIEW_HEIGHT:I = 0xf0

.field private static final DEFAULT_PREVIEW_WIDTH:I = 0x140

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mBurstModuleState:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;",
            ">;"
        }
    .end annotation
.end field

.field private mBurstSoundLoaded:Z

.field private final mBurstSoundPlayer:Lcom/android/camera/SoundPlayer;

.field private mBurstSoundStreamId:I

.field private final mBurstTaker:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/camera/burst/BurstTaker;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainThread:Lcom/android/camera/async/MainThread;

.field private final mOrientationLockController:Lcom/android/camera/burst/OrientationLockController;

.field private final mReadyStateListener:Lcom/android/camera/burst/BurstReadyStateChangeListener;

.field private final mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mShutterSoundEnabled:Z

.field private final mSurfaceTextureContainer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/camera/burst/SurfaceTextureContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "BurstFacadeImpl"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/burst/BurstFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/burst/BurstReadyStateChangeListener;)V
    .locals 3
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "orientationLockController"    # Lcom/android/camera/burst/OrientationLockController;
    .param p3, "readyStateListener"    # Lcom/android/camera/burst/BurstReadyStateChangeListener;

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;->IDLE:Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mBurstModuleState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mBurstTaker:Ljava/util/concurrent/atomic/AtomicReference;

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mSurfaceTextureContainer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mBurstSoundStreamId:I

    .line 75
    iput-boolean v2, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mBurstSoundLoaded:Z

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mShutterSoundEnabled:Z

    .line 91
    iput-object p2, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mOrientationLockController:Lcom/android/camera/burst/OrientationLockController;

    .line 92
    iput-object p3, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mReadyStateListener:Lcom/android/camera/burst/BurstReadyStateChangeListener;

    .line 93
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 94
    invoke-static {}, Lcom/android/camera/async/MainThread;->create()Lcom/android/camera/async/MainThread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mMainThread:Lcom/android/camera/async/MainThread;

    .line 95
    new-instance v0, Lcom/android/camera/SoundPlayer;

    invoke-direct {v0, p1}, Lcom/android/camera/SoundPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mBurstSoundPlayer:Lcom/android/camera/SoundPlayer;

    .line 96
    return-void
.end method

.method static synthetic access$000()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/camera/burst/BurstFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/burst/BurstFacadeImpl;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/burst/BurstFacadeImpl;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mBurstModuleState:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/burst/BurstFacadeImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/burst/BurstFacadeImpl;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/camera/burst/BurstFacadeImpl;->reEnableUI()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/camera/burst/BurstFacadeImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/burst/BurstFacadeImpl;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mBurstSoundStreamId:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/burst/BurstFacadeImpl;)Lcom/android/camera/SoundPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/burst/BurstFacadeImpl;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mBurstSoundPlayer:Lcom/android/camera/SoundPlayer;

    return-object v0
.end method

.method private reEnableUI()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 269
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V

    .line 271
    iget v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mBurstSoundStreamId:I

    if-eq v0, v2, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mBurstSoundPlayer:Lcom/android/camera/SoundPlayer;

    iget v1, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mBurstSoundStreamId:I

    invoke-virtual {v0, v1}, Lcom/android/camera/SoundPlayer;->stopRepeat(I)V

    .line 273
    iput v2, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mBurstSoundStreamId:I

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mOrientationLockController:Lcom/android/camera/burst/OrientationLockController;

    invoke-interface {v0}, Lcom/android/camera/burst/OrientationLockController;->unlockOrientation()V

    .line 278
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mReadyStateListener:Lcom/android/camera/burst/BurstReadyStateChangeListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/burst/BurstReadyStateChangeListener;->onBurstReadyStateChanged(Z)V

    .line 279
    return-void
.end method


# virtual methods
.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    return-object v0
.end method

.method public isBurstRunning()Z
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mBurstModuleState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;->RUNNING:Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;

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
    .line 236
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mBurstModuleState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;->STOPPING:Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;

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
    .line 241
    iget-object v1, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    invoke-virtual {p0}, Lcom/android/camera/burst/BurstFacadeImpl;->stopBurst()Z

    .line 244
    iget-boolean v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mBurstSoundLoaded:Z

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mBurstSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v2, 0x7f070006

    invoke-virtual {v0, v2}, Lcom/android/camera/SoundPlayer;->unloadSound(I)V

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mBurstSoundLoaded:Z

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mBurstSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0}, Lcom/android/camera/SoundPlayer;->release()V

    .line 250
    :cond_1
    monitor-exit v1

    .line 251
    return-void

    .line 250
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
    .line 255
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mBurstTaker:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 256
    return-void
.end method

.method public setShutterSoundEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 265
    iput-boolean p1, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mShutterSoundEnabled:Z

    .line 266
    return-void
.end method

.method public startBurst(Lcom/android/camera/async/MainThread;Lcom/android/camera/session/CaptureSession$CaptureSessionCreator;Lcom/android/camera/burst/BurstFacade$BurstIntent;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/one/OneCamera$Facing;IJ)V
    .locals 15
    .param p1, "mainThread"    # Lcom/android/camera/async/MainThread;
    .param p2, "captureSessionCreator"    # Lcom/android/camera/session/CaptureSession$CaptureSessionCreator;
    .param p3, "burstIntent"    # Lcom/android/camera/burst/BurstFacade$BurstIntent;
    .param p4, "deviceOrientation"    # Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .param p5, "cameraFacing"    # Lcom/android/camera/one/OneCamera$Facing;
    .param p6, "imageOrientationDegrees"    # I
    .param p7, "remainingStorageBytes"    # J

    .prologue
    .line 105
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V

    .line 107
    iget-object v13, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v13

    .line 108
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mBurstTaker:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mBurstModuleState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;->IDLE:Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;

    sget-object v4, Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;->RUNNING:Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;

    .line 110
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    new-instance v12, Lcom/android/camera/async/ConcurrentState;

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v12, v2}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 114
    .local v12, "remainingStorageBytesState":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Long;>;"
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/android/camera/session/CaptureSession$CaptureSessionCreator;->createAndStartEmpty(Landroid/net/Uri;)Lcom/android/camera/session/CaptureSession;

    move-result-object v6

    .line 115
    .local v6, "captureSession":Lcom/android/camera/session/CaptureSession;
    new-instance v2, Lcom/android/camera/burst/BurstFacadeImpl$1;

    move-object/from16 v0, p1

    invoke-direct {v2, p0, v12, v0}, Lcom/android/camera/burst/BurstFacadeImpl$1;-><init>(Lcom/android/camera/burst/BurstFacadeImpl;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/async/MainThread;)V

    invoke-interface {v6, v2}, Lcom/android/camera/session/CaptureSession;->registerImageSavedListener(Lcom/android/camera/session/CaptureSession$ImageSavedListener;)V

    .line 139
    iget-object v2, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mOrientationLockController:Lcom/android/camera/burst/OrientationLockController;

    invoke-interface {v2}, Lcom/android/camera/burst/OrientationLockController;->lockOrientation()V

    .line 142
    iget-object v2, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mReadyStateListener:Lcom/android/camera/burst/BurstReadyStateChangeListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/burst/BurstReadyStateChangeListener;->onBurstReadyStateChanged(Z)V

    .line 144
    sget-object v2, Lcom/android/camera/burst/BurstFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting burst. Device orientation: "

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

    .line 148
    new-instance v3, Lcom/android/camera/burst/BurstFacadeImpl$2;

    move-object/from16 v0, p1

    invoke-direct {v3, p0, v0, v6}, Lcom/android/camera/burst/BurstFacadeImpl$2;-><init>(Lcom/android/camera/burst/BurstFacadeImpl;Lcom/android/camera/async/MainThread;Lcom/android/camera/session/CaptureSession;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p3

    move-object/from16 v8, p4

    move/from16 v9, p6

    invoke-static/range {v2 .. v9}, Lcom/android/camera/burst/BurstControllerCreator;->create(Lcom/android/camera/burst/BurstFacade$BurstIntent;Lcom/android/camera/burst/BurstResultsListener;Landroid/view/Surface;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/session/CaptureSession;Lcom/android/camera/async/Lifetime;Lcom/android/camera/app/OrientationManager$DeviceOrientation;I)Lcom/android/camera/burst/BurstController;

    move-result-object v10

    .line 184
    .local v10, "burstController":Lcom/android/camera/burst/BurstController;
    invoke-virtual {p0}, Lcom/android/camera/burst/BurstFacadeImpl;->startBurstSound()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mBurstTaker:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/burst/BurstTaker;

    invoke-interface {v2, v10}, Lcom/android/camera/burst/BurstTaker;->startBurst(Lcom/android/camera/burst/BurstController;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    .end local v6    # "captureSession":Lcom/android/camera/session/CaptureSession;
    .end local v10    # "burstController":Lcom/android/camera/burst/BurstController;
    .end local v12    # "remainingStorageBytesState":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Long;>;"
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v13

    .line 201
    return-void

    .line 189
    .restart local v6    # "captureSession":Lcom/android/camera/session/CaptureSession;
    .restart local v10    # "burstController":Lcom/android/camera/burst/BurstController;
    .restart local v12    # "remainingStorageBytesState":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Long;>;"
    :catch_0
    move-exception v11

    .line 190
    .local v11, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/camera/burst/BurstFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start burst fail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/camera/burst/BurstFacadeImpl;->stopBurst()Z

    .line 192
    iget-object v2, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mBurstModuleState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;->STOPPING:Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;

    sget-object v4, Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;->IDLE:Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 194
    invoke-interface {v6}, Lcom/android/camera/session/CaptureSession;->cancel()V

    goto :goto_0

    .line 200
    .end local v6    # "captureSession":Lcom/android/camera/session/CaptureSession;
    .end local v10    # "burstController":Lcom/android/camera/burst/BurstController;
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v12    # "remainingStorageBytesState":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v2

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 197
    :cond_1
    :try_start_3
    sget-object v2, Lcom/android/camera/burst/BurstFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Cannot start burst."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public startBurstSound()V
    .locals 4

    .prologue
    .line 282
    iget-object v1, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    iget-boolean v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mShutterSoundEnabled:Z

    if-nez v0, :cond_0

    monitor-exit v1

    .line 301
    :goto_0
    return-void

    .line 285
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mBurstSoundLoaded:Z

    if-nez v0, :cond_2

    .line 286
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mBurstSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v2, 0x7f070006

    invoke-virtual {v0, v2}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mBurstSoundLoaded:Z

    .line 288
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mBurstSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v2, 0x7f070006

    new-instance v3, Lcom/android/camera/burst/BurstFacadeImpl$4;

    invoke-direct {v3, p0}, Lcom/android/camera/burst/BurstFacadeImpl$4;-><init>(Lcom/android/camera/burst/BurstFacadeImpl;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/SoundPlayer;->scheduleTaskWhenLoaded(ILjava/lang/Runnable;)V

    .line 300
    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 297
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mBurstSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v2, 0x7f070006

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/SoundPlayer;->startRepeat(IF)I

    move-result v0

    iput v0, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mBurstSoundStreamId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public stopBurst()Z
    .locals 5

    .prologue
    .line 205
    const/4 v1, 0x0

    .line 206
    .local v1, "wasStopped":Z
    iget-object v2, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mBurstModuleState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;->RUNNING:Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;

    sget-object v4, Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;->STOPPING:Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 208
    const/4 v1, 0x1

    .line 209
    iget-object v2, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mBurstTaker:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 210
    iget-object v2, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mBurstTaker:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/burst/BurstTaker;

    invoke-interface {v2}, Lcom/android/camera/burst/BurstTaker;->stopBurst()V

    .line 213
    :cond_0
    new-instance v0, Lcom/android/camera/burst/BurstFacadeImpl$3;

    invoke-direct {v0, p0}, Lcom/android/camera/burst/BurstFacadeImpl$3;-><init>(Lcom/android/camera/burst/BurstFacadeImpl;)V

    .line 220
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/camera/async/MainThread;->isMainThread()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 221
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 226
    .end local v0    # "runnable":Ljava/lang/Runnable;
    :cond_1
    :goto_0
    return v1

    .line 223
    .restart local v0    # "runnable":Ljava/lang/Runnable;
    :cond_2
    iget-object v2, p0, Lcom/android/camera/burst/BurstFacadeImpl;->mMainThread:Lcom/android/camera/async/MainThread;

    invoke-virtual {v2, v0}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
