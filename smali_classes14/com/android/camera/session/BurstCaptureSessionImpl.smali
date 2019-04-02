.class public Lcom/android/camera/session/BurstCaptureSessionImpl;
.super Ljava/lang/Object;
.source "BurstCaptureSessionImpl.java"

# interfaces
.implements Lcom/android/camera/session/CaptureSession;


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mBurstImgValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mBurstShotCount:J

.field private mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

.field private final mCaptureSessionStatsCollector:Lcom/android/camera/stats/CaptureSessionStatsCollector;

.field private final mFolderPath:Ljava/lang/String;

.field private mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mImageSavedListener:Lcom/android/camera/session/CaptureSession$ImageSavedListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile mIsFinished:Z

.field private mIsImageHWRotate:Z

.field private final mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLocation:Landroid/location/Location;

.field private final mMediaSaver:Lcom/android/camera/app/MediaSaver;

.field private mPictureSize:Lcom/android/camera/util/Size;

.field private final mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

.field private final mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

.field private final mSessionStartMillis:J

.field private final mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "BurstCapSessionImpl"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/session/BurstCaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/SessionNotifier;Lcom/android/camera/session/CaptureSessionManager$SessionListener;Lcom/android/camera/app/MediaSaver;)V
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "sessionStartMillis"    # J
    .param p4, "location"    # Landroid/location/Location;
    .param p5, "sessionNotifier"    # Lcom/android/camera/session/SessionNotifier;
    .param p6, "sessionListener"    # Lcom/android/camera/session/CaptureSessionManager$SessionListener;
    .param p7, "mediaSaver"    # Lcom/android/camera/app/MediaSaver;

    .prologue
    const/4 v4, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lcom/android/camera/stats/CaptureSessionStatsCollector;

    invoke-direct {v0}, Lcom/android/camera/stats/CaptureSessionStatsCollector;-><init>()V

    iput-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mCaptureSessionStatsCollector:Lcom/android/camera/stats/CaptureSessionStatsCollector;

    .line 83
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mBurstShotCount:J

    .line 91
    iput-boolean v4, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mIsImageHWRotate:Z

    .line 112
    iput-object p1, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mTitle:Ljava/lang/String;

    .line 113
    iput-wide p2, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mSessionStartMillis:J

    .line 114
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->instance()Lcom/android/camera/util/CameraUtil;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mSessionStartMillis:J

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/util/CameraUtil;->createBurstFolderName(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mFolderPath:Ljava/lang/String;

    .line 115
    iput-object p4, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mLocation:Landroid/location/Location;

    .line 116
    iput-object p5, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    .line 117
    iput-object p6, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .line 118
    iput-object p7, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    .line 119
    iput-boolean v4, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mIsFinished:Z

    .line 120
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/session/BurstCaptureSessionImpl;Landroid/content/ContentValues;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/session/BurstCaptureSessionImpl;
    .param p1, "x1"    # Landroid/content/ContentValues;
    .param p2, "x2"    # Lcom/google/common/util/concurrent/SettableFuture;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/camera/session/BurstCaptureSessionImpl;->insertMediaToMediaStore(Landroid/content/ContentValues;Lcom/google/common/util/concurrent/SettableFuture;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/session/BurstCaptureSessionImpl;)Lcom/android/camera/session/CaptureSession$ImageSavedListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/BurstCaptureSessionImpl;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mImageSavedListener:Lcom/android/camera/session/CaptureSession$ImageSavedListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/session/BurstCaptureSessionImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/BurstCaptureSessionImpl;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mIsFinished:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/session/BurstCaptureSessionImpl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/BurstCaptureSessionImpl;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mBurstImgValues:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$408(Lcom/android/camera/session/BurstCaptureSessionImpl;)J
    .locals 4
    .param p0, "x0"    # Lcom/android/camera/session/BurstCaptureSessionImpl;

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mBurstShotCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mBurstShotCount:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/camera/session/BurstCaptureSessionImpl;)Lcom/android/camera/session/SessionNotifier;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/BurstCaptureSessionImpl;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/session/BurstCaptureSessionImpl;)Lcom/android/camera/session/CaptureSessionManager$SessionListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/BurstCaptureSessionImpl;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    return-object v0
.end method

.method private bulkInsertMediaToMediaStore([Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "values"    # [Landroid/content/ContentValues;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    new-instance v1, Lcom/android/camera/session/BurstCaptureSessionImpl$5;

    invoke-direct {v1, p0}, Lcom/android/camera/session/BurstCaptureSessionImpl$5;-><init>(Lcom/android/camera/session/BurstCaptureSessionImpl;)V

    invoke-interface {v0, p1, v1}, Lcom/android/camera/app/MediaSaver;->bulkInsertToMediaStore([Landroid/content/ContentValues;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V

    .line 414
    :cond_0
    return-void
.end method

.method private insertMediaToMediaStore(Landroid/content/ContentValues;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2    # Lcom/google/common/util/concurrent/SettableFuture;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/net/Uri;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 374
    .local p2, "future":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/common/base/Optional<Landroid/net/Uri;>;>;"
    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    new-instance v1, Lcom/android/camera/session/BurstCaptureSessionImpl$4;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/session/BurstCaptureSessionImpl$4;-><init>(Lcom/android/camera/session/BurstCaptureSessionImpl;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-interface {v0, p1, v1}, Lcom/android/camera/app/MediaSaver;->insertToMediaStore(Landroid/content/ContentValues;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V

    .line 393
    :cond_0
    return-void
.end method

.method private onCaptureIndicatorUpdate(Landroid/graphics/Bitmap;I)V
    .locals 6
    .param p1, "indicator"    # Landroid/graphics/Bitmap;
    .param p2, "rotationDegrees"    # I

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    sget-object v1, Lcom/android/camera/session/CaptureSession;->BURST_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-object v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/session/SessionNotifier;->notifySessionCaptureIndicatorAvailable(Landroid/net/Uri;Landroid/graphics/Bitmap;IZLcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 370
    return-void
.end method


# virtual methods
.method public addProgressListener(Lcom/android/camera/session/CaptureSession$ProgressListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ProgressListener;

    .prologue
    .line 358
    return-void
.end method

.method public declared-synchronized cancel()V
    .locals 2

    .prologue
    .line 222
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onCaptureCanceled()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :cond_0
    monitor-exit p0

    return-void

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public finalizeSession()V
    .locals 0

    .prologue
    .line 366
    return-void
.end method

.method public finish()V
    .locals 7

    .prologue
    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mIsFinished:Z

    .line 323
    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mBurstImgValues:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mBurstImgValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [Landroid/content/ContentValues;

    .line 325
    .local v6, "allValues":[Landroid/content/ContentValues;
    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mBurstImgValues:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 326
    invoke-direct {p0, v6}, Lcom/android/camera/session/BurstCaptureSessionImpl;->bulkInsertMediaToMediaStore([Landroid/content/ContentValues;)V

    .line 327
    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mBurstImgValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mBurstImgValues:Ljava/util/List;

    .line 330
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-virtual {v0, v1}, Lcom/android/camera/stats/UsageStatistics;->getCurrentResolution(Lcom/android/camera/util/Size;)Ljava/lang/String;

    move-result-object v2

    .line 331
    .local v2, "pictureResolutionData":Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mBurstShotCount:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/stats/UsageStatistics;->photoCaptureDoneEvent(ILjava/lang/String;ZJ)V

    .line 334
    .end local v2    # "pictureResolutionData":Ljava/lang/String;
    .end local v6    # "allValues":[Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method public finishWithFailure(IZ)V
    .locals 3
    .param p1, "failureMessageId"    # I
    .param p2, "removeFromFilmstrip"    # Z

    .prologue
    .line 352
    sget-object v0, Lcom/android/camera/session/BurstCaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishWithFailure : failureMessageId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0}, Lcom/android/camera/session/BurstCaptureSessionImpl;->finish()V

    .line 354
    return-void
.end method

.method public getBrandLogoViewData()Lcom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/brandlogo/BrandLogoViewData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 535
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCaptureSessionForMap()Lcom/android/camera/session/CaptureSession;
    .locals 1

    .prologue
    .line 418
    new-instance v0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;

    invoke-direct {v0, p0}, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;-><init>(Lcom/android/camera/session/CaptureSession;)V

    return-object v0
.end method

.method public getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mCaptureSessionStatsCollector:Lcom/android/camera/stats/CaptureSessionStatsCollector;

    return-object v0
.end method

.method public getExternalUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getPrevPhoto()[B
    .locals 1

    .prologue
    .line 511
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1

    .prologue
    .line 160
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized getProgressMessageId()I
    .locals 1

    .prologue
    .line 169
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public getSceneMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 526
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTempOutputFile()Lcom/android/camera/session/TemporarySessionFile;
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoRecordListener()Lcom/android/camera/session/VideoRecordListener;
    .locals 1

    .prologue
    .line 446
    const/4 v0, 0x0

    return-object v0
.end method

.method public isCaptureIntent()Z
    .locals 1

    .prologue
    .line 555
    const/4 v0, 0x0

    return v0
.end method

.method public isDisableSessionReturnData()Z
    .locals 1

    .prologue
    .line 491
    const/4 v0, 0x0

    return v0
.end method

.method public isFirstShotInTwiceShot()Z
    .locals 1

    .prologue
    .line 530
    const/4 v0, 0x0

    return v0
.end method

.method public isForceHideThumbnail()Z
    .locals 1

    .prologue
    .line 456
    const/4 v0, 0x0

    return v0
.end method

.method public isImageHWRotate()Z
    .locals 1

    .prologue
    .line 466
    iget-boolean v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mIsImageHWRotate:Z

    return v0
.end method

.method public isMainCamera()Z
    .locals 1

    .prologue
    .line 501
    const/4 v0, 0x0

    return v0
.end method

.method public isPreviewOnly()Z
    .locals 1

    .prologue
    .line 481
    const/4 v0, 0x0

    return v0
.end method

.method public needMirror()Z
    .locals 1

    .prologue
    .line 540
    const/4 v0, 0x0

    return v0
.end method

.method public onCaptureFinish()V
    .locals 0

    .prologue
    .line 546
    return-void
.end method

.method public onCaptureStart()V
    .locals 0

    .prologue
    .line 551
    return-void
.end method

.method public prepareImageTitle()Lcom/google/common/base/Optional;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 423
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->instance()Lcom/android/camera/util/CameraUtil;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mSessionStartMillis:J

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/util/CameraUtil;->createBurstJpegName(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public registerImageSavedListener(Lcom/android/camera/session/CaptureSession$ImageSavedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ImageSavedListener;

    .prologue
    .line 436
    iput-object p1, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mImageSavedListener:Lcom/android/camera/session/CaptureSession$ImageSavedListener;

    .line 437
    return-void
.end method

.method public removeProgressListener(Lcom/android/camera/session/CaptureSession$ProgressListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ProgressListener;

    .prologue
    .line 362
    return-void
.end method

.method public saveAndFinish(Lcom/android/camera/mpo/Bokeh_Info;Lcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1, "data"    # Lcom/android/camera/mpo/Bokeh_Info;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "orientation"    # I
    .param p6, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/mpo/Bokeh_Info;",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;III",
            "Lcom/android/camera/exif/ExifInterface;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 256
    .local p2, "imageName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized saveAndFinish([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 14
    .param p1, "data"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "orientation"    # I
    .param p6, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;III",
            "Lcom/android/camera/exif/ExifInterface;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 232
    .local p2, "imageName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v13

    .line 234
    .local v13, "futureResult":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/common/base/Optional<Landroid/net/Uri;>;>;"
    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onProcessingComplete()V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 239
    array-length v12, p1

    .line 240
    .local v12, "dataSize":I
    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    invoke-virtual/range {p2 .. p2}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mFolderPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mLocation:Landroid/location/Location;

    new-instance v9, Lcom/android/camera/session/BurstCaptureSessionImpl$1;

    invoke-direct {v9, p0, v13, v12}, Lcom/android/camera/session/BurstCaptureSessionImpl$1;-><init>(Lcom/android/camera/session/BurstCaptureSessionImpl;Lcom/google/common/util/concurrent/SettableFuture;I)V

    iget-wide v10, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mSessionStartMillis:J

    move-object v1, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-interface/range {v0 .. v11}, Lcom/android/camera/app/MediaSaver;->addBurstImage([BLjava/lang/String;Ljava/lang/String;Landroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnBurstMediaSavedListener;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    .end local v12    # "dataSize":I
    :goto_1
    monitor-exit p0

    return-object v13

    .line 240
    .restart local v12    # "dataSize":I
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->instance()Lcom/android/camera/util/CameraUtil;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mSessionStartMillis:J

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/util/CameraUtil;->createBurstJpegName(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 248
    .end local v12    # "dataSize":I
    :cond_2
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 232
    .end local v13    # "futureResult":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/common/base/Optional<Landroid/net/Uri;>;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public saveAndFinish([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 18
    .param p1, "data"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "orientation"    # I
    .param p6, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p7, "imageFormat"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;III",
            "Lcom/android/camera/exif/ExifInterface;",
            "I)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 261
    .local p2, "imageName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v17

    .line 262
    .local v17, "futureResult":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/common/base/Optional<Landroid/net/Uri;>;>;"
    const/16 v4, 0x11

    move/from16 v0, p7

    if-ne v0, v4, :cond_0

    .line 263
    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/android/camera/util/YuvToJpeg;->transByteData([BII)[B

    move-result-object p1

    .line 265
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v4, :cond_1

    .line 266
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v4}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onProcessingComplete()V

    .line 268
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 269
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    .line 270
    .local v16, "dataSize":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    invoke-virtual/range {p2 .. p2}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v6, v5

    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mFolderPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mLocation:Landroid/location/Location;

    new-instance v13, Lcom/android/camera/session/BurstCaptureSessionImpl$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v16

    invoke-direct {v13, v0, v1, v2}, Lcom/android/camera/session/BurstCaptureSessionImpl$2;-><init>(Lcom/android/camera/session/BurstCaptureSessionImpl;Lcom/google/common/util/concurrent/SettableFuture;I)V

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mSessionStartMillis:J

    move-object/from16 v5, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    invoke-interface/range {v4 .. v15}, Lcom/android/camera/app/MediaSaver;->addBurstImage([BLjava/lang/String;Ljava/lang/String;Landroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnBurstMediaSavedListener;J)V

    .line 280
    .end local v16    # "dataSize":I
    :goto_1
    return-object v17

    .line 270
    .restart local v16    # "dataSize":I
    :cond_2
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->instance()Lcom/android/camera/util/CameraUtil;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mSessionStartMillis:J

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/util/CameraUtil;->createBurstJpegName(J)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 278
    .end local v16    # "dataSize":I
    :cond_3
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public saveBurstImage([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;)V
    .locals 13
    .param p1, "data"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "orientation"    # I
    .param p6, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;III",
            "Lcom/android/camera/exif/ExifInterface;",
            ")V"
        }
    .end annotation

    .prologue
    .line 286
    .local p2, "imageName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onProcessingComplete()V

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    array-length v12, p1

    .line 291
    .local v12, "dataSize":I
    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    invoke-virtual {p2}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mFolderPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mLocation:Landroid/location/Location;

    new-instance v9, Lcom/android/camera/session/BurstCaptureSessionImpl$3;

    invoke-direct {v9, p0, v12}, Lcom/android/camera/session/BurstCaptureSessionImpl$3;-><init>(Lcom/android/camera/session/BurstCaptureSessionImpl;I)V

    iget-wide v10, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mSessionStartMillis:J

    move-object v1, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-interface/range {v0 .. v11}, Lcom/android/camera/app/MediaSaver;->addBurstImage([BLjava/lang/String;Ljava/lang/String;Landroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnBurstMediaSavedListener;J)V

    .line 304
    .end local v12    # "dataSize":I
    :cond_1
    return-void

    .line 291
    .restart local v12    # "dataSize":I
    :cond_2
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->instance()Lcom/android/camera/util/CameraUtil;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mSessionStartMillis:J

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/util/CameraUtil;->createBurstJpegName(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public savePostProcessImage([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;Landroid/graphics/Bitmap;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "data"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "orientation"    # I
    .param p6, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p7, "postProcessImage"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;III",
            "Lcom/android/camera/exif/ExifInterface;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 308
    .local p2, "imageName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 309
    .local v0, "futureResult":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/common/base/Optional<Landroid/net/Uri;>;>;"
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 310
    return-object v0
.end method

.method public saveRawImage([BLcom/google/common/base/Optional;II)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "data"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;II)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 315
    .local p2, "imageName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 316
    .local v0, "futureResult":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/common/base/Optional<Ljava/lang/String;>;>;"
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 317
    return-object v0
.end method

.method public setBrandLogoViewData(Lcom/google/common/base/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/brandlogo/BrandLogoViewData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 433
    .local p1, "brandLogoViewDataOptional":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/android/camera/brandlogo/BrandLogoViewData;>;"
    return-void
.end method

.method public setCaptureMode(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V
    .locals 0
    .param p1, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .prologue
    .line 472
    return-void
.end method

.method public setDisableSessionReturnData(Z)V
    .locals 0
    .param p1, "isDisable"    # Z

    .prologue
    .line 487
    return-void
.end method

.method public setForceHideThumbnail(Z)V
    .locals 0
    .param p1, "hideThumbnail"    # Z

    .prologue
    .line 452
    return-void
.end method

.method public setImageHWRotate(Z)V
    .locals 0
    .param p1, "hw_do_rotate"    # Z

    .prologue
    .line 461
    iput-boolean p1, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mIsImageHWRotate:Z

    .line 462
    return-void
.end method

.method public setIsCaptureIntent(Z)V
    .locals 0
    .param p1, "isCaptureIntent"    # Z

    .prologue
    .line 561
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mLocation:Landroid/location/Location;

    .line 156
    return-void
.end method

.method public setMainCamera(Z)V
    .locals 0
    .param p1, "isMainCamera"    # Z

    .prologue
    .line 497
    return-void
.end method

.method public setMirror(Z)V
    .locals 0
    .param p1, "mirror"    # Z

    .prologue
    .line 517
    return-void
.end method

.method public setPrevPhoto([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 507
    return-void
.end method

.method public setPreviewOnly(Z)V
    .locals 0
    .param p1, "previewOnly"    # Z

    .prologue
    .line 477
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 0
    .param p1, "percent"    # I

    .prologue
    .line 165
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setProgressMessage(I)V
    .locals 0
    .param p1, "messageId"    # I

    .prologue
    .line 174
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public setSceneMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "scene"    # Ljava/lang/String;

    .prologue
    .line 522
    return-void
.end method

.method public setWatermarkViewData(Lcom/google/common/base/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/watermark/WatermarkViewData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 429
    .local p1, "watermarkViewDataOptional":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/android/camera/watermark/WatermarkViewData;>;"
    return-void
.end method

.method public declared-synchronized startEmpty(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Lcom/android/camera/util/Size;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "pictureSize"    # Lcom/android/camera/util/Size;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mIsFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 203
    :goto_0
    monitor-exit p0

    return-void

    .line 195
    :cond_0
    if-eqz p1, :cond_1

    .line 196
    :try_start_1
    iput-object p1, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    .line 197
    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onCaptureStarted()V

    .line 199
    :cond_1
    iput-object p2, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mPictureSize:Lcom/android/camera/util/Size;

    .line 200
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mBurstShotCount:J

    .line 201
    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mBurstImgValues:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startSession(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "placeholder"    # Landroid/graphics/Bitmap;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3, "progressMessageId"    # I

    .prologue
    .line 208
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized startSession(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Landroid/net/Uri;I)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "uri"    # Landroid/net/Uri;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3, "progressMessageId"    # I

    .prologue
    .line 218
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized startSession(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;[BI)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "placeholder"    # [B
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3, "progressMessageId"    # I

    .prologue
    .line 213
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public unregisterImageSavedListener()V
    .locals 1

    .prologue
    .line 441
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mImageSavedListener:Lcom/android/camera/session/CaptureSession$ImageSavedListener;

    .line 442
    return-void
.end method

.method public updateCaptureIndicatorThumbnail(Landroid/graphics/Bitmap;I)V
    .locals 1
    .param p1, "indicator"    # Landroid/graphics/Bitmap;
    .param p2, "rotationDegrees"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/camera/session/BurstCaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onTinyThumb()V

    .line 185
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/camera/session/BurstCaptureSessionImpl;->onCaptureIndicatorUpdate(Landroid/graphics/Bitmap;I)V

    .line 186
    return-void
.end method

.method public updatePreview()V
    .locals 0

    .prologue
    .line 348
    return-void
.end method

.method public updateThumbnail(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 178
    return-void
.end method
