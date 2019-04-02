.class public Lcom/android/camera/captureintent/CaptureIntentSession;
.super Ljava/lang/Object;
.source "CaptureIntentSession.java"

# interfaces
.implements Lcom/android/camera/session/CaptureSession;


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private isStarted:Z

.field private final mCaptureSessionStatsCollector:Lcom/android/camera/stats/CaptureSessionStatsCollector;

.field private mLocation:Landroid/location/Location;

.field private mSceneMode:Ljava/lang/String;

.field private final mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

.field private final mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

.field private final mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "CapIntSession"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/captureintent/CaptureIntentSession;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/location/Location;Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "location"    # Landroid/location/Location;
    .param p3, "captureSessionManager"    # Lcom/android/camera/session/CaptureSessionManager;
    .param p4, "sessionNotifier"    # Lcom/android/camera/session/SessionNotifier;
    .param p5, "sessionListener"    # Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/android/camera/stats/CaptureSessionStatsCollector;

    invoke-direct {v0}, Lcom/android/camera/stats/CaptureSessionStatsCollector;-><init>()V

    iput-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentSession;->mCaptureSessionStatsCollector:Lcom/android/camera/stats/CaptureSessionStatsCollector;

    .line 83
    iput-object p1, p0, Lcom/android/camera/captureintent/CaptureIntentSession;->mTitle:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lcom/android/camera/captureintent/CaptureIntentSession;->mLocation:Landroid/location/Location;

    .line 85
    iput-object p3, p0, Lcom/android/camera/captureintent/CaptureIntentSession;->mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    .line 86
    iput-object p4, p0, Lcom/android/camera/captureintent/CaptureIntentSession;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    .line 87
    iput-object p5, p0, Lcom/android/camera/captureintent/CaptureIntentSession;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/captureintent/CaptureIntentSession;->isStarted:Z

    .line 89
    return-void
.end method


# virtual methods
.method public addProgressListener(Lcom/android/camera/session/CaptureSession$ProgressListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ProgressListener;

    .prologue
    .line 250
    return-void
.end method

.method public declared-synchronized cancel()V
    .locals 0

    .prologue
    .line 176
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public finalizeSession()V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 220
    return-void
.end method

.method public finishWithFailure(IZ)V
    .locals 2
    .param p1, "progressMessageId"    # I
    .param p2, "removeFromFilmstrip"    # Z

    .prologue
    .line 239
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .line 370
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCaptureSessionForMap()Lcom/android/camera/session/CaptureSession;
    .locals 1

    .prologue
    .line 264
    new-instance v0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;

    invoke-direct {v0, p0}, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;-><init>(Lcom/android/camera/session/CaptureSession;)V

    return-object v0
.end method

.method public getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentSession;->mCaptureSessionStatsCollector:Lcom/android/camera/stats/CaptureSessionStatsCollector;

    return-object v0
.end method

.method public getExternalUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentSession;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getPrevPhoto()[B
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1

    .prologue
    .line 124
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized getProgressMessageId()I
    .locals 1

    .prologue
    .line 134
    monitor-enter p0

    const/4 v0, -0x1

    monitor-exit p0

    return v0
.end method

.method public getSceneMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentSession;->mSceneMode:Ljava/lang/String;

    return-object v0
.end method

.method public getTempOutputFile()Lcom/android/camera/session/TemporarySessionFile;
    .locals 2

    .prologue
    .line 224
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentSession;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 229
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVideoFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoRecordListener()Lcom/android/camera/session/VideoRecordListener;
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    return-object v0
.end method

.method public isCaptureIntent()Z
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x1

    return v0
.end method

.method public isDisableSessionReturnData()Z
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method public isFirstShotInTwiceShot()Z
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x0

    return v0
.end method

.method public isForceHideThumbnail()Z
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method public isImageHWRotate()Z
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x0

    return v0
.end method

.method public isMainCamera()Z
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x0

    return v0
.end method

.method public isPreviewOnly()Z
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method public needMirror()Z
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x0

    return v0
.end method

.method public onCaptureFinish()V
    .locals 0

    .prologue
    .line 381
    return-void
.end method

.method public onCaptureStart()V
    .locals 0

    .prologue
    .line 386
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
    .line 269
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public registerImageSavedListener(Lcom/android/camera/session/CaptureSession$ImageSavedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ImageSavedListener;

    .prologue
    .line 285
    return-void
.end method

.method public removeProgressListener(Lcom/android/camera/session/CaptureSession$ProgressListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ProgressListener;

    .prologue
    .line 255
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
    .line 187
    .local p2, "imageName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized saveAndFinish([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
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
    .line 181
    .local p2, "imageName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentSession;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentSession;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v0, p1, p5, v1}, Lcom/android/camera/session/SessionNotifier;->notifySessionPictureDataAvailable([BILcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 182
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public saveAndFinish([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
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
    .line 192
    .local p2, "imageName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    const/16 v0, 0x11

    if-ne p7, v0, :cond_0

    .line 193
    invoke-static {p1, p3, p4}, Lcom/android/camera/util/YuvToJpeg;->transByteData([BII)[B

    move-result-object p1

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentSession;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentSession;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v0, p1, p5, v1}, Lcom/android/camera/session/SessionNotifier;->notifySessionPictureDataAvailable([BILcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 196
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
    .line 201
    .local p2, "imageName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    return-void
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
    .line 205
    .local p2, "imageName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 206
    .local v0, "futureResult":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/common/base/Optional<Landroid/net/Uri;>;>;"
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 207
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
    .line 212
    .local p2, "imageName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 213
    .local v0, "futureResult":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/common/base/Optional<Ljava/lang/String;>;>;"
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 214
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
    .line 280
    .local p1, "brandLogoViewDataOptional":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/android/camera/brandlogo/BrandLogoViewData;>;"
    return-void
.end method

.method public setCaptureMode(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V
    .locals 0
    .param p1, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .prologue
    .line 310
    return-void
.end method

.method public setDisableSessionReturnData(Z)V
    .locals 0
    .param p1, "isDisable"    # Z

    .prologue
    .line 321
    return-void
.end method

.method public setForceHideThumbnail(Z)V
    .locals 0
    .param p1, "hideThumbnail"    # Z

    .prologue
    .line 300
    return-void
.end method

.method public setImageHWRotate(Z)V
    .locals 0
    .param p1, "hw_do_rotate"    # Z

    .prologue
    .line 402
    return-void
.end method

.method public setIsCaptureIntent(Z)V
    .locals 0
    .param p1, "isCaptureIntent"    # Z

    .prologue
    .line 396
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/camera/captureintent/CaptureIntentSession;->mLocation:Landroid/location/Location;

    .line 119
    return-void
.end method

.method public setMainCamera(Z)V
    .locals 0
    .param p1, "isMainCamera"    # Z

    .prologue
    .line 331
    return-void
.end method

.method public setMirror(Z)V
    .locals 0
    .param p1, "mirror"    # Z

    .prologue
    .line 351
    return-void
.end method

.method public setPrevPhoto([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 341
    return-void
.end method

.method public setPreviewOnly(Z)V
    .locals 0
    .param p1, "previewOnly"    # Z

    .prologue
    .line 313
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 0
    .param p1, "percent"    # I

    .prologue
    .line 130
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setProgressMessage(I)V
    .locals 0
    .param p1, "messageId"    # I

    .prologue
    .line 139
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public setSceneMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "scene"    # Ljava/lang/String;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/camera/captureintent/CaptureIntentSession;->mSceneMode:Ljava/lang/String;

    .line 356
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
    .line 275
    .local p1, "watermarkViewDataOptional":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/android/camera/watermark/WatermarkViewData;>;"
    return-void
.end method

.method public declared-synchronized startEmpty(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Lcom/android/camera/util/Size;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;
    .param p2, "pictureSize"    # Lcom/android/camera/util/Size;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 153
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/captureintent/CaptureIntentSession;->isStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startSession(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Landroid/graphics/Bitmap;I)V
    .locals 2
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;
    .param p2, "placeholder"    # Landroid/graphics/Bitmap;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3, "progressMessageId"    # I

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startSession(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Landroid/net/Uri;I)V
    .locals 2
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;
    .param p2, "uri"    # Landroid/net/Uri;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3, "progressMessageId"    # I
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startSession(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;[BI)V
    .locals 2
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;
    .param p2, "placeholder"    # [B
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3, "progressMessageId"    # I

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterImageSavedListener()V
    .locals 0

    .prologue
    .line 290
    return-void
.end method

.method public updateCaptureIndicatorThumbnail(Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p1, "indicator"    # Landroid/graphics/Bitmap;
    .param p2, "rotationDegrees"    # I

    .prologue
    .line 149
    return-void
.end method

.method public updatePreview()V
    .locals 2

    .prologue
    .line 234
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateThumbnail(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureIntentSession;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/captureintent/CaptureIntentSession;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v0, p1, v1}, Lcom/android/camera/session/SessionNotifier;->notifySessionThumbnailAvailable(Landroid/graphics/Bitmap;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 144
    return-void
.end method
