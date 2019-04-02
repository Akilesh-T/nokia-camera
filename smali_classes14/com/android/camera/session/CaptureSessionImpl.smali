.class public Lcom/android/camera/session/CaptureSessionImpl;
.super Ljava/lang/Object;
.source "CaptureSessionImpl.java"

# interfaces
.implements Lcom/android/camera/session/CaptureSession;


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mBrandLogoViewData:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/brandlogo/BrandLogoViewData;",
            ">;"
        }
    .end annotation
.end field

.field private mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

.field private final mCaptureSessionStatsCollector:Lcom/android/camera/stats/CaptureSessionStatsCollector;

.field private mContentUri:Landroid/net/Uri;

.field private mDisableSessionReturnData:Z

.field private mForceHideThumbnail:Z

.field private mHasPreviouslySetProgress:Z

.field private mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mIsCaptureIntent:Z

.field private volatile mIsFinished:Z

.field private mIsImageHWRotate:Z

.field private mIsMainCamera:Z

.field private mIsPreviewOnly:Z

.field private mLocation:Landroid/location/Location;

.field private final mMediaSaver:Lcom/android/camera/app/MediaSaver;

.field private mMirror:Z

.field private mPictureSize:Lcom/android/camera/util/Size;

.field private mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

.field private final mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

.field private mPrevPhotoData:[B

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

.field private mSaveRawCount:I

.field private mSceneMode:Ljava/lang/String;

.field private final mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

.field private final mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

.field private final mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

.field private final mSessionStartMillis:J

.field private final mTempOutputFile:Lcom/android/camera/session/TemporarySessionFile;

.field private final mTitle:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mWatermarkViewData:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/watermark/WatermarkViewData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "CaptureSessionImpl"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/session/CaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/TemporarySessionFile;Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Lcom/android/camera/session/CaptureSessionManager$SessionListener;Lcom/android/camera/session/PlaceholderManager;Lcom/android/camera/app/MediaSaver;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "sessionStartMillis"    # J
    .param p4, "location"    # Landroid/location/Location;
    .param p5, "temporarySessionFile"    # Lcom/android/camera/session/TemporarySessionFile;
    .param p6, "captureSessionManager"    # Lcom/android/camera/session/CaptureSessionManager;
    .param p7, "sessionNotifier"    # Lcom/android/camera/session/SessionNotifier;
    .param p8, "sessionListener"    # Lcom/android/camera/session/CaptureSessionManager$SessionListener;
    .param p9, "placeholderManager"    # Lcom/android/camera/session/PlaceholderManager;
    .param p10, "mediaSaver"    # Lcom/android/camera/app/MediaSaver;

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mProgressListeners:Ljava/util/HashSet;

    .line 90
    iput v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mProgressPercent:I

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSaveImgLock:Ljava/lang/Object;

    .line 98
    new-instance v0, Lcom/android/camera/stats/CaptureSessionStatsCollector;

    invoke-direct {v0}, Lcom/android/camera/stats/CaptureSessionStatsCollector;-><init>()V

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mCaptureSessionStatsCollector:Lcom/android/camera/stats/CaptureSessionStatsCollector;

    .line 102
    iput-boolean v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mHasPreviouslySetProgress:Z

    .line 104
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    .line 105
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mBrandLogoViewData:Lcom/google/common/base/Optional;

    .line 112
    iput-boolean v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mForceHideThumbnail:Z

    .line 113
    iput-boolean v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mIsImageHWRotate:Z

    .line 122
    iput-boolean v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mDisableSessionReturnData:Z

    .line 147
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mTitle:Ljava/lang/String;

    .line 148
    iput-wide p2, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionStartMillis:J

    .line 149
    iput-object p4, p0, Lcom/android/camera/session/CaptureSessionImpl;->mLocation:Landroid/location/Location;

    .line 150
    iput-object p5, p0, Lcom/android/camera/session/CaptureSessionImpl;->mTempOutputFile:Lcom/android/camera/session/TemporarySessionFile;

    .line 151
    iput-object p6, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    .line 152
    iput-object p7, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    .line 153
    iput-object p8, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .line 154
    iput-object p9, p0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    .line 155
    iput-object p10, p0, Lcom/android/camera/session/CaptureSessionImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    .line 156
    iput v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSaveRawCount:I

    .line 157
    iput-boolean v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mIsFinished:Z

    .line 158
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/session/CaptureSessionImpl;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/session/CaptureSessionImpl;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mContentUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/session/CaptureSessionImpl;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/CaptureSessionImpl;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/session/CaptureSessionImpl;)Lcom/android/camera/session/PlaceholderManager$Placeholder;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/CaptureSessionImpl;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/session/CaptureSessionImpl;)Lcom/android/camera/session/PlaceholderManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/CaptureSessionImpl;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/session/CaptureSessionImpl;)Lcom/android/camera/session/CaptureSessionManager$SessionListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/CaptureSessionImpl;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/session/CaptureSessionImpl;)Lcom/android/camera/session/SessionNotifier;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/CaptureSessionImpl;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/session/CaptureSessionImpl;)Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/CaptureSessionImpl;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/session/CaptureSessionImpl;)Lcom/android/camera/session/CaptureSessionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/CaptureSessionImpl;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/session/CaptureSessionImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/CaptureSessionImpl;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mMirror:Z

    return v0
.end method

.method static synthetic access$700()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/camera/session/CaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/session/CaptureSessionImpl;)Lcom/android/camera/app/MediaSaver;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/CaptureSessionImpl;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/session/CaptureSessionImpl;)Lcom/android/camera/session/TemporarySessionFile;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/CaptureSessionImpl;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mTempOutputFile:Lcom/android/camera/session/TemporarySessionFile;

    return-object v0
.end method

.method private onCaptureIndicatorUpdate(Landroid/graphics/Bitmap;I)V
    .locals 6
    .param p1, "indicator"    # Landroid/graphics/Bitmap;
    .param p2, "rotationDegrees"    # I

    .prologue
    .line 995
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mUri:Landroid/net/Uri;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-object v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/session/SessionNotifier;->notifySessionCaptureIndicatorAvailable(Landroid/net/Uri;Landroid/graphics/Bitmap;IZLcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 996
    return-void
.end method


# virtual methods
.method public addProgressListener(Lcom/android/camera/session/CaptureSession$ProgressListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ProgressListener;

    .prologue
    .line 977
    iget v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mProgressMessageId:I

    if-lez v0, :cond_0

    .line 978
    iget v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mProgressMessageId:I

    invoke-interface {p1, v0}, Lcom/android/camera/session/CaptureSession$ProgressListener;->onStatusMessageChanged(I)V

    .line 980
    :cond_0
    iget v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mProgressPercent:I

    invoke-interface {p1, v0}, Lcom/android/camera/session/CaptureSession$ProgressListener;->onProgressChanged(I)V

    .line 981
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mProgressListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 982
    return-void
.end method

.method public declared-synchronized cancel()V
    .locals 4

    .prologue
    .line 345
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/android/camera/session/CaptureSessionManager;->removeSession(Landroid/net/Uri;)Lcom/android/camera/session/CaptureSession;

    .line 347
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionImpl;->mUri:Landroid/net/Uri;

    iget-boolean v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mForceHideThumbnail:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v1, v2, v0, v3}, Lcom/android/camera/session/SessionNotifier;->notifyTaskCanceled(Landroid/net/Uri;ZLcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 348
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onCaptureCanceled()V

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    invoke-virtual {v0, v1}, Lcom/android/camera/session/PlaceholderManager;->removePlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;)V

    .line 355
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 359
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/watermark/WatermarkViewData;

    invoke-virtual {v0}, Lcom/android/camera/watermark/WatermarkViewData;->recycleBitmap()V

    .line 360
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    .line 363
    :cond_2
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mBrandLogoViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 364
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mBrandLogoViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/brandlogo/BrandLogoViewData;

    invoke-virtual {v0}, Lcom/android/camera/brandlogo/BrandLogoViewData;->recycleBitmap()V

    .line 365
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mBrandLogoViewData:Lcom/google/common/base/Optional;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    :cond_3
    monitor-exit p0

    return-void

    .line 347
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public finalizeSession()V
    .locals 2

    .prologue
    .line 991
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    invoke-virtual {v0, v1}, Lcom/android/camera/session/PlaceholderManager;->removePlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;)V

    .line 992
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    if-nez v0, :cond_0

    .line 876
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call finish without calling startSession first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 880
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mIsFinished:Z

    .line 881
    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/camera/session/CaptureSessionImpl$9;

    invoke-direct {v1, p0}, Lcom/android/camera/session/CaptureSessionImpl$9;-><init>(Lcom/android/camera/session/CaptureSessionImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 914
    return-void
.end method

.method public finishWithFailure(IZ)V
    .locals 6
    .param p1, "failureMessageId"    # I
    .param p2, "removeFromFilmstrip"    # Z

    .prologue
    .line 957
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    if-nez v0, :cond_0

    .line 958
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call finish without calling startSession first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 962
    :cond_0
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 963
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/watermark/WatermarkViewData;

    invoke-virtual {v0}, Lcom/android/camera/watermark/WatermarkViewData;->recycleBitmap()V

    .line 964
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    .line 966
    :cond_1
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mBrandLogoViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 967
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mBrandLogoViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/brandlogo/BrandLogoViewData;

    invoke-virtual {v0}, Lcom/android/camera/brandlogo/BrandLogoViewData;->recycleBitmap()V

    .line 968
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mBrandLogoViewData:Lcom/google/common/base/Optional;

    .line 970
    :cond_2
    iput p1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mProgressMessageId:I

    .line 971
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mUri:Landroid/net/Uri;

    invoke-interface {v0, v1, p1}, Lcom/android/camera/session/CaptureSessionManager;->putErrorMessage(Landroid/net/Uri;I)V

    .line 972
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mUri:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/android/camera/session/CaptureSessionImpl;->mForceHideThumbnail:Z

    if-nez v2, :cond_3

    const/4 v4, 0x1

    :goto_0
    iget-object v5, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/session/SessionNotifier;->notifyTaskFailed(Landroid/net/Uri;IZZLcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 973
    return-void

    .line 972
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
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
    .line 1118
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mBrandLogoViewData:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method public getCaptureSessionForMap()Lcom/android/camera/session/CaptureSession;
    .locals 1

    .prologue
    .line 1000
    new-instance v0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;

    invoke-direct {v0, p0}, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;-><init>(Lcom/android/camera/session/CaptureSession;)V

    return-object v0
.end method

.method public getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mCaptureSessionStatsCollector:Lcom/android/camera/stats/CaptureSessionStatsCollector;

    return-object v0
.end method

.method public getExternalUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getPrevPhoto()[B
    .locals 1

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mPrevPhotoData:[B

    return-object v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mProgressPercent:I
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
    .line 215
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mProgressMessageId:I
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
    .line 1108
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSceneMode:Ljava/lang/String;

    return-object v0
.end method

.method public getTempOutputFile()Lcom/android/camera/session/TemporarySessionFile;
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mTempOutputFile:Lcom/android/camera/session/TemporarySessionFile;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getVideoFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoRecordListener()Lcom/android/camera/session/VideoRecordListener;
    .locals 1

    .prologue
    .line 1028
    const/4 v0, 0x0

    return-object v0
.end method

.method public isCaptureIntent()Z
    .locals 1

    .prologue
    .line 1138
    iget-boolean v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mIsCaptureIntent:Z

    return v0
.end method

.method public isDisableSessionReturnData()Z
    .locals 1

    .prologue
    .line 1072
    const/4 v0, 0x0

    return v0
.end method

.method public isFirstShotInTwiceShot()Z
    .locals 2

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    sget-object v1, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mForceHideThumbnail:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isForceHideThumbnail()Z
    .locals 1

    .prologue
    .line 1038
    iget-boolean v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mForceHideThumbnail:Z

    return v0
.end method

.method public isImageHWRotate()Z
    .locals 1

    .prologue
    .line 1048
    iget-boolean v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mIsImageHWRotate:Z

    return v0
.end method

.method public isMainCamera()Z
    .locals 1

    .prologue
    .line 1082
    iget-boolean v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mIsMainCamera:Z

    return v0
.end method

.method public isPreviewOnly()Z
    .locals 1

    .prologue
    .line 1062
    iget-boolean v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mIsPreviewOnly:Z

    return v0
.end method

.method public needMirror()Z
    .locals 1

    .prologue
    .line 1123
    iget-boolean v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mMirror:Z

    return v0
.end method

.method public onCaptureFinish()V
    .locals 1

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSessionManager;->onCaptureFinish()V

    .line 1129
    return-void
.end method

.method public onCaptureStart()V
    .locals 1

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSessionManager;->onCaptureStart()V

    .line 1134
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
    .line 1005
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public registerImageSavedListener(Lcom/android/camera/session/CaptureSession$ImageSavedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ImageSavedListener;

    .prologue
    .line 1019
    return-void
.end method

.method public removeProgressListener(Lcom/android/camera/session/CaptureSession$ProgressListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ProgressListener;

    .prologue
    .line 986
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mProgressListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 987
    return-void
.end method

.method public saveAndFinish(Lcom/android/camera/mpo/Bokeh_Info;Lcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 16
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
    .line 507
    .local p2, "imageName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/camera/mpo/Bokeh_Info;->mSuccess:Z

    if-eqz v2, :cond_7

    .line 508
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v15

    .line 510
    .local v15, "futureResult":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/common/base/Optional<Landroid/net/Uri;>;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v2, :cond_0

    .line 511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v2}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onProcessingComplete()V

    .line 514
    :cond_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mIsFinished:Z

    .line 517
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/camera/mpo/Bokeh_Info;->mPrimaryData:[B

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/android/camera/exif/ExifInterface;->updateExif([B)[B

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/camera/mpo/Bokeh_Info;->mPrimaryData:[B

    .line 518
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/camera/mpo/Bokeh_Info;->mSubData:[B

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/android/camera/exif/ExifInterface;->updateExif([B)[B

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/camera/mpo/Bokeh_Info;->mSubData:[B

    .line 520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    if-nez v2, :cond_5

    .line 521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mContentUri:Landroid/net/Uri;

    .line 522
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/camera/mpo/Bokeh_Info;->isMpoType:Z

    if-nez v2, :cond_4

    .line 523
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/session/CaptureSessionImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/session/CaptureSessionImpl;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionStartMillis:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/session/CaptureSessionImpl;->mLocation:Landroid/location/Location;

    new-instance v13, Lcom/android/camera/session/CaptureSessionImpl$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v15}, Lcom/android/camera/session/CaptureSessionImpl$3;-><init>(Lcom/android/camera/session/CaptureSessionImpl;Lcom/google/common/util/concurrent/SettableFuture;)V

    move-object/from16 v4, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    invoke-interface/range {v3 .. v13}, Lcom/android/camera/app/MediaSaver;->addGdepthImage(Lcom/android/camera/mpo/Bokeh_Info;Ljava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V

    .line 592
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v2}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v2}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/watermark/WatermarkViewData;

    invoke-virtual {v2}, Lcom/android/camera/watermark/WatermarkViewData;->recycleBitmap()V

    .line 594
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    .line 596
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mBrandLogoViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v2}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 597
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mBrandLogoViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v2}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/brandlogo/BrandLogoViewData;

    invoke-virtual {v2}, Lcom/android/camera/brandlogo/BrandLogoViewData;->recycleBitmap()V

    .line 598
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mBrandLogoViewData:Lcom/google/common/base/Optional;

    .line 603
    .end local v15    # "futureResult":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/common/base/Optional<Landroid/net/Uri;>;>;"
    :cond_3
    :goto_1
    return-object v15

    .line 546
    .restart local v15    # "futureResult":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/common/base/Optional<Landroid/net/Uri;>;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/session/CaptureSessionImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/session/CaptureSessionImpl;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionStartMillis:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/session/CaptureSessionImpl;->mLocation:Landroid/location/Location;

    new-instance v13, Lcom/android/camera/session/CaptureSessionImpl$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v15}, Lcom/android/camera/session/CaptureSessionImpl$4;-><init>(Lcom/android/camera/session/CaptureSessionImpl;Lcom/google/common/util/concurrent/SettableFuture;)V

    move-object/from16 v4, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    invoke-interface/range {v3 .. v13}, Lcom/android/camera/app/MediaSaver;->addMpoImage(Lcom/android/camera/mpo/Bokeh_Info;Ljava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V

    goto :goto_0

    .line 572
    :cond_5
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/session/CaptureSessionImpl;->mSaveImgLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionImpl;->mLocation:Landroid/location/Location;

    const-string v10, "image/jpeg"

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p1

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-virtual/range {v2 .. v10}, Lcom/android/camera/session/PlaceholderManager;->finishPlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;Landroid/location/Location;ILcom/android/camera/exif/ExifInterface;Lcom/android/camera/mpo/Bokeh_Info;IILjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mContentUri:Landroid/net/Uri;

    .line 575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/session/CaptureSessionImpl;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v2, v3, v4}, Lcom/android/camera/session/SessionNotifier;->notifyTaskDone(Landroid/net/Uri;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 577
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 579
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v2, :cond_1

    .line 580
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v2}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onCapturePersisted()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 582
    :catch_0
    move-exception v14

    .line 583
    .local v14, "e":Ljava/io/IOException;
    sget-object v2, Lcom/android/camera/session/CaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Could not write file"

    invoke-static {v2, v3, v14}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v2, :cond_6

    .line 585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v2}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onCaptureFailed()V

    .line 587
    :cond_6
    const/4 v2, -0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/session/CaptureSessionImpl;->finishWithFailure(IZ)V

    .line 588
    invoke-virtual {v15, v14}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    goto/16 :goto_0

    .line 577
    .end local v14    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 603
    .end local v15    # "futureResult":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/common/base/Optional<Landroid/net/Uri;>;>;"
    :cond_7
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/camera/mpo/Bokeh_Info;->mPrimaryData:[B

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/android/camera/session/CaptureSessionImpl;->saveAndFinish([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v15

    goto/16 :goto_1
.end method

.method public declared-synchronized saveAndFinish([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 17
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
    .line 372
    .local p2, "imageName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/android/camera/session/CaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveAndFinish start ... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/session/CaptureSessionImpl;->mMirror:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 373
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v16

    .line 375
    .local v16, "futureResult":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/common/base/Optional<Landroid/net/Uri;>;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v2, :cond_0

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v2}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onProcessingComplete()V

    .line 379
    :cond_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mIsFinished:Z

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    sget-object v3, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne v2, v3, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mForceHideThumbnail:Z

    if-eqz v2, :cond_5

    .line 388
    sget-object v2, Lcom/android/camera/session/CaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TS]     mDisableSessionReturnData:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/session/CaptureSessionImpl;->mDisableSessionReturnData:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 389
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mDisableSessionReturnData:Z

    if-nez v2, :cond_1

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-interface {v2, v0, v1, v3}, Lcom/android/camera/session/SessionNotifier;->notifySessionPictureDataAvailable([BILcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 392
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/session/CaptureSessionImpl;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v2, v3, v4}, Lcom/android/camera/session/SessionNotifier;->notifyTaskDone(Landroid/net/Uri;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 492
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v2}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 493
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v2}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/watermark/WatermarkViewData;

    invoke-virtual {v2}, Lcom/android/camera/watermark/WatermarkViewData;->recycleBitmap()V

    .line 494
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    .line 496
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mBrandLogoViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v2}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 497
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mBrandLogoViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v2}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/brandlogo/BrandLogoViewData;

    invoke-virtual {v2}, Lcom/android/camera/brandlogo/BrandLogoViewData;->recycleBitmap()V

    .line 498
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mBrandLogoViewData:Lcom/google/common/base/Optional;

    .line 500
    :cond_4
    sget-object v2, Lcom/android/camera/session/CaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "saveAndFinish end ... "

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    monitor-exit p0

    return-object v16

    .line 393
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    if-nez v2, :cond_8

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v2}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 395
    sget-object v2, Lcom/android/camera/session/CaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "mWatermarkViewData availale"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/session/CaptureSessionImpl;->mPictureSize:Lcom/android/camera/util/Size;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v2}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/watermark/WatermarkViewData;

    move-object/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-static/range {v2 .. v7}, Lcom/android/camera/watermark/WatermarkImageUtil;->mergeWatermarkData([BIIILcom/android/camera/util/Size;Lcom/android/camera/watermark/WatermarkViewData;)[B

    move-result-object p1

    .line 397
    sget-object v2, Lcom/android/camera/session/CaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "mWatermarkViewData final image merged"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 399
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mContentUri:Landroid/net/Uri;

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    sget-object v3, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne v2, v3, :cond_7

    .line 401
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/session/CaptureSessionImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/session/CaptureSessionImpl;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionStartMillis:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/session/CaptureSessionImpl;->mLocation:Landroid/location/Location;

    new-instance v13, Lcom/android/camera/session/CaptureSessionImpl$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v13, v0, v1}, Lcom/android/camera/session/CaptureSessionImpl$1;-><init>(Lcom/android/camera/session/CaptureSessionImpl;Lcom/google/common/util/concurrent/SettableFuture;)V

    const-string v14, "image/jpeg"

    move-object/from16 v4, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    invoke-interface/range {v3 .. v14}, Lcom/android/camera/app/MediaSaver;->addDualSightImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 372
    .end local v16    # "futureResult":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/common/base/Optional<Landroid/net/Uri;>;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 425
    .restart local v16    # "futureResult":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/common/base/Optional<Landroid/net/Uri;>;>;"
    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/session/CaptureSessionImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/session/CaptureSessionImpl;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionStartMillis:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/session/CaptureSessionImpl;->mLocation:Landroid/location/Location;

    new-instance v13, Lcom/android/camera/session/CaptureSessionImpl$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v13, v0, v1}, Lcom/android/camera/session/CaptureSessionImpl$2;-><init>(Lcom/android/camera/session/CaptureSessionImpl;Lcom/google/common/util/concurrent/SettableFuture;)V

    move-object/from16 v4, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    invoke-interface/range {v3 .. v13}, Lcom/android/camera/app/MediaSaver;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 451
    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/session/CaptureSessionImpl;->mSaveImgLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 452
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v2}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 453
    sget-object v2, Lcom/android/camera/session/CaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "mWatermarkViewData availale"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/session/CaptureSessionImpl;->mPictureSize:Lcom/android/camera/util/Size;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v2}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/watermark/WatermarkViewData;

    move-object/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-static/range {v2 .. v7}, Lcom/android/camera/watermark/WatermarkImageUtil;->mergeWatermarkData([BIIILcom/android/camera/util/Size;Lcom/android/camera/watermark/WatermarkViewData;)[B

    move-result-object p1

    .line 455
    sget-object v2, Lcom/android/camera/session/CaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "mWatermarkViewData final image merged"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 458
    :cond_9
    invoke-virtual/range {p6 .. p6}, Lcom/android/camera/exif/ExifInterface;->hasThumbnail()Z

    move-result v2

    if-nez v2, :cond_a

    .line 459
    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-static {v0, v1}, Lcom/android/camera/Thumbnail;->addThumbnail([BLcom/android/camera/exif/ExifInterface;)V

    .line 461
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    sget-object v3, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne v2, v3, :cond_c

    .line 462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionImpl;->mLocation:Landroid/location/Location;

    const-string v10, "image/jpeg"

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p1

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-virtual/range {v2 .. v10}, Lcom/android/camera/session/PlaceholderManager;->finishDualSightPlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;Landroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mContentUri:Landroid/net/Uri;

    .line 472
    :goto_1
    sget-object v2, Lcom/android/camera/session/CaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Photos] notifyTaskDone mUri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionImpl;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/session/CaptureSessionImpl;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v2, v3, v4}, Lcom/android/camera/session/SessionNotifier;->notifyTaskDone(Landroid/net/Uri;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 477
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 479
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v2, :cond_2

    .line 480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v2}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onCapturePersisted()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 482
    :catch_0
    move-exception v15

    .line 483
    .local v15, "e":Ljava/io/IOException;
    :try_start_6
    sget-object v2, Lcom/android/camera/session/CaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Could not write file"

    invoke-static {v2, v3, v15}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 484
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v2, :cond_b

    .line 485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v2}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onCaptureFailed()V

    .line 487
    :cond_b
    const/4 v2, -0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/session/CaptureSessionImpl;->finishWithFailure(IZ)V

    .line 488
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 464
    .end local v15    # "e":Ljava/io/IOException;
    :cond_c
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    sget-object v3, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->BOKEH:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne v2, v3, :cond_d

    .line 466
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionImpl;->mLocation:Landroid/location/Location;

    const-string v10, "image/jpeg"

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p1

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-virtual/range {v2 .. v10}, Lcom/android/camera/session/PlaceholderManager;->finishPlaceholderBokeh(Lcom/android/camera/session/PlaceholderManager$Placeholder;Landroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mContentUri:Landroid/net/Uri;

    goto/16 :goto_1

    .line 477
    :catchall_1
    move-exception v2

    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 469
    :cond_d
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionImpl;->mLocation:Landroid/location/Location;

    const-string v10, "image/jpeg"

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p1

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-virtual/range {v2 .. v10}, Lcom/android/camera/session/PlaceholderManager;->finishPlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;Landroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/session/CaptureSessionImpl;->mContentUri:Landroid/net/Uri;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_1
.end method

.method public saveAndFinish([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 27
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
    .line 609
    .local p2, "imageName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    sget-object v4, Lcom/android/camera/session/CaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveAndFinish start ... "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/camera/session/CaptureSessionImpl;->mMirror:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 610
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v26

    .line 612
    .local v26, "futureResult":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/common/base/Optional<Landroid/net/Uri;>;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v4, :cond_0

    .line 613
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v4}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onProcessingComplete()V

    .line 615
    :cond_0
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/camera/session/CaptureSessionImpl;->mIsFinished:Z

    .line 616
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    if-nez v4, :cond_8

    .line 617
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/session/CaptureSessionImpl;->mMirror:Z

    if-eqz v4, :cond_1

    .line 618
    const/16 v4, 0x11

    move/from16 v0, p7

    if-ne v0, v4, :cond_1

    .line 619
    move/from16 v0, p3

    int-to-double v4, v0

    const-wide/high16 v6, 0x4050000000000000L    # 64.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    mul-int/lit8 v10, v4, 0x40

    .line 620
    .local v10, "stride":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 621
    .local v24, "begintime":J
    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-static {v0, v1, v2, v10, v3}, Lcom/android/camera/util/YUVUtilNative;->mirrorNV21([BIIII)V

    .line 625
    .end local v10    # "stride":I
    .end local v24    # "begintime":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionImpl;->mBrandLogoViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v4}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 626
    const/16 v4, 0x11

    move/from16 v0, p7

    if-ne v0, v4, :cond_2

    .line 627
    move/from16 v0, p3

    int-to-double v4, v0

    const-wide/high16 v6, 0x4050000000000000L    # 64.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    mul-int/lit8 v10, v4, 0x40

    .line 628
    .restart local v10    # "stride":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionImpl;->mBrandLogoViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v4}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/brandlogo/BrandLogoViewData;

    iget-object v4, v4, Lcom/android/camera/brandlogo/BrandLogoViewData;->mNV21A:[B

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/session/CaptureSessionImpl;->mBrandLogoViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v5}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/brandlogo/BrandLogoViewData;

    iget v5, v5, Lcom/android/camera/brandlogo/BrandLogoViewData;->logoWidth:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/session/CaptureSessionImpl;->mBrandLogoViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v6}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/brandlogo/BrandLogoViewData;

    iget v6, v6, Lcom/android/camera/brandlogo/BrandLogoViewData;->logoHeight:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/session/CaptureSessionImpl;->mBrandLogoViewData:Lcom/google/common/base/Optional;

    .line 629
    invoke-virtual {v7}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/brandlogo/BrandLogoViewData;

    iget v12, v7, Lcom/android/camera/brandlogo/BrandLogoViewData;->offset:I

    move-object/from16 v7, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v11, p5

    .line 628
    invoke-static/range {v4 .. v12}, Lcom/android/camera/util/YUVUtilNative;->mergeBrandLogoNV21([BII[BIIIII)V

    .line 630
    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/android/camera/util/YuvToJpeg;->transByteData([BII)[B

    move-result-object p1

    .line 637
    .end local v10    # "stride":I
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionImpl;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/session/CaptureSessionImpl;->mContentUri:Landroid/net/Uri;

    .line 638
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionImpl;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionImpl;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    sget-object v5, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne v4, v5, :cond_7

    .line 639
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/session/CaptureSessionImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/session/CaptureSessionImpl;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionStartMillis:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/session/CaptureSessionImpl;->mLocation:Landroid/location/Location;

    move-object/from16 v16, v0

    new-instance v21, Lcom/android/camera/session/CaptureSessionImpl$5;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/camera/session/CaptureSessionImpl$5;-><init>(Lcom/android/camera/session/CaptureSessionImpl;Lcom/google/common/util/concurrent/SettableFuture;)V

    const-string v22, "image/jpeg"

    move-object/from16 v12, p1

    move/from16 v17, p3

    move/from16 v18, p4

    move/from16 v19, p5

    move-object/from16 v20, p6

    invoke-interface/range {v11 .. v22}, Lcom/android/camera/app/MediaSaver;->addDualSightImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;Ljava/lang/String;)V

    .line 748
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v4}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 749
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v4}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/watermark/WatermarkViewData;

    invoke-virtual {v4}, Lcom/android/camera/watermark/WatermarkViewData;->recycleBitmap()V

    .line 750
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/session/CaptureSessionImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    .line 752
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionImpl;->mBrandLogoViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v4}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 753
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionImpl;->mBrandLogoViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v4}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/brandlogo/BrandLogoViewData;

    invoke-virtual {v4}, Lcom/android/camera/brandlogo/BrandLogoViewData;->recycleBitmap()V

    .line 754
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/session/CaptureSessionImpl;->mBrandLogoViewData:Lcom/google/common/base/Optional;

    .line 756
    :cond_5
    sget-object v4, Lcom/android/camera/session/CaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "saveAndFinish end ... "

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 757
    return-object v26

    .line 633
    :cond_6
    const/16 v4, 0x11

    move/from16 v0, p7

    if-ne v0, v4, :cond_2

    .line 634
    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/android/camera/util/YuvToJpeg;->transByteData([BII)[B

    move-result-object p1

    goto/16 :goto_0

    .line 663
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/session/CaptureSessionImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/session/CaptureSessionImpl;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionStartMillis:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/session/CaptureSessionImpl;->mLocation:Landroid/location/Location;

    move-object/from16 v16, v0

    new-instance v21, Lcom/android/camera/session/CaptureSessionImpl$6;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/camera/session/CaptureSessionImpl$6;-><init>(Lcom/android/camera/session/CaptureSessionImpl;Lcom/google/common/util/concurrent/SettableFuture;)V

    move-object/from16 v12, p1

    move/from16 v17, p3

    move/from16 v18, p4

    move/from16 v19, p5

    move-object/from16 v20, p6

    invoke-interface/range {v11 .. v21}, Lcom/android/camera/app/MediaSaver;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V

    goto/16 :goto_1

    .line 689
    :cond_8
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/session/CaptureSessionImpl;->mSaveImgLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/session/CaptureSessionImpl;->mMirror:Z

    if-eqz v4, :cond_9

    .line 691
    const/16 v4, 0x11

    move/from16 v0, p7

    if-ne v0, v4, :cond_9

    .line 692
    move/from16 v0, p3

    int-to-double v4, v0

    const-wide/high16 v6, 0x4050000000000000L    # 64.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    mul-int/lit8 v10, v4, 0x40

    .line 693
    .restart local v10    # "stride":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 694
    .restart local v24    # "begintime":J
    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-static {v0, v1, v2, v10, v3}, Lcom/android/camera/util/YUVUtilNative;->mirrorNV21([BIIII)V

    .line 695
    sget-object v4, Lcom/android/camera/session/CaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mirrorNV21 time===="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v24

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 699
    .end local v10    # "stride":I
    .end local v24    # "begintime":J
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionImpl;->mBrandLogoViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v4}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 700
    const/16 v4, 0x11

    move/from16 v0, p7

    if-ne v0, v4, :cond_a

    .line 701
    move/from16 v0, p3

    int-to-double v4, v0

    const-wide/high16 v6, 0x4050000000000000L    # 64.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    mul-int/lit8 v10, v4, 0x40

    .line 702
    .restart local v10    # "stride":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 703
    .restart local v24    # "begintime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionImpl;->mBrandLogoViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v4}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/brandlogo/BrandLogoViewData;

    iget-object v4, v4, Lcom/android/camera/brandlogo/BrandLogoViewData;->mNV21A:[B

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/session/CaptureSessionImpl;->mBrandLogoViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v5}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/brandlogo/BrandLogoViewData;

    iget v5, v5, Lcom/android/camera/brandlogo/BrandLogoViewData;->logoWidth:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/session/CaptureSessionImpl;->mBrandLogoViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v6}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/brandlogo/BrandLogoViewData;

    iget v6, v6, Lcom/android/camera/brandlogo/BrandLogoViewData;->logoHeight:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/session/CaptureSessionImpl;->mBrandLogoViewData:Lcom/google/common/base/Optional;

    .line 704
    invoke-virtual {v7}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/brandlogo/BrandLogoViewData;

    iget v12, v7, Lcom/android/camera/brandlogo/BrandLogoViewData;->offset:I

    move-object/from16 v7, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v11, p5

    .line 703
    invoke-static/range {v4 .. v12}, Lcom/android/camera/util/YUVUtilNative;->mergeBrandLogoNV21([BII[BIIIII)V

    .line 705
    sget-object v4, Lcom/android/camera/session/CaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mergeBrandLogo time===="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v24

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 706
    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/android/camera/util/YuvToJpeg;->transByteData([BII)[B

    move-result-object p1

    .line 714
    .end local v10    # "stride":I
    .end local v24    # "begintime":J
    :cond_a
    :goto_2
    invoke-virtual/range {p6 .. p6}, Lcom/android/camera/exif/ExifInterface;->hasThumbnail()Z

    move-result v4

    if-nez v4, :cond_b

    .line 715
    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-static {v0, v1}, Lcom/android/camera/Thumbnail;->addThumbnail([BLcom/android/camera/exif/ExifInterface;)V

    .line 717
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionImpl;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionImpl;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    sget-object v5, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne v4, v5, :cond_e

    .line 718
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/session/CaptureSessionImpl;->mLocation:Landroid/location/Location;

    const-string v19, "image/jpeg"

    move/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v16, p1

    move/from16 v17, p3

    move/from16 v18, p4

    invoke-virtual/range {v11 .. v19}, Lcom/android/camera/session/PlaceholderManager;->finishDualSightPlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;Landroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/session/CaptureSessionImpl;->mContentUri:Landroid/net/Uri;

    .line 729
    :goto_3
    sget-object v4, Lcom/android/camera/session/CaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Photos] notifyTaskDone mUri:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/session/CaptureSessionImpl;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 731
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/session/CaptureSessionImpl;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v4, v5, v6}, Lcom/android/camera/session/SessionNotifier;->notifyTaskDone(Landroid/net/Uri;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 732
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionImpl;->mUri:Landroid/net/Uri;

    invoke-static {v4}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 733
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 735
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v4, :cond_3

    .line 736
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v4}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onCapturePersisted()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 738
    :catch_0
    move-exception v23

    .line 739
    .local v23, "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/camera/session/CaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Could not write file"

    move-object/from16 v0, v23

    invoke-static {v4, v5, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 740
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v4, :cond_c

    .line 741
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v4}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onCaptureFailed()V

    .line 743
    :cond_c
    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/camera/session/CaptureSessionImpl;->finishWithFailure(IZ)V

    .line 744
    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    goto/16 :goto_1

    .line 709
    .end local v23    # "e":Ljava/io/IOException;
    :cond_d
    const/16 v4, 0x11

    move/from16 v0, p7

    if-ne v0, v4, :cond_a

    .line 710
    :try_start_3
    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/android/camera/util/YuvToJpeg;->transByteData([BII)[B

    move-result-object p1

    goto/16 :goto_2

    .line 720
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionImpl;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/session/CaptureSessionImpl;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    sget-object v5, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->BOKEH:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne v4, v5, :cond_f

    .line 722
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/session/CaptureSessionImpl;->mLocation:Landroid/location/Location;

    const-string v19, "image/jpeg"

    move/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v16, p1

    move/from16 v17, p3

    move/from16 v18, p4

    invoke-virtual/range {v11 .. v19}, Lcom/android/camera/session/PlaceholderManager;->finishPlaceholderBokeh(Lcom/android/camera/session/PlaceholderManager$Placeholder;Landroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/session/CaptureSessionImpl;->mContentUri:Landroid/net/Uri;

    goto/16 :goto_3

    .line 733
    :catchall_0
    move-exception v4

    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 726
    :cond_f
    :try_start_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/session/CaptureSessionImpl;->mLocation:Landroid/location/Location;

    const-string v19, "image/jpeg"

    move/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v16, p1

    move/from16 v17, p3

    move/from16 v18, p4

    invoke-virtual/range {v11 .. v19}, Lcom/android/camera/session/PlaceholderManager;->finishPlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;Landroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/session/CaptureSessionImpl;->mContentUri:Landroid/net/Uri;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3
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
    .line 762
    .local p2, "imageName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    return-void
.end method

.method public savePostProcessImage([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;Landroid/graphics/Bitmap;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 24
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
    .line 766
    .local p2, "imageName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v21

    .line 767
    .local v21, "futureResult":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/common/base/Optional<Landroid/net/Uri;>;>;"
    sget-object v6, Lcom/android/camera/session/CaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "savePostProcessImage start ... "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/camera/session/CaptureSessionImpl;->mMirror:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 768
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/session/CaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v6, :cond_0

    .line 769
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/session/CaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v6}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onPostProcessImage()V

    .line 772
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/session/CaptureSessionImpl;->mUri:Landroid/net/Uri;

    invoke-interface {v6, v7}, Lcom/android/camera/session/CaptureSessionManager;->isSessionAlive(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 773
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    if-nez v6, :cond_4

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/session/CaptureSessionImpl;->mSaveImgLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 775
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/session/CaptureSessionImpl;->mContentUri:Landroid/net/Uri;

    if-eqz v6, :cond_1

    .line 776
    sget-object v6, Lcom/android/camera/session/CaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "final image had saved, ignore here."

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 777
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 803
    :goto_0
    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 846
    :goto_1
    sget-object v6, Lcom/android/camera/session/CaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "savePostProcessImage end ... "

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 847
    return-object v21

    .line 781
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/camera/session/CaptureSessionImpl;->mMirror:Z

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    move-object/from16 v0, p7

    invoke-static {v0, v6}, Lcom/android/camera/util/ImageUtil;->mirrorImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 783
    .local v22, "mirroredProcessImage":Landroid/graphics/Bitmap;
    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/session/CaptureSessionImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v6}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 784
    sget-object v6, Lcom/android/camera/session/CaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "mWatermarkViewData availale"

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 785
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/session/CaptureSessionImpl;->mPictureSize:Lcom/android/camera/util/Size;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/session/CaptureSessionImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v6}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/watermark/WatermarkViewData;

    move-object/from16 v6, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-static/range {v6 .. v11}, Lcom/android/camera/watermark/WatermarkImageUtil;->mergeWatermarkData([BIIILcom/android/camera/util/Size;Lcom/android/camera/watermark/WatermarkViewData;)[B

    move-result-object p1

    .line 786
    sget-object v6, Lcom/android/camera/session/CaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "mWatermarkViewData post-process image merged"

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 788
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/session/CaptureSessionImpl;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/camera/session/CaptureSessionImpl;->mContentUri:Landroid/net/Uri;

    .line 789
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/session/CaptureSessionImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/session/CaptureSessionImpl;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/session/CaptureSessionImpl;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionStartMillis:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/session/CaptureSessionImpl;->mLocation:Landroid/location/Location;

    const-string v18, "image/fake"

    new-instance v19, Lcom/android/camera/session/CaptureSessionImpl$7;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move-object/from16 v3, p7

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/session/CaptureSessionImpl$7;-><init>(Lcom/android/camera/session/CaptureSessionImpl;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/google/common/util/concurrent/SettableFuture;)V

    move/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p1

    move/from16 v16, p3

    move/from16 v17, p4

    invoke-interface/range {v7 .. v19}, Lcom/android/camera/app/MediaSaver;->updateImage(Landroid/net/Uri;Ljava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;Lcom/android/camera/app/MediaSaver$OnMediaUpdatedListener;)V

    goto/16 :goto_0

    .line 803
    .end local v22    # "mirroredProcessImage":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v6

    monitor-exit v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 781
    :cond_3
    const/16 v22, 0x0

    goto :goto_2

    .line 806
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/session/CaptureSessionImpl;->mSaveImgLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 807
    :try_start_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/session/CaptureSessionImpl;->mContentUri:Landroid/net/Uri;

    if-eqz v6, :cond_5

    .line 808
    sget-object v6, Lcom/android/camera/session/CaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "final image had saved, ignore here."

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 809
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 837
    :goto_3
    monitor-exit v15

    goto/16 :goto_1

    :catchall_1
    move-exception v6

    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 838
    :catch_0
    move-exception v20

    .line 839
    .local v20, "e":Ljava/io/IOException;
    sget-object v6, Lcom/android/camera/session/CaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "Could not write file : "

    move-object/from16 v0, v20

    invoke-static {v6, v7, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 813
    .end local v20    # "e":Ljava/io/IOException;
    :cond_5
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/camera/session/CaptureSessionImpl;->mMirror:Z

    if-eqz v6, :cond_8

    const/4 v6, 0x0

    move-object/from16 v0, p7

    invoke-static {v0, v6}, Lcom/android/camera/util/ImageUtil;->mirrorImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 814
    .restart local v22    # "mirroredProcessImage":Landroid/graphics/Bitmap;
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/camera/session/CaptureSessionImpl;->mMirror:Z

    if-eqz v6, :cond_6

    .line 815
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/android/camera/util/ImageUtil;->mirrorImage([BI)[B

    move-result-object p1

    .line 818
    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/session/CaptureSessionImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v6}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 819
    sget-object v6, Lcom/android/camera/session/CaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "mWatermarkViewData availale"

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 820
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/session/CaptureSessionImpl;->mPictureSize:Lcom/android/camera/util/Size;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/session/CaptureSessionImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v6}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/watermark/WatermarkViewData;

    move-object/from16 v6, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-static/range {v6 .. v11}, Lcom/android/camera/watermark/WatermarkImageUtil;->mergeWatermarkData([BIIILcom/android/camera/util/Size;Lcom/android/camera/watermark/WatermarkViewData;)[B

    move-result-object p1

    .line 821
    sget-object v6, Lcom/android/camera/session/CaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "mWatermarkViewData post-process image merged"

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 824
    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/session/CaptureSessionImpl;->mLocation:Landroid/location/Location;

    const-string v14, "image/fake"

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p1

    move/from16 v12, p3

    move/from16 v13, p4

    invoke-virtual/range {v6 .. v14}, Lcom/android/camera/session/PlaceholderManager;->updatePlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;Landroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BIILjava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/camera/session/CaptureSessionImpl;->mContentUri:Landroid/net/Uri;

    .line 825
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/session/CaptureSessionImpl;->mUri:Landroid/net/Uri;

    invoke-interface {v6, v7}, Lcom/android/camera/session/CaptureSessionManager;->isSessionAlive(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 826
    sget-object v6, Lcom/android/camera/session/CaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notifyPostProcessImageDone mUri : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/session/CaptureSessionImpl;->mUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 828
    sget-object v6, Lcom/android/camera/session/CaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Photos] notifyPostProcessImageDone mUri:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/session/CaptureSessionImpl;->mUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 830
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/session/CaptureSessionImpl;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/camera/session/CaptureSessionImpl;->mMirror:Z

    if-eqz v8, :cond_9

    .end local v22    # "mirroredProcessImage":Landroid/graphics/Bitmap;
    :goto_5
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-object/from16 v0, v22

    invoke-interface {v6, v7, v0, v8}, Lcom/android/camera/session/SessionNotifier;->notifyPostProcessImageDone(Landroid/net/Uri;Landroid/graphics/Bitmap;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 831
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/session/CaptureSessionImpl;->mUri:Landroid/net/Uri;

    invoke-static {v6}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 813
    :cond_8
    const/16 v22, 0x0

    goto/16 :goto_4

    .restart local v22    # "mirroredProcessImage":Landroid/graphics/Bitmap;
    :cond_9
    move-object/from16 v22, p7

    .line 830
    goto :goto_5

    .line 833
    :cond_a
    sget-object v6, Lcom/android/camera/session/CaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "session had been cancel after saving PostProcessImage, delete here."

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 834
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/session/CaptureSessionImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/session/CaptureSessionImpl;->mContentUri:Landroid/net/Uri;

    invoke-interface {v6, v7}, Lcom/android/camera/app/MediaSaver;->deleteImageFromMediaStore(Landroid/net/Uri;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_3

    .line 843
    .end local v22    # "mirroredProcessImage":Landroid/graphics/Bitmap;
    :cond_b
    sget-object v6, Lcom/android/camera/session/CaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "session had been cancel before saving PostProcessImage, ignore here."

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 844
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method public saveRawImage([BLcom/google/common/base/Optional;II)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 10
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
    .line 852
    .local p2, "imageName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 854
    .local v0, "futureResult":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/common/base/Optional<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v1, :cond_0

    .line 855
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v1}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onRawImage()V

    .line 858
    :cond_0
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    if-eqz v1, :cond_1

    .line 859
    iget v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSaveRawCount:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    iget-object v3, p0, Lcom/android/camera/session/CaptureSessionImpl;->mTitle:Ljava/lang/String;

    .line 860
    .local v3, "title":Ljava/lang/String;
    :goto_0
    iget v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSaveRawCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSaveRawCount:I

    .line 861
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    iget-wide v4, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionStartMillis:J

    iget-object v6, p0, Lcom/android/camera/session/CaptureSessionImpl;->mLocation:Landroid/location/Location;

    new-instance v9, Lcom/android/camera/session/CaptureSessionImpl$8;

    invoke-direct {v9, p0, v0}, Lcom/android/camera/session/CaptureSessionImpl$8;-><init>(Lcom/android/camera/session/CaptureSessionImpl;Lcom/google/common/util/concurrent/SettableFuture;)V

    move-object v2, p1

    move v7, p3

    move v8, p4

    invoke-interface/range {v1 .. v9}, Lcom/android/camera/app/MediaSaver;->addRawImage([BLjava/lang/String;JLandroid/location/Location;IILcom/android/camera/app/MediaSaver$OnRawDataSavedListener;)V

    .line 870
    .end local v3    # "title":Ljava/lang/String;
    :cond_1
    return-object v0

    .line 859
    :cond_2
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->instance()Lcom/android/camera/util/CameraUtil;

    move-result-object v1

    iget-wide v4, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionStartMillis:J

    invoke-virtual {v1, v4, v5}, Lcom/android/camera/util/CameraUtil;->createJpegName(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
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
    .line 1014
    .local p1, "brandLogoViewDataOptional":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/android/camera/brandlogo/BrandLogoViewData;>;"
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mBrandLogoViewData:Lcom/google/common/base/Optional;

    .line 1015
    return-void
.end method

.method public setCaptureMode(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V
    .locals 0
    .param p1, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .prologue
    .line 1053
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .line 1054
    return-void
.end method

.method public setDisableSessionReturnData(Z)V
    .locals 0
    .param p1, "isDisable"    # Z

    .prologue
    .line 1067
    iput-boolean p1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mDisableSessionReturnData:Z

    .line 1068
    return-void
.end method

.method public setForceHideThumbnail(Z)V
    .locals 0
    .param p1, "hideThumbnail"    # Z

    .prologue
    .line 1033
    iput-boolean p1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mForceHideThumbnail:Z

    .line 1034
    return-void
.end method

.method public setImageHWRotate(Z)V
    .locals 0
    .param p1, "hw_do_rotate"    # Z

    .prologue
    .line 1043
    iput-boolean p1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mIsImageHWRotate:Z

    .line 1044
    return-void
.end method

.method public setIsCaptureIntent(Z)V
    .locals 0
    .param p1, "isCaptureIntent"    # Z

    .prologue
    .line 1143
    iput-boolean p1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mIsCaptureIntent:Z

    .line 1144
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mLocation:Landroid/location/Location;

    .line 193
    return-void
.end method

.method public setMainCamera(Z)V
    .locals 0
    .param p1, "isMainCamera"    # Z

    .prologue
    .line 1077
    iput-boolean p1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mIsMainCamera:Z

    .line 1078
    return-void
.end method

.method public setMirror(Z)V
    .locals 0
    .param p1, "mirror"    # Z

    .prologue
    .line 1098
    iput-boolean p1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mMirror:Z

    .line 1099
    return-void
.end method

.method public setPrevPhoto([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 1087
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mPrevPhotoData:[B

    .line 1088
    return-void
.end method

.method public setPreviewOnly(Z)V
    .locals 0
    .param p1, "previewOnly"    # Z

    .prologue
    .line 1057
    iput-boolean p1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mIsPreviewOnly:Z

    .line 1058
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 5
    .param p1, "percent"    # I

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mHasPreviouslySetProgress:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v1}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onProcessingStarted()V

    .line 206
    :cond_0
    iput p1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mProgressPercent:I

    .line 207
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionImpl;->mUri:Landroid/net/Uri;

    iget v3, p0, Lcom/android/camera/session/CaptureSessionImpl;->mProgressPercent:I

    iget-object v4, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/camera/session/SessionNotifier;->notifyTaskProgress(Landroid/net/Uri;ILcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 208
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mProgressListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/session/CaptureSession$ProgressListener;

    .line 209
    .local v0, "listener":Lcom/android/camera/session/CaptureSession$ProgressListener;
    invoke-interface {v0, p1}, Lcom/android/camera/session/CaptureSession$ProgressListener;->onProgressChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 202
    .end local v0    # "listener":Lcom/android/camera/session/CaptureSession$ProgressListener;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 211
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setProgressMessage(I)V
    .locals 4
    .param p1, "messageId"    # I

    .prologue
    .line 220
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mProgressMessageId:I

    .line 221
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionImpl;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v1, v2, p1, v3}, Lcom/android/camera/session/SessionNotifier;->notifyTaskProgressText(Landroid/net/Uri;ILcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 222
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mProgressListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/session/CaptureSession$ProgressListener;

    .line 223
    .local v0, "listener":Lcom/android/camera/session/CaptureSession$ProgressListener;
    invoke-interface {v0, p1}, Lcom/android/camera/session/CaptureSession$ProgressListener;->onStatusMessageChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 220
    .end local v0    # "listener":Lcom/android/camera/session/CaptureSession$ProgressListener;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 225
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public setSceneMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "scene"    # Ljava/lang/String;

    .prologue
    .line 1103
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSceneMode:Ljava/lang/String;

    .line 1104
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
    .line 1010
    .local p1, "watermarkViewDataOptional":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/android/camera/watermark/WatermarkViewData;>;"
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    .line 1011
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
    .line 263
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mIsFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 279
    :goto_0
    monitor-exit p0

    return-void

    .line 267
    :cond_0
    if-eqz p1, :cond_1

    .line 268
    :try_start_1
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    .line 269
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onCaptureStarted()V

    .line 272
    :cond_1
    iput-object p2, p0, Lcom/android/camera/session/CaptureSessionImpl;->mPictureSize:Lcom/android/camera/util/Size;

    .line 273
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mProgressMessageId:I

    .line 274
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mTitle:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionStartMillis:J

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/android/camera/session/PlaceholderManager;->insertEmptyPlaceholder(Ljava/lang/String;Lcom/android/camera/util/Size;J)Lcom/android/camera/session/PlaceholderManager$Placeholder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    .line 276
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    iget-object v0, v0, Lcom/android/camera/session/PlaceholderManager$Placeholder;->outputUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mUri:Landroid/net/Uri;

    .line 277
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mUri:Landroid/net/Uri;

    invoke-interface {v0, v1, p0}, Lcom/android/camera/session/CaptureSessionManager;->putSession(Landroid/net/Uri;Lcom/android/camera/session/CaptureSession;)V

    .line 278
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v0, v1, v2}, Lcom/android/camera/session/SessionNotifier;->notifyTaskQueued(Landroid/net/Uri;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startSession(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Landroid/graphics/Bitmap;I)V
    .locals 4
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
    .line 284
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mIsFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 300
    :goto_0
    monitor-exit p0

    return-void

    .line 288
    :cond_0
    if-eqz p1, :cond_1

    .line 289
    :try_start_1
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    .line 290
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onCaptureStarted()V

    .line 293
    :cond_1
    iput p3, p0, Lcom/android/camera/session/CaptureSessionImpl;->mProgressMessageId:I

    .line 294
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mTitle:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionStartMillis:J

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/android/camera/session/PlaceholderManager;->insertPlaceholder(Ljava/lang/String;Landroid/graphics/Bitmap;J)Lcom/android/camera/session/PlaceholderManager$Placeholder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    .line 296
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    iget-object v0, v0, Lcom/android/camera/session/PlaceholderManager$Placeholder;->outputUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mUri:Landroid/net/Uri;

    .line 297
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mUri:Landroid/net/Uri;

    invoke-interface {v0, v1, p0}, Lcom/android/camera/session/CaptureSessionManager;->putSession(Landroid/net/Uri;Lcom/android/camera/session/CaptureSession;)V

    .line 298
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v0, v1, v2}, Lcom/android/camera/session/SessionNotifier;->notifyTaskQueued(Landroid/net/Uri;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 299
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/camera/session/CaptureSessionImpl;->onCaptureIndicatorUpdate(Landroid/graphics/Bitmap;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startSession(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Landroid/net/Uri;I)V
    .locals 3
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
    .line 330
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 331
    :try_start_0
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    .line 332
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onCaptureStarted()V

    .line 335
    :cond_0
    iput-object p2, p0, Lcom/android/camera/session/CaptureSessionImpl;->mUri:Landroid/net/Uri;

    .line 336
    iput p3, p0, Lcom/android/camera/session/CaptureSessionImpl;->mProgressMessageId:I

    .line 337
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    invoke-virtual {v0, p2}, Lcom/android/camera/session/PlaceholderManager;->convertToPlaceholder(Landroid/net/Uri;)Lcom/android/camera/session/PlaceholderManager$Placeholder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    .line 339
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mUri:Landroid/net/Uri;

    invoke-interface {v0, v1, p0}, Lcom/android/camera/session/CaptureSessionManager;->putSession(Landroid/net/Uri;Lcom/android/camera/session/CaptureSession;)V

    .line 340
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v0, v1, v2}, Lcom/android/camera/session/SessionNotifier;->notifyTaskQueued(Landroid/net/Uri;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    monitor-exit p0

    return-void

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startSession(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;[BI)V
    .locals 6
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
    .line 305
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mIsFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 325
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 309
    :cond_1
    if-eqz p1, :cond_2

    .line 310
    :try_start_1
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    .line 311
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v1}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onCaptureStarted()V

    .line 314
    :cond_2
    iput p3, p0, Lcom/android/camera/session/CaptureSessionImpl;->mProgressMessageId:I

    .line 315
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionImpl;->mTitle:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionStartMillis:J

    invoke-virtual {v1, v2, p2, v4, v5}, Lcom/android/camera/session/PlaceholderManager;->insertPlaceholder(Ljava/lang/String;[BJ)Lcom/android/camera/session/PlaceholderManager$Placeholder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    .line 317
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    iget-object v1, v1, Lcom/android/camera/session/PlaceholderManager$Placeholder;->outputUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mUri:Landroid/net/Uri;

    .line 318
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionImpl;->mUri:Landroid/net/Uri;

    invoke-interface {v1, v2, p0}, Lcom/android/camera/session/CaptureSessionManager;->putSession(Landroid/net/Uri;Lcom/android/camera/session/CaptureSession;)V

    .line 319
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionImpl;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v1, v2, v3}, Lcom/android/camera/session/SessionNotifier;->notifyTaskQueued(Landroid/net/Uri;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 320
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    .line 321
    invoke-virtual {v1, v2}, Lcom/android/camera/session/PlaceholderManager;->getPlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;)Lcom/google/common/base/Optional;

    move-result-object v0

    .line 322
    .local v0, "placeholderBitmap":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/camera/session/CaptureSessionImpl;->onCaptureIndicatorUpdate(Landroid/graphics/Bitmap;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 305
    .end local v0    # "placeholderBitmap":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Landroid/graphics/Bitmap;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public unregisterImageSavedListener()V
    .locals 0

    .prologue
    .line 1024
    return-void
.end method

.method public updateCaptureIndicatorThumbnail(Landroid/graphics/Bitmap;I)V
    .locals 2
    .param p1, "indicator"    # Landroid/graphics/Bitmap;
    .param p2, "rotationDegrees"    # I

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onTinyThumb()V

    .line 247
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mMirror:Z

    if-eqz v0, :cond_1

    .line 248
    invoke-static {p1, p2}, Lcom/android/camera/util/ImageUtil;->mirrorImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    sget-object v0, Lcom/android/camera/session/CaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "mWatermarkViewData availale"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mPictureSize:Lcom/android/camera/util/Size;

    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mWatermarkViewData:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/watermark/WatermarkViewData;

    invoke-static {p1, p2, v1, v0}, Lcom/android/camera/watermark/WatermarkImageUtil;->mergeWatermarkThmbnail(Landroid/graphics/Bitmap;ILcom/android/camera/util/Size;Lcom/android/camera/watermark/WatermarkViewData;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 254
    sget-object v0, Lcom/android/camera/session/CaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "mWatermarkViewData thumbnail merged"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 257
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/camera/session/CaptureSessionImpl;->onCaptureIndicatorUpdate(Landroid/graphics/Bitmap;I)V

    .line 258
    return-void
.end method

.method public updatePreview()V
    .locals 3

    .prologue
    .line 929
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mTempOutputFile:Lcom/android/camera/session/TemporarySessionFile;

    invoke-virtual {v1}, Lcom/android/camera/session/TemporarySessionFile;->isUsable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 930
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mTempOutputFile:Lcom/android/camera/session/TemporarySessionFile;

    invoke-virtual {v1}, Lcom/android/camera/session/TemporarySessionFile;->getFile()Ljava/io/File;

    move-result-object v0

    .line 935
    .local v0, "path":Ljava/io/File;
    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/camera/session/CaptureSessionImpl$10;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/session/CaptureSessionImpl$10;-><init>(Lcom/android/camera/session/CaptureSessionImpl;Ljava/io/File;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 953
    .end local v0    # "path":Ljava/io/File;
    :goto_0
    return-void

    .line 932
    :cond_0
    sget-object v1, Lcom/android/camera/session/CaptureSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Cannot update preview"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateThumbnail(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    if-nez v0, :cond_0

    .line 239
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onMediumThumb()V

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/session/PlaceholderManager;->replacePlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;Landroid/graphics/Bitmap;)V

    .line 238
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v0, v1, v2}, Lcom/android/camera/session/SessionNotifier;->notifySessionUpdated(Landroid/net/Uri;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    goto :goto_0
.end method
