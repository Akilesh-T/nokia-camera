.class public Lcom/android/camera/session/VideoStreamingSessionImpl;
.super Ljava/lang/Object;
.source "VideoStreamingSessionImpl.java"

# interfaces
.implements Lcom/android/camera/session/CaptureSession;


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mCamcorderProfile:Landroid/media/CamcorderProfile;

.field private final mCaptureSessionStatsCollector:Lcom/android/camera/stats/CaptureSessionStatsCollector;

.field private volatile mIsFinished:Z

.field private mLocation:Landroid/location/Location;

.field private mProgressMessageId:I

.field private mRecordingStartTime:J

.field private final mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

.field private final mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

.field private final mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

.field private final mSessionStartMillis:J

.field private final mTitle:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mVideoCaptureRate:F

.field private final mVideoRecordListener:Lcom/android/camera/session/VideoRecordListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "VideoStreamSessionImpl"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/session/VideoStreamingSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/media/CamcorderProfile;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "camcorderProfile"    # Landroid/media/CamcorderProfile;
    .param p3, "sessionStartMillis"    # J
    .param p5, "location"    # Landroid/location/Location;
    .param p6, "captureSessionManager"    # Lcom/android/camera/session/CaptureSessionManager;
    .param p7, "sessionNotifier"    # Lcom/android/camera/session/SessionNotifier;
    .param p8, "sessionListener"    # Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/session/VideoStreamingSessionImpl;->mVideoCaptureRate:F

    .line 89
    new-instance v0, Lcom/android/camera/stats/CaptureSessionStatsCollector;

    invoke-direct {v0}, Lcom/android/camera/stats/CaptureSessionStatsCollector;-><init>()V

    iput-object v0, p0, Lcom/android/camera/session/VideoStreamingSessionImpl;->mCaptureSessionStatsCollector:Lcom/android/camera/stats/CaptureSessionStatsCollector;

    .line 95
    new-instance v0, Lcom/android/camera/session/VideoStreamingSessionImpl$1;

    invoke-direct {v0, p0}, Lcom/android/camera/session/VideoStreamingSessionImpl$1;-><init>(Lcom/android/camera/session/VideoStreamingSessionImpl;)V

    iput-object v0, p0, Lcom/android/camera/session/VideoStreamingSessionImpl;->mVideoRecordListener:Lcom/android/camera/session/VideoRecordListener;

    .line 129
    iput-object p1, p0, Lcom/android/camera/session/VideoStreamingSessionImpl;->mTitle:Ljava/lang/String;

    .line 130
    iput-object p2, p0, Lcom/android/camera/session/VideoStreamingSessionImpl;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    .line 131
    iput-wide p3, p0, Lcom/android/camera/session/VideoStreamingSessionImpl;->mSessionStartMillis:J

    .line 132
    iput-object p5, p0, Lcom/android/camera/session/VideoStreamingSessionImpl;->mLocation:Landroid/location/Location;

    .line 133
    iput-object p6, p0, Lcom/android/camera/session/VideoStreamingSessionImpl;->mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    .line 134
    iput-object p7, p0, Lcom/android/camera/session/VideoStreamingSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    .line 135
    iput-object p8, p0, Lcom/android/camera/session/VideoStreamingSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/session/VideoStreamingSessionImpl;->mIsFinished:Z

    .line 137
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/session/VideoStreamingSessionImpl;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/VideoStreamingSessionImpl;
    .param p1, "x1"    # J

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/android/camera/session/VideoStreamingSessionImpl;->mRecordingStartTime:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/android/camera/session/VideoStreamingSessionImpl;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/session/VideoStreamingSessionImpl;
    .param p1, "x1"    # F

    .prologue
    .line 59
    iput p1, p0, Lcom/android/camera/session/VideoStreamingSessionImpl;->mVideoCaptureRate:F

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/session/VideoStreamingSessionImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/session/VideoStreamingSessionImpl;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/camera/session/VideoStreamingSessionImpl;->saveVideoAndFinish()V

    return-void
.end method

.method static synthetic access$300()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/camera/session/VideoStreamingSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method private onCaptureIndicatorUpdate(Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p1, "indicator"    # Landroid/graphics/Bitmap;
    .param p2, "rotationDegrees"    # I

    .prologue
    .line 312
    return-void
.end method

.method private saveVideoAndFinish()V
    .locals 3

    .prologue
    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/session/VideoStreamingSessionImpl;->mIsFinished:Z

    .line 254
    iget-object v0, p0, Lcom/android/camera/session/VideoStreamingSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/session/VideoStreamingSessionImpl;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/session/VideoStreamingSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v0, v1, v2}, Lcom/android/camera/session/SessionNotifier;->notifyTaskDone(Landroid/net/Uri;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 255
    return-void
.end method


# virtual methods
.method public addProgressListener(Lcom/android/camera/session/CaptureSession$ProgressListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ProgressListener;

    .prologue
    .line 301
    return-void
.end method

.method public declared-synchronized cancel()V
    .locals 4

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/session/VideoStreamingSessionImpl;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/camera/session/VideoStreamingSessionImpl;->mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    iget-object v1, p0, Lcom/android/camera/session/VideoStreamingSessionImpl;->mUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/android/camera/session/CaptureSessionManager;->removeSession(Landroid/net/Uri;)Lcom/android/camera/session/CaptureSession;

    .line 233
    iget-object v0, p0, Lcom/android/camera/session/VideoStreamingSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/session/VideoStreamingSessionImpl;->mUri:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/camera/session/VideoStreamingSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/session/SessionNotifier;->notifyTaskCanceled(Landroid/net/Uri;ZLcom/android/camera/session/CaptureSessionManager$SessionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    :cond_0
    monitor-exit p0

    return-void

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public finalizeSession()V
    .locals 0

    .prologue
    .line 309
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/session/VideoStreamingSessionImpl;->mIsFinished:Z

    .line 274
    return-void
.end method

.method public finishWithFailure(IZ)V
    .locals 6
    .param p1, "failureMessageId"    # I
    .param p2, "removeFromFilmstrip"    # Z

    .prologue
    const/4 v4, 0x1

    .line 292
    sget-object v0, Lcom/android/camera/session/VideoStreamingSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 293
    iput-boolean v4, p0, Lcom/android/camera/session/VideoStreamingSessionImpl;->mIsFinished:Z

    .line 294
    iput p1, p0, Lcom/android/camera/session/VideoStreamingSessionImpl;->mProgressMessageId:I

    .line 295
    iget-object v0, p0, Lcom/android/camera/session/VideoStreamingSessionImpl;->mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    iget-object v1, p0, Lcom/android/camera/session/VideoStreamingSessionImpl;->mUri:Landroid/net/Uri;

    invoke-interface {v0, v1, p1}, Lcom/android/camera/session/CaptureSessionManager;->putErrorMessage(Landroid/net/Uri;I)V

    .line 296
    iget-object v0, p0, Lcom/android/camera/session/VideoStreamingSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/session/VideoStreamingSessionImpl;->mUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/camera/session/VideoStreamingSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/session/SessionNotifier;->notifyTaskFailed(Landroid/net/Uri;IZZLcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 297
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
    .line 421
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCaptureSessionForMap()Lcom/android/camera/session/CaptureSession;
    .locals 1

    .prologue
    .line 316
    new-instance v0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;

    invoke-direct {v0, p0}, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;-><init>(Lcom/android/camera/session/CaptureSession;)V

    return-object v0
.end method

.method public getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/session/VideoStreamingSessionImpl;->mCaptureSessionStatsCollector:Lcom/android/camera/stats/CaptureSessionStatsCollector;

    return-object v0
.end method

.method public getExternalUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/camera/session/VideoStreamingSessionImpl;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getPrevPhoto()[B
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1

    .prologue
    .line 176
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized getProgressMessageId()I
    .locals 1

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/session/VideoStreamingSessionImpl;->mProgressMessageId:I
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
    .line 390
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTempOutputFile()Lcom/android/camera/session/TemporarySessionFile;
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/session/VideoStreamingSessionImpl;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/camera/session/VideoStreamingSessionImpl;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getVideoFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoRecordListener()Lcom/android/camera/session/VideoRecordListener;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/camera/session/VideoStreamingSessionImpl;->mVideoRecordListener:Lcom/android/camera/session/VideoRecordListener;

    return-object v0
.end method

.method public isCaptureIntent()Z
    .locals 1

    .prologue
    .line 441
    const/4 v0, 0x0

    return v0
.end method

.method public isDisableSessionReturnData()Z
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x0

    return v0
.end method

.method public isFirstShotInTwiceShot()Z
    .locals 1

    .prologue
    .line 416
    const/4 v0, 0x0

    return v0
.end method

.method public isForceHideThumbnail()Z
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x1

    return v0
.end method

.method public isImageHWRotate()Z
    .locals 1

    .prologue
    .line 456
    const/4 v0, 0x0

    return v0
.end method

.method public isMainCamera()Z
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x0

    return v0
.end method

.method public isPreviewOnly()Z
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x0

    return v0
.end method

.method public needMirror()Z
    .locals 1

    .prologue
    .line 426
    const/4 v0, 0x0

    return v0
.end method

.method public onCaptureFinish()V
    .locals 0

    .prologue
    .line 432
    return-void
.end method

.method public onCaptureStart()V
    .locals 0

    .prologue
    .line 437
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
    .line 321
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public registerImageSavedListener(Lcom/android/camera/session/CaptureSession$ImageSavedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ImageSavedListener;

    .prologue
    .line 335
    return-void
.end method

.method public removeProgressListener(Lcom/android/camera/session/CaptureSession$ProgressListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ProgressListener;

    .prologue
    .line 305
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
    .line 244
    .local p2, "imageName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized saveAndFinish([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;)Lcom/google/common/util/concurrent/ListenableFuture;
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
    .line 239
    .local p2, "imageName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public saveAndFinish([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
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
    .line 249
    .local p2, "imageName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public saveBurstImage([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;)V
    .locals 0
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
    .line 259
    .local p2, "imageName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    return-void
.end method

.method public savePostProcessImage([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;Landroid/graphics/Bitmap;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
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
    .line 263
    .local p2, "imageName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public saveRawImage([BLcom/google/common/base/Optional;II)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
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
    .line 268
    .local p2, "imageName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

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
    .line 331
    .local p1, "brandLogoViewDataOptional":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/android/camera/brandlogo/BrandLogoViewData;>;"
    return-void
.end method

.method public setCaptureMode(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V
    .locals 0
    .param p1, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .prologue
    .line 360
    return-void
.end method

.method public setDisableSessionReturnData(Z)V
    .locals 0
    .param p1, "isDisable"    # Z

    .prologue
    .line 371
    return-void
.end method

.method public setForceHideThumbnail(Z)V
    .locals 0
    .param p1, "hideThumbnail"    # Z

    .prologue
    .line 350
    return-void
.end method

.method public setImageHWRotate(Z)V
    .locals 0
    .param p1, "hw_do_rotate"    # Z

    .prologue
    .line 452
    return-void
.end method

.method public setIsCaptureIntent(Z)V
    .locals 0
    .param p1, "isCaptureIntent"    # Z

    .prologue
    .line 447
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/camera/session/VideoStreamingSessionImpl;->mLocation:Landroid/location/Location;

    .line 172
    return-void
.end method

.method public setMainCamera(Z)V
    .locals 0
    .param p1, "isMainCamera"    # Z

    .prologue
    .line 397
    return-void
.end method

.method public setMirror(Z)V
    .locals 0
    .param p1, "mirror"    # Z

    .prologue
    .line 381
    return-void
.end method

.method public setPrevPhoto([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 407
    return-void
.end method

.method public setPreviewOnly(Z)V
    .locals 0
    .param p1, "previewOnly"    # Z

    .prologue
    .line 363
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 0
    .param p1, "percent"    # I

    .prologue
    .line 182
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setProgressMessage(I)V
    .locals 0
    .param p1, "messageId"    # I

    .prologue
    .line 191
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public setSceneMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "scene"    # Ljava/lang/String;

    .prologue
    .line 386
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
    .line 327
    .local p1, "watermarkViewDataOptional":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/android/camera/watermark/WatermarkViewData;>;"
    return-void
.end method

.method public declared-synchronized startEmpty(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Lcom/android/camera/util/Size;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "videoSize"    # Lcom/android/camera/util/Size;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/session/VideoStreamingSessionImpl;->mIsFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 212
    :goto_0
    monitor-exit p0

    return-void

    .line 208
    :cond_0
    const/4 v0, -0x1

    :try_start_1
    iput v0, p0, Lcom/android/camera/session/VideoStreamingSessionImpl;->mProgressMessageId:I

    .line 209
    invoke-static {}, Lcom/android/camera/Storage;->generateUniqueStreamingUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/session/VideoStreamingSessionImpl;->mUri:Landroid/net/Uri;

    .line 210
    iget-object v0, p0, Lcom/android/camera/session/VideoStreamingSessionImpl;->mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    iget-object v1, p0, Lcom/android/camera/session/VideoStreamingSessionImpl;->mUri:Landroid/net/Uri;

    invoke-interface {v0, v1, p0}, Lcom/android/camera/session/CaptureSessionManager;->putSession(Landroid/net/Uri;Lcom/android/camera/session/CaptureSession;)V

    .line 211
    iget-object v0, p0, Lcom/android/camera/session/VideoStreamingSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/session/VideoStreamingSessionImpl;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/session/VideoStreamingSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v0, v1, v2}, Lcom/android/camera/session/SessionNotifier;->notifyTaskQueued(Landroid/net/Uri;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 204
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
    .line 217
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
    .line 227
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
    .line 222
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public unregisterImageSavedListener()V
    .locals 0

    .prologue
    .line 340
    return-void
.end method

.method public updateCaptureIndicatorThumbnail(Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p1, "indicator"    # Landroid/graphics/Bitmap;
    .param p2, "rotationDegrees"    # I

    .prologue
    .line 199
    return-void
.end method

.method public updatePreview()V
    .locals 0

    .prologue
    .line 288
    return-void
.end method

.method public updateThumbnail(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 195
    return-void
.end method
