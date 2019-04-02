.class public Lcom/android/camera/session/PanoCaptureSessionImpl;
.super Ljava/lang/Object;
.source "PanoCaptureSessionImpl.java"

# interfaces
.implements Lcom/android/camera/session/CaptureSession;


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mCaptureSessionStatsCollector:Lcom/android/camera/stats/CaptureSessionStatsCollector;

.field private mContentUri:Landroid/net/Uri;

.field private mHasPreviouslySetProgress:Z

.field private mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile mIsFinished:Z

.field private mLocation:Landroid/location/Location;

.field private final mMediaSaver:Lcom/android/camera/app/MediaSaver;

.field private mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

.field private final mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

.field private final mProgressListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/camera/session/CaptureSession$ProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressMessageId:I

.field private mProgressPercent:I

.field private mSaveImgLock:Ljava/lang/Object;

.field private final mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

.field private final mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

.field private final mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

.field private final mSessionStartMillis:J

.field private final mTitle:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "PanoCapSessionImpl"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Lcom/android/camera/session/CaptureSessionManager$SessionListener;Lcom/android/camera/session/PlaceholderManager;Lcom/android/camera/app/MediaSaver;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "sessionStartMillis"    # J
    .param p4, "location"    # Landroid/location/Location;
    .param p5, "captureSessionManager"    # Lcom/android/camera/session/CaptureSessionManager;
    .param p6, "sessionNotifier"    # Lcom/android/camera/session/SessionNotifier;
    .param p7, "sessionListener"    # Lcom/android/camera/session/CaptureSessionManager$SessionListener;
    .param p8, "placeholderManager"    # Lcom/android/camera/session/PlaceholderManager;
    .param p9, "mediaSaver"    # Lcom/android/camera/app/MediaSaver;

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mProgressListeners:Ljava/util/HashSet;

    .line 89
    iput v1, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mProgressPercent:I

    .line 98
    new-instance v0, Lcom/android/camera/stats/CaptureSessionStatsCollector;

    invoke-direct {v0}, Lcom/android/camera/stats/CaptureSessionStatsCollector;-><init>()V

    iput-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mCaptureSessionStatsCollector:Lcom/android/camera/stats/CaptureSessionStatsCollector;

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mSaveImgLock:Ljava/lang/Object;

    .line 105
    iput-boolean v1, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mHasPreviouslySetProgress:Z

    .line 125
    iput-object p1, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mTitle:Ljava/lang/String;

    .line 126
    iput-wide p2, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mSessionStartMillis:J

    .line 127
    iput-object p4, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mLocation:Landroid/location/Location;

    .line 128
    iput-object p5, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    .line 129
    iput-object p6, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    .line 130
    iput-object p7, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .line 131
    iput-object p8, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    .line 132
    iput-object p9, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    .line 133
    iput-boolean v1, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mIsFinished:Z

    .line 134
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/session/PanoCaptureSessionImpl;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/session/PanoCaptureSessionImpl;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mContentUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/session/PanoCaptureSessionImpl;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/PanoCaptureSessionImpl;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/session/PanoCaptureSessionImpl;)Lcom/android/camera/session/CaptureSessionManager$SessionListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/PanoCaptureSessionImpl;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/session/PanoCaptureSessionImpl;)Lcom/android/camera/session/SessionNotifier;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/PanoCaptureSessionImpl;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/session/PanoCaptureSessionImpl;)Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/PanoCaptureSessionImpl;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/session/PanoCaptureSessionImpl;)Lcom/android/camera/session/CaptureSessionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/PanoCaptureSessionImpl;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    return-object v0
.end method

.method static synthetic access$600()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/session/PanoCaptureSessionImpl;)Lcom/android/camera/app/MediaSaver;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/PanoCaptureSessionImpl;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    return-object v0
.end method

.method private onCaptureIndicatorUpdate(Landroid/graphics/Bitmap;I)V
    .locals 6
    .param p1, "indicator"    # Landroid/graphics/Bitmap;
    .param p2, "rotationDegrees"    # I

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mUri:Landroid/net/Uri;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-object v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/session/SessionNotifier;->notifySessionCaptureIndicatorAvailable(Landroid/net/Uri;Landroid/graphics/Bitmap;IZLcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 544
    return-void
.end method


# virtual methods
.method public addProgressListener(Lcom/android/camera/session/CaptureSession$ProgressListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ProgressListener;

    .prologue
    .line 525
    iget v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mProgressMessageId:I

    if-lez v0, :cond_0

    .line 526
    iget v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mProgressMessageId:I

    invoke-interface {p1, v0}, Lcom/android/camera/session/CaptureSession$ProgressListener;->onStatusMessageChanged(I)V

    .line 528
    :cond_0
    iget v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mProgressPercent:I

    invoke-interface {p1, v0}, Lcom/android/camera/session/CaptureSession$ProgressListener;->onProgressChanged(I)V

    .line 529
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mProgressListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 530
    return-void
.end method

.method public declared-synchronized cancel()V
    .locals 6

    .prologue
    .line 264
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "0"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/stats/UsageStatistics;->photoCaptureDoneEvent(ILjava/lang/String;ZJ)V

    .line 266
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    iget-object v1, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/android/camera/session/CaptureSessionManager;->removeSession(Landroid/net/Uri;)Lcom/android/camera/session/CaptureSession;

    .line 268
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mUri:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/session/SessionNotifier;->notifyTaskCanceled(Landroid/net/Uri;ZLcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 269
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onCaptureCanceled()V

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    iget-object v1, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    invoke-virtual {v0, v1}, Lcom/android/camera/session/PlaceholderManager;->removePlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;)V

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :cond_1
    monitor-exit p0

    return-void

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public finalizeSession()V
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    iget-object v1, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    invoke-virtual {v0, v1}, Lcom/android/camera/session/PlaceholderManager;->removePlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;)V

    .line 540
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 489
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mIsFinished:Z

    .line 490
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    if-nez v0, :cond_0

    .line 491
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call finish without calling startSession first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 494
    :cond_0
    return-void
.end method

.method public finishWithFailure(IZ)V
    .locals 6
    .param p1, "failureMessageId"    # I
    .param p2, "removeFromFilmstrip"    # Z

    .prologue
    const/4 v4, 0x1

    .line 512
    sget-object v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 513
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    if-nez v0, :cond_0

    .line 514
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call finish without calling startSession first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :cond_0
    iput-boolean v4, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mIsFinished:Z

    .line 518
    iput p1, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mProgressMessageId:I

    .line 519
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    iget-object v1, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mUri:Landroid/net/Uri;

    invoke-interface {v0, v1, p1}, Lcom/android/camera/session/CaptureSessionManager;->putErrorMessage(Landroid/net/Uri;I)V

    .line 520
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/session/SessionNotifier;->notifyTaskFailed(Landroid/net/Uri;IZZLcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 521
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
    .line 662
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCaptureSessionForMap()Lcom/android/camera/session/CaptureSession;
    .locals 1

    .prologue
    .line 548
    new-instance v0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;

    invoke-direct {v0, p0}, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;-><init>(Lcom/android/camera/session/CaptureSession;)V

    return-object v0
.end method

.method public getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mCaptureSessionStatsCollector:Lcom/android/camera/stats/CaptureSessionStatsCollector;

    return-object v0
.end method

.method public getExternalUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getPrevPhoto()[B
    .locals 1

    .prologue
    .line 637
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mProgressPercent:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgressMessageId()I
    .locals 1

    .prologue
    .line 192
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mProgressMessageId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSceneMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 652
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTempOutputFile()Lcom/android/camera/session/TemporarySessionFile;
    .locals 1

    .prologue
    .line 498
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getVideoFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoRecordListener()Lcom/android/camera/session/VideoRecordListener;
    .locals 1

    .prologue
    .line 576
    const/4 v0, 0x0

    return-object v0
.end method

.method public isCaptureIntent()Z
    .locals 1

    .prologue
    .line 682
    const/4 v0, 0x0

    return v0
.end method

.method public isDisableSessionReturnData()Z
    .locals 1

    .prologue
    .line 617
    const/4 v0, 0x0

    return v0
.end method

.method public isFirstShotInTwiceShot()Z
    .locals 1

    .prologue
    .line 657
    const/4 v0, 0x0

    return v0
.end method

.method public isForceHideThumbnail()Z
    .locals 1

    .prologue
    .line 586
    const/4 v0, 0x0

    return v0
.end method

.method public isImageHWRotate()Z
    .locals 1

    .prologue
    .line 596
    const/4 v0, 0x0

    return v0
.end method

.method public isMainCamera()Z
    .locals 1

    .prologue
    .line 627
    const/4 v0, 0x0

    return v0
.end method

.method public isPreviewOnly()Z
    .locals 1

    .prologue
    .line 607
    const/4 v0, 0x0

    return v0
.end method

.method public needMirror()Z
    .locals 1

    .prologue
    .line 667
    const/4 v0, 0x0

    return v0
.end method

.method public onCaptureFinish()V
    .locals 0

    .prologue
    .line 673
    return-void
.end method

.method public onCaptureStart()V
    .locals 0

    .prologue
    .line 678
    return-void
.end method

.method public prepareImageTitle()Lcom/google/common/base/Optional;
    .locals 1
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
    .line 553
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public registerImageSavedListener(Lcom/android/camera/session/CaptureSession$ImageSavedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ImageSavedListener;

    .prologue
    .line 567
    return-void
.end method

.method public removeProgressListener(Lcom/android/camera/session/CaptureSession$ProgressListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ProgressListener;

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mProgressListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 535
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
    .line 345
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
    .line 283
    .local p2, "imageName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v13

    .line 285
    .local v13, "futureResult":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/common/base/Optional<Landroid/net/Uri;>;>;"
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onProcessingComplete()V

    .line 288
    :cond_0
    sget-object v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "saveAndFinish"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 290
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "0"

    const/4 v3, 0x0

    const-wide/16 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/stats/UsageStatistics;->photoCaptureDoneEvent(ILjava/lang/String;ZJ)V

    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mIsFinished:Z

    .line 293
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    if-nez v0, :cond_2

    .line 294
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mContentUri:Landroid/net/Uri;

    .line 295
    iget-object v1, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    iget-object v3, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mTitle:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mSessionStartMillis:J

    iget-object v6, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mLocation:Landroid/location/Location;

    new-instance v11, Lcom/android/camera/session/PanoCaptureSessionImpl$1;

    invoke-direct {v11, p0, v13}, Lcom/android/camera/session/PanoCaptureSessionImpl$1;-><init>(Lcom/android/camera/session/PanoCaptureSessionImpl;Lcom/google/common/util/concurrent/SettableFuture;)V

    move-object v2, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    invoke-interface/range {v1 .. v11}, Lcom/android/camera/app/MediaSaver;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v13

    .line 320
    :cond_2
    :try_start_1
    iget-object v9, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mSaveImgLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    iget-object v1, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    iget-object v2, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mLocation:Landroid/location/Location;

    const-string v8, "image/jpeg"

    move/from16 v3, p5

    move-object/from16 v4, p6

    move-object v5, p1

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/session/PlaceholderManager;->finishPlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;Landroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mContentUri:Landroid/net/Uri;

    .line 323
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v0, v1, v2}, Lcom/android/camera/session/SessionNotifier;->notifyTaskDone(Landroid/net/Uri;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 324
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 325
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 327
    :try_start_3
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onCapturePersisted()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 330
    :catch_0
    move-exception v12

    .line 331
    .local v12, "e":Ljava/io/IOException;
    :try_start_4
    sget-object v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Could not write file"

    invoke-static {v0, v1, v12}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 332
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v0, :cond_3

    .line 333
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onCaptureFailed()V

    .line 335
    :cond_3
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/session/PanoCaptureSessionImpl;->finishWithFailure(IZ)V

    .line 336
    invoke-virtual {v13, v12}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 283
    .end local v12    # "e":Ljava/io/IOException;
    .end local v13    # "futureResult":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/common/base/Optional<Landroid/net/Uri;>;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 325
    .restart local v13    # "futureResult":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/common/base/Optional<Landroid/net/Uri;>;>;"
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
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
    .line 350
    .local p2, "imageName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v17

    .line 351
    .local v17, "futureResult":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/common/base/Optional<Landroid/net/Uri;>;>;"
    const/16 v4, 0x11

    move/from16 v0, p7

    if-ne v0, v4, :cond_0

    .line 352
    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/android/camera/util/YuvToJpeg;->transByteData([BII)[B

    move-result-object p1

    .line 354
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v4, :cond_1

    .line 355
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v4}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onProcessingComplete()V

    .line 357
    :cond_1
    sget-object v4, Lcom/android/camera/session/PanoCaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "saveAndFinish"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 359
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v4

    const/4 v5, 0x3

    const-string v6, "0"

    const/4 v7, 0x0

    const-wide/16 v8, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/android/camera/stats/UsageStatistics;->photoCaptureDoneEvent(ILjava/lang/String;ZJ)V

    .line 361
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mIsFinished:Z

    .line 362
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    if-nez v4, :cond_3

    .line 363
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mContentUri:Landroid/net/Uri;

    .line 364
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mSessionStartMillis:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mLocation:Landroid/location/Location;

    new-instance v15, Lcom/android/camera/session/PanoCaptureSessionImpl$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v15, v0, v1}, Lcom/android/camera/session/PanoCaptureSessionImpl$2;-><init>(Lcom/android/camera/session/PanoCaptureSessionImpl;Lcom/google/common/util/concurrent/SettableFuture;)V

    move-object/from16 v6, p1

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move-object/from16 v14, p6

    invoke-interface/range {v5 .. v15}, Lcom/android/camera/app/MediaSaver;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V

    .line 408
    :cond_2
    :goto_0
    return-object v17

    .line 389
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mSaveImgLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mLocation:Landroid/location/Location;

    const-string v12, "image/jpeg"

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p1

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-virtual/range {v4 .. v12}, Lcom/android/camera/session/PlaceholderManager;->finishPlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;Landroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mContentUri:Landroid/net/Uri;

    .line 392
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v4, v5, v6}, Lcom/android/camera/session/SessionNotifier;->notifyTaskDone(Landroid/net/Uri;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 393
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mUri:Landroid/net/Uri;

    invoke-static {v4}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 394
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 396
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v4, :cond_2

    .line 397
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v4}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onCapturePersisted()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 399
    :catch_0
    move-exception v16

    .line 400
    .local v16, "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/camera/session/PanoCaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Could not write file"

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 401
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v4, :cond_4

    .line 402
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v4}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onCaptureFailed()V

    .line 404
    :cond_4
    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/camera/session/PanoCaptureSessionImpl;->finishWithFailure(IZ)V

    .line 405
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 394
    .end local v16    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public saveBurstImage([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;)V
    .locals 1
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
    .line 413
    .local p2, "imageName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onProcessingComplete()V

    .line 418
    :cond_0
    return-void
.end method

.method public savePostProcessImage([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;Landroid/graphics/Bitmap;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 21
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
    .line 422
    .local p2, "imageName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v19

    .line 424
    .local v19, "futureResult":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/common/base/Optional<Landroid/net/Uri;>;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v4, :cond_0

    .line 425
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v4}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onPostProcessImage()V

    .line 429
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mUri:Landroid/net/Uri;

    invoke-interface {v4, v5}, Lcom/android/camera/session/CaptureSessionManager;->isSessionAlive(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 430
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    if-nez v4, :cond_2

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mSaveImgLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 432
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mContentUri:Landroid/net/Uri;

    if-eqz v4, :cond_1

    .line 433
    sget-object v4, Lcom/android/camera/session/PanoCaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "final image had saved, ignore here."

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 434
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 451
    :goto_0
    monitor-exit v20

    .line 477
    :goto_1
    return-object v19

    .line 436
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mContentUri:Landroid/net/Uri;

    .line 437
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mSessionStartMillis:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mLocation:Landroid/location/Location;

    const-string v16, "image/fake"

    new-instance v17, Lcom/android/camera/session/PanoCaptureSessionImpl$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/session/PanoCaptureSessionImpl$3;-><init>(Lcom/android/camera/session/PanoCaptureSessionImpl;Landroid/graphics/Bitmap;Lcom/google/common/util/concurrent/SettableFuture;)V

    move/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p1

    move/from16 v14, p3

    move/from16 v15, p4

    invoke-interface/range {v5 .. v17}, Lcom/android/camera/app/MediaSaver;->updateImage(Landroid/net/Uri;Ljava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;Lcom/android/camera/app/MediaSaver$OnMediaUpdatedListener;)V

    goto :goto_0

    .line 451
    :catchall_0
    move-exception v4

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 454
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mSaveImgLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 455
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mContentUri:Landroid/net/Uri;

    if-eqz v4, :cond_3

    .line 456
    sget-object v4, Lcom/android/camera/session/PanoCaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "final image had saved, ignore here."

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 457
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 468
    :goto_2
    monitor-exit v13

    goto :goto_1

    :catchall_1
    move-exception v4

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 469
    :catch_0
    move-exception v18

    .line 470
    .local v18, "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/camera/session/PanoCaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Could not write file : "

    move-object/from16 v0, v18

    invoke-static {v4, v5, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 459
    .end local v18    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mLocation:Landroid/location/Location;

    const-string v12, "image/fake"

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p1

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-virtual/range {v4 .. v12}, Lcom/android/camera/session/PlaceholderManager;->updatePlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;Landroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mContentUri:Landroid/net/Uri;

    .line 460
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mUri:Landroid/net/Uri;

    invoke-interface {v4, v5}, Lcom/android/camera/session/CaptureSessionManager;->isSessionAlive(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 461
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-object/from16 v0, p7

    invoke-interface {v4, v5, v0, v6}, Lcom/android/camera/session/SessionNotifier;->notifyPostProcessImageDone(Landroid/net/Uri;Landroid/graphics/Bitmap;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 462
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mUri:Landroid/net/Uri;

    invoke-static {v4}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_2

    .line 464
    :cond_4
    sget-object v4, Lcom/android/camera/session/PanoCaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "session had been cancel after saving PostProcessImage, delete here."

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 465
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mContentUri:Landroid/net/Uri;

    invoke-interface {v4, v5}, Lcom/android/camera/app/MediaSaver;->deleteImageFromMediaStore(Landroid/net/Uri;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 474
    :cond_5
    sget-object v4, Lcom/android/camera/session/PanoCaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "session had been cancel before saving PostProcessImage, ignore here."

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 475
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto/16 :goto_1
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
    .line 482
    .local p2, "imageName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 483
    .local v0, "futureResult":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/common/base/Optional<Ljava/lang/String;>;>;"
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 484
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
    .line 563
    .local p1, "brandLogoViewDataOptional":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/android/camera/brandlogo/BrandLogoViewData;>;"
    return-void
.end method

.method public setCaptureMode(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V
    .locals 0
    .param p1, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .prologue
    .line 602
    return-void
.end method

.method public setDisableSessionReturnData(Z)V
    .locals 0
    .param p1, "isDisable"    # Z

    .prologue
    .line 613
    return-void
.end method

.method public setForceHideThumbnail(Z)V
    .locals 0
    .param p1, "hideThumbnail"    # Z

    .prologue
    .line 582
    return-void
.end method

.method public setImageHWRotate(Z)V
    .locals 0
    .param p1, "hw_do_rotate"    # Z

    .prologue
    .line 592
    return-void
.end method

.method public setIsCaptureIntent(Z)V
    .locals 0
    .param p1, "isCaptureIntent"    # Z

    .prologue
    .line 688
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mLocation:Landroid/location/Location;

    .line 169
    return-void
.end method

.method public setMainCamera(Z)V
    .locals 0
    .param p1, "isMainCamera"    # Z

    .prologue
    .line 623
    return-void
.end method

.method public setMirror(Z)V
    .locals 0
    .param p1, "mirror"    # Z

    .prologue
    .line 643
    return-void
.end method

.method public setPrevPhoto([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 633
    return-void
.end method

.method public setPreviewOnly(Z)V
    .locals 0
    .param p1, "previewOnly"    # Z

    .prologue
    .line 605
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 5
    .param p1, "percent"    # I

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mHasPreviouslySetProgress:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v1}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onProcessingStarted()V

    .line 180
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mHasPreviouslySetProgress:Z

    .line 183
    :cond_0
    iput p1, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mProgressPercent:I

    .line 184
    iget-object v1, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v2, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mUri:Landroid/net/Uri;

    iget v3, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mProgressPercent:I

    iget-object v4, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/camera/session/SessionNotifier;->notifyTaskProgress(Landroid/net/Uri;ILcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 185
    iget-object v1, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mProgressListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/session/CaptureSession$ProgressListener;

    .line 186
    .local v0, "listener":Lcom/android/camera/session/CaptureSession$ProgressListener;
    invoke-interface {v0, p1}, Lcom/android/camera/session/CaptureSession$ProgressListener;->onProgressChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 178
    .end local v0    # "listener":Lcom/android/camera/session/CaptureSession$ProgressListener;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 188
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setProgressMessage(I)V
    .locals 4
    .param p1, "messageId"    # I

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mProgressMessageId:I

    .line 198
    iget-object v1, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v2, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v1, v2, p1, v3}, Lcom/android/camera/session/SessionNotifier;->notifyTaskProgressText(Landroid/net/Uri;ILcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 199
    iget-object v1, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mProgressListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/session/CaptureSession$ProgressListener;

    .line 200
    .local v0, "listener":Lcom/android/camera/session/CaptureSession$ProgressListener;
    invoke-interface {v0, p1}, Lcom/android/camera/session/CaptureSession$ProgressListener;->onStatusMessageChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 197
    .end local v0    # "listener":Lcom/android/camera/session/CaptureSession$ProgressListener;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 202
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public setSceneMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "scene"    # Ljava/lang/String;

    .prologue
    .line 648
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
    .line 559
    .local p1, "watermarkViewDataOptional":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/android/camera/watermark/WatermarkViewData;>;"
    return-void
.end method

.method public declared-synchronized startEmpty(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Lcom/android/camera/util/Size;)V
    .locals 4
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "pictureSize"    # Lcom/android/camera/util/Size;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 229
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mIsFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 244
    :goto_0
    monitor-exit p0

    return-void

    .line 233
    :cond_0
    if-eqz p1, :cond_1

    .line 234
    :try_start_1
    iput-object p1, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    .line 235
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onCaptureStarted()V

    .line 238
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mProgressMessageId:I

    .line 239
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    iget-object v1, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mTitle:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mSessionStartMillis:J

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/android/camera/session/PlaceholderManager;->insertEmptyPlaceholder(Ljava/lang/String;Lcom/android/camera/util/Size;J)Lcom/android/camera/session/PlaceholderManager$Placeholder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    .line 241
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    iget-object v0, v0, Lcom/android/camera/session/PlaceholderManager$Placeholder;->outputUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mUri:Landroid/net/Uri;

    .line 242
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    iget-object v1, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mUri:Landroid/net/Uri;

    invoke-interface {v0, v1, p0}, Lcom/android/camera/session/CaptureSessionManager;->putSession(Landroid/net/Uri;Lcom/android/camera/session/CaptureSession;)V

    .line 243
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v0, v1, v2}, Lcom/android/camera/session/SessionNotifier;->notifyTaskQueued(Landroid/net/Uri;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 229
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
    .line 249
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
    .line 259
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
    .line 254
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public unregisterImageSavedListener()V
    .locals 0

    .prologue
    .line 572
    return-void
.end method

.method public updateCaptureIndicatorThumbnail(Landroid/graphics/Bitmap;I)V
    .locals 1
    .param p1, "indicator"    # Landroid/graphics/Bitmap;
    .param p2, "rotationDegrees"    # I

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onTinyThumb()V

    .line 223
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/camera/session/PanoCaptureSessionImpl;->onCaptureIndicatorUpdate(Landroid/graphics/Bitmap;I)V

    .line 224
    return-void
.end method

.method public updatePreview()V
    .locals 0

    .prologue
    .line 508
    return-void
.end method

.method public updateThumbnail(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    if-nez v0, :cond_0

    .line 216
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onMediumThumb()V

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    iget-object v1, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/session/PlaceholderManager;->replacePlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;Landroid/graphics/Bitmap;)V

    .line 215
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/session/PanoCaptureSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v0, v1, v2}, Lcom/android/camera/session/SessionNotifier;->notifySessionUpdated(Landroid/net/Uri;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    goto :goto_0
.end method
