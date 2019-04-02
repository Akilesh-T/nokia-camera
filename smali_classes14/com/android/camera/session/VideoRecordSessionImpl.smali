.class public Lcom/android/camera/session/VideoRecordSessionImpl;
.super Ljava/lang/Object;
.source "VideoRecordSessionImpl.java"

# interfaces
.implements Lcom/android/camera/session/CaptureSession;


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private dataCollect_quality:I

.field private dataCollect_videoCodec:Ljava/lang/String;

.field private dataCollect_videoDuration:J

.field private dataCollect_videoFrameRate:I

.field private final mCamcorderProfile:Landroid/media/CamcorderProfile;

.field private mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

.field private final mCaptureSessionStatsCollector:Lcom/android/camera/stats/CaptureSessionStatsCollector;

.field private final mContentValueFeature:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;"
        }
    .end annotation
.end field

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

.field private mRecordingStartTime:J

.field private final mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

.field private final mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

.field private final mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

.field private final mSessionStartMillis:J

.field private final mTitle:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mVideoCaptureRate:F

.field private final mVideoFilename:Ljava/lang/String;

.field private final mVideoRecordListener:Lcom/android/camera/session/VideoRecordListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "VideoRecSessionImpl"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/session/VideoRecordSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/media/CamcorderProfile;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Lcom/android/camera/session/CaptureSessionManager$SessionListener;Lcom/android/camera/session/PlaceholderManager;Lcom/android/camera/app/MediaSaver;)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "camcorderProfile"    # Landroid/media/CamcorderProfile;
    .param p3, "sessionStartMillis"    # J
    .param p5, "location"    # Landroid/location/Location;
    .param p6, "captureSessionManager"    # Lcom/android/camera/session/CaptureSessionManager;
    .param p7, "sessionNotifier"    # Lcom/android/camera/session/SessionNotifier;
    .param p8, "sessionListener"    # Lcom/android/camera/session/CaptureSessionManager$SessionListener;
    .param p9, "placeholderManager"    # Lcom/android/camera/session/PlaceholderManager;
    .param p10, "mediaSaver"    # Lcom/android/camera/app/MediaSaver;

    .prologue
    const/4 v3, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mProgressListeners:Ljava/util/HashSet;

    .line 98
    iput v3, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mProgressPercent:I

    .line 106
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mVideoCaptureRate:F

    .line 109
    new-instance v2, Lcom/android/camera/stats/CaptureSessionStatsCollector;

    invoke-direct {v2}, Lcom/android/camera/stats/CaptureSessionStatsCollector;-><init>()V

    iput-object v2, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mCaptureSessionStatsCollector:Lcom/android/camera/stats/CaptureSessionStatsCollector;

    .line 122
    iput-boolean v3, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mHasPreviouslySetProgress:Z

    .line 124
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->dataCollect_videoCodec:Ljava/lang/String;

    .line 129
    new-instance v2, Lcom/android/camera/session/VideoRecordSessionImpl$1;

    invoke-direct {v2, p0}, Lcom/android/camera/session/VideoRecordSessionImpl$1;-><init>(Lcom/android/camera/session/VideoRecordSessionImpl;)V

    iput-object v2, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mVideoRecordListener:Lcom/android/camera/session/VideoRecordListener;

    .line 165
    iput-object p1, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mTitle:Ljava/lang/String;

    .line 166
    iput-object p2, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    .line 167
    iput-wide p3, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mSessionStartMillis:J

    .line 168
    iput-object p5, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mLocation:Landroid/location/Location;

    .line 169
    iput-object p6, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    .line 170
    iput-object p7, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    .line 171
    iput-object p8, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .line 172
    iput-object p9, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    .line 173
    iput-object p10, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    .line 174
    iput-boolean v3, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mIsFinished:Z

    .line 176
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mContentValueFeature:Lcom/google/common/util/concurrent/SettableFuture;

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-static {v3}, Lcom/android/camera/util/VideoUtil;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "filename":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "path":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mVideoFilename:Ljava/lang/String;

    .line 181
    iget-object v2, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->quality:I

    iput v2, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->dataCollect_quality:I

    .line 182
    iget-object v2, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-static {v2}, Lcom/android/camera/util/VideoUtil;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->dataCollect_videoCodec:Ljava/lang/String;

    .line 183
    iget-object v2, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    iput v2, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->dataCollect_videoFrameRate:I

    .line 184
    new-instance v2, Lcom/android/camera/session/VideoRecordSessionImpl$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/camera/session/VideoRecordSessionImpl$2;-><init>(Lcom/android/camera/session/VideoRecordSessionImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 205
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/session/VideoRecordSessionImpl;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/VideoRecordSessionImpl;
    .param p1, "x1"    # J

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mRecordingStartTime:J

    return-wide p1
.end method

.method static synthetic access$1000(Lcom/android/camera/session/VideoRecordSessionImpl;)Lcom/android/camera/session/CaptureSessionManager$SessionListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/VideoRecordSessionImpl;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/session/VideoRecordSessionImpl;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/session/VideoRecordSessionImpl;
    .param p1, "x1"    # F

    .prologue
    .line 64
    iput p1, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mVideoCaptureRate:F

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/session/VideoRecordSessionImpl;)Lcom/android/camera/session/SessionNotifier;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/VideoRecordSessionImpl;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/session/VideoRecordSessionImpl;)Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/VideoRecordSessionImpl;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/session/VideoRecordSessionImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/session/VideoRecordSessionImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/camera/session/VideoRecordSessionImpl;->appendXmpData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/session/VideoRecordSessionImpl;)Lcom/android/camera/session/PlaceholderManager$Placeholder;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/VideoRecordSessionImpl;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/session/VideoRecordSessionImpl;)Lcom/android/camera/session/PlaceholderManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/VideoRecordSessionImpl;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/session/VideoRecordSessionImpl;)Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/VideoRecordSessionImpl;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/session/VideoRecordSessionImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/VideoRecordSessionImpl;

    .prologue
    .line 64
    iget v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->dataCollect_quality:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/camera/session/VideoRecordSessionImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/session/VideoRecordSessionImpl;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->dataCollect_quality:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/camera/session/VideoRecordSessionImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/VideoRecordSessionImpl;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->dataCollect_videoCodec:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/session/VideoRecordSessionImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/VideoRecordSessionImpl;

    .prologue
    .line 64
    iget v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->dataCollect_videoFrameRate:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/session/VideoRecordSessionImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/session/VideoRecordSessionImpl;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/camera/session/VideoRecordSessionImpl;->saveVideoAndFinish()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/camera/session/VideoRecordSessionImpl;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/session/VideoRecordSessionImpl;

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->dataCollect_videoDuration:J

    return-wide v0
.end method

.method static synthetic access$300()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/camera/session/VideoRecordSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/session/VideoRecordSessionImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/VideoRecordSessionImpl;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/session/VideoRecordSessionImpl;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/session/VideoRecordSessionImpl;

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mSessionStartMillis:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/camera/session/VideoRecordSessionImpl;)Landroid/media/CamcorderProfile;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/VideoRecordSessionImpl;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/session/VideoRecordSessionImpl;)Landroid/location/Location;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/VideoRecordSessionImpl;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/session/VideoRecordSessionImpl;)Lcom/google/common/util/concurrent/SettableFuture;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/VideoRecordSessionImpl;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mContentValueFeature:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/session/VideoRecordSessionImpl;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/session/VideoRecordSessionImpl;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method private appendXmpData(Ljava/lang/String;)V
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 508
    const/4 v1, 0x0

    .line 510
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    sget-object v3, Lcom/android/camera/session/VideoRecordSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "append video xmp data start"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 511
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 512
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v3, Lcom/android/camera/xmp/DualSightXMPUtil;->DualSightVideoXMP:[B

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 513
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 514
    sget-object v3, Lcom/android/camera/session/VideoRecordSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "append video xmp data end"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, v2

    .line 522
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 515
    :catch_0
    move-exception v0

    .line 516
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 517
    sget-object v3, Lcom/android/camera/session/VideoRecordSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "append video xmp data exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 518
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 519
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 520
    sget-object v3, Lcom/android/camera/session/VideoRecordSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "append video xmp data exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 518
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 515
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private cleanupEmptyFile()V
    .locals 6

    .prologue
    .line 364
    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 365
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 366
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    sget-object v1, Lcom/android/camera/session/VideoRecordSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty video file deleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 370
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private onCaptureIndicatorUpdate(Landroid/graphics/Bitmap;I)V
    .locals 6
    .param p1, "indicator"    # Landroid/graphics/Bitmap;
    .param p2, "rotationDegrees"    # I

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mUri:Landroid/net/Uri;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-object v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/session/SessionNotifier;->notifySessionCaptureIndicatorAvailable(Landroid/net/Uri;Landroid/graphics/Bitmap;IZLcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 596
    return-void
.end method

.method private saveVideoAndFinish()V
    .locals 12

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x1

    .line 374
    iput-boolean v10, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mIsFinished:Z

    .line 375
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v6

    const-string v7, "saveVideoAndFinish"

    invoke-virtual {v6, v7}, Lcom/android/camera/stats/profiler/Profilers;->guard(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v5

    .line 378
    .local v5, "guard":Lcom/android/camera/stats/profiler/Profile;
    :try_start_0
    iget-object v6, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mContentValueFeature:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v6}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Optional;

    .line 379
    .local v0, "contentValues":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Landroid/content/ContentValues;>;"
    const-string v6, "mContentValueFeature.get"

    invoke-interface {v5, v6}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 382
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mRecordingStartTime:J

    sub-long/2addr v6, v8

    long-to-float v6, v6

    iget v7, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mVideoCaptureRate:F

    mul-float/2addr v6, v7

    float-to-long v2, v6

    .line 383
    .local v2, "duration":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gtz v6, :cond_0

    .line 384
    sget-object v6, Lcom/android/camera/session/VideoRecordSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Video duration <= 0 : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 386
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    const-string v7, "duration"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 388
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    const-string v7, "_size"

    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 389
    iput-wide v2, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->dataCollect_videoDuration:J

    .line 390
    const-string v6, "contentValues update"

    invoke-interface {v5, v6}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    const-string v7, "_data"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 393
    .local v4, "finalPath":Ljava/lang/String;
    if-eqz v4, :cond_1

    iget-object v6, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 394
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 395
    const-string v6, "rename video done"

    invoke-interface {v5, v6}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 398
    :cond_1
    iget-object v6, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    if-nez v6, :cond_3

    .line 399
    iget-object v6, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    sget-object v7, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    if-ne v6, v7, :cond_2

    .line 400
    invoke-direct {p0, v4}, Lcom/android/camera/session/VideoRecordSessionImpl;->appendXmpData(Ljava/lang/String;)V

    .line 401
    iget-object v7, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    new-instance v8, Lcom/android/camera/session/VideoRecordSessionImpl$3;

    invoke-direct {v8, p0, v5, v4}, Lcom/android/camera/session/VideoRecordSessionImpl$3;-><init>(Lcom/android/camera/session/VideoRecordSessionImpl;Lcom/android/camera/stats/profiler/Profile;Ljava/lang/String;)V

    invoke-interface {v7, v4, v6, v8}, Lcom/android/camera/app/MediaSaver;->addDualSightVideo(Ljava/lang/String;Landroid/content/ContentValues;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V

    .line 505
    .end local v0    # "contentValues":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Landroid/content/ContentValues;>;"
    .end local v2    # "duration":J
    .end local v4    # "finalPath":Ljava/lang/String;
    :goto_0
    return-void

    .line 422
    .restart local v0    # "contentValues":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Landroid/content/ContentValues;>;"
    .restart local v2    # "duration":J
    .restart local v4    # "finalPath":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    new-instance v8, Lcom/android/camera/session/VideoRecordSessionImpl$4;

    invoke-direct {v8, p0, v5, v4}, Lcom/android/camera/session/VideoRecordSessionImpl$4;-><init>(Lcom/android/camera/session/VideoRecordSessionImpl;Lcom/android/camera/stats/profiler/Profile;Ljava/lang/String;)V

    invoke-interface {v7, v4, v6, v8}, Lcom/android/camera/app/MediaSaver;->addVideo(Ljava/lang/String;Landroid/content/ContentValues;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 500
    .end local v0    # "contentValues":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Landroid/content/ContentValues;>;"
    .end local v2    # "duration":J
    .end local v4    # "finalPath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 501
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "mContentValueFeature.get exception"

    invoke-interface {v5, v6}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 502
    sget-object v6, Lcom/android/camera/session/VideoRecordSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Video content get error : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 503
    invoke-virtual {p0, v11, v10}, Lcom/android/camera/session/VideoRecordSessionImpl;->finishWithFailure(IZ)V

    goto :goto_0

    .line 445
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "contentValues":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Landroid/content/ContentValues;>;"
    .restart local v2    # "duration":J
    .restart local v4    # "finalPath":Ljava/lang/String;
    :cond_3
    :try_start_1
    new-instance v6, Lcom/android/camera/session/VideoRecordSessionImpl$5;

    invoke-direct {v6, p0, v4, v0, v5}, Lcom/android/camera/session/VideoRecordSessionImpl$5;-><init>(Lcom/android/camera/session/VideoRecordSessionImpl;Ljava/lang/String;Lcom/google/common/base/Optional;Lcom/android/camera/stats/profiler/Profile;)V

    invoke-static {v6}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 496
    .end local v2    # "duration":J
    .end local v4    # "finalPath":Ljava/lang/String;
    :cond_4
    const-string v6, "Video content value not present"

    invoke-interface {v5, v6}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 497
    sget-object v6, Lcom/android/camera/session/VideoRecordSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "Video content value not present"

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 498
    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/session/VideoRecordSessionImpl;->finishWithFailure(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public addProgressListener(Lcom/android/camera/session/CaptureSession$ProgressListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ProgressListener;

    .prologue
    .line 577
    iget v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mProgressMessageId:I

    if-lez v0, :cond_0

    .line 578
    iget v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mProgressMessageId:I

    invoke-interface {p1, v0}, Lcom/android/camera/session/CaptureSession$ProgressListener;->onStatusMessageChanged(I)V

    .line 580
    :cond_0
    iget v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mProgressPercent:I

    invoke-interface {p1, v0}, Lcom/android/camera/session/CaptureSession$ProgressListener;->onProgressChanged(I)V

    .line 581
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mProgressListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 582
    return-void
.end method

.method public declared-synchronized cancel()V
    .locals 4

    .prologue
    .line 334
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/android/camera/session/CaptureSessionManager;->removeSession(Landroid/net/Uri;)Lcom/android/camera/session/CaptureSession;

    .line 336
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mUri:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/session/SessionNotifier;->notifyTaskCanceled(Landroid/net/Uri;ZLcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 337
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onCaptureCanceled()V

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    invoke-virtual {v0, v1}, Lcom/android/camera/session/PlaceholderManager;->removePlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;)V

    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    :cond_1
    monitor-exit p0

    return-void

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public finalizeSession()V
    .locals 2

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    invoke-virtual {v0, v1}, Lcom/android/camera/session/PlaceholderManager;->removePlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;)V

    .line 592
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    if-nez v0, :cond_0

    .line 541
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call finish without calling startSession first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mIsFinished:Z

    .line 545
    return-void
.end method

.method public finishWithFailure(IZ)V
    .locals 6
    .param p1, "failureMessageId"    # I
    .param p2, "removeFromFilmstrip"    # Z

    .prologue
    const/4 v4, 0x1

    .line 563
    sget-object v0, Lcom/android/camera/session/VideoRecordSessionImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 564
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    if-nez v0, :cond_0

    .line 565
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call finish without calling startSession first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 568
    :cond_0
    iput-boolean v4, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mIsFinished:Z

    .line 569
    invoke-direct {p0}, Lcom/android/camera/session/VideoRecordSessionImpl;->cleanupEmptyFile()V

    .line 570
    iput p1, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mProgressMessageId:I

    .line 571
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mUri:Landroid/net/Uri;

    invoke-interface {v0, v1, p1}, Lcom/android/camera/session/CaptureSessionManager;->putErrorMessage(Landroid/net/Uri;I)V

    .line 572
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/session/SessionNotifier;->notifyTaskFailed(Landroid/net/Uri;IZZLcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 573
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
    .line 715
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCaptureSessionForMap()Lcom/android/camera/session/CaptureSession;
    .locals 1

    .prologue
    .line 600
    new-instance v0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;

    invoke-direct {v0, p0}, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;-><init>(Lcom/android/camera/session/CaptureSession;)V

    return-object v0
.end method

.method public getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mCaptureSessionStatsCollector:Lcom/android/camera/stats/CaptureSessionStatsCollector;

    return-object v0
.end method

.method public getExternalUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getPrevPhoto()[B
    .locals 1

    .prologue
    .line 690
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1

    .prologue
    .line 244
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mProgressPercent:I
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
    .line 263
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mProgressMessageId:I
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
    .line 705
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTempOutputFile()Lcom/android/camera/session/TemporarySessionFile;
    .locals 1

    .prologue
    .line 549
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getVideoFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mVideoFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoRecordListener()Lcom/android/camera/session/VideoRecordListener;
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mVideoRecordListener:Lcom/android/camera/session/VideoRecordListener;

    return-object v0
.end method

.method public isCaptureIntent()Z
    .locals 1

    .prologue
    .line 735
    const/4 v0, 0x0

    return v0
.end method

.method public isDisableSessionReturnData()Z
    .locals 1

    .prologue
    .line 669
    const/4 v0, 0x0

    return v0
.end method

.method public isFirstShotInTwiceShot()Z
    .locals 1

    .prologue
    .line 710
    const/4 v0, 0x0

    return v0
.end method

.method public isForceHideThumbnail()Z
    .locals 1

    .prologue
    .line 638
    const/4 v0, 0x0

    return v0
.end method

.method public isImageHWRotate()Z
    .locals 1

    .prologue
    .line 648
    const/4 v0, 0x0

    return v0
.end method

.method public isMainCamera()Z
    .locals 1

    .prologue
    .line 680
    const/4 v0, 0x0

    return v0
.end method

.method public isPreviewOnly()Z
    .locals 1

    .prologue
    .line 659
    const/4 v0, 0x0

    return v0
.end method

.method public needMirror()Z
    .locals 1

    .prologue
    .line 720
    const/4 v0, 0x0

    return v0
.end method

.method public onCaptureFinish()V
    .locals 0

    .prologue
    .line 726
    return-void
.end method

.method public onCaptureStart()V
    .locals 0

    .prologue
    .line 731
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
    .line 605
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public registerImageSavedListener(Lcom/android/camera/session/CaptureSession$ImageSavedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ImageSavedListener;

    .prologue
    .line 619
    return-void
.end method

.method public removeProgressListener(Lcom/android/camera/session/CaptureSession$ProgressListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ProgressListener;

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mProgressListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 587
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
    .line 355
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
    .line 350
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
    .line 360
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
    .line 526
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
    .line 530
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
    .line 535
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
    .line 615
    .local p1, "brandLogoViewDataOptional":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/android/camera/brandlogo/BrandLogoViewData;>;"
    return-void
.end method

.method public setCaptureMode(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V
    .locals 0
    .param p1, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .prologue
    .line 653
    iput-object p1, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mCaptureMode:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .line 654
    return-void
.end method

.method public setDisableSessionReturnData(Z)V
    .locals 0
    .param p1, "isDisable"    # Z

    .prologue
    .line 665
    return-void
.end method

.method public setForceHideThumbnail(Z)V
    .locals 0
    .param p1, "hideThumbnail"    # Z

    .prologue
    .line 634
    return-void
.end method

.method public setImageHWRotate(Z)V
    .locals 0
    .param p1, "hw_do_rotate"    # Z

    .prologue
    .line 644
    return-void
.end method

.method public setIsCaptureIntent(Z)V
    .locals 0
    .param p1, "isCaptureIntent"    # Z

    .prologue
    .line 741
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mLocation:Landroid/location/Location;

    .line 240
    return-void
.end method

.method public setMainCamera(Z)V
    .locals 0
    .param p1, "isMainCamera"    # Z

    .prologue
    .line 676
    return-void
.end method

.method public setMirror(Z)V
    .locals 0
    .param p1, "mirror"    # Z

    .prologue
    .line 696
    return-void
.end method

.method public setPrevPhoto([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 686
    return-void
.end method

.method public setPreviewOnly(Z)V
    .locals 0
    .param p1, "previewOnly"    # Z

    .prologue
    .line 657
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 5
    .param p1, "percent"    # I

    .prologue
    .line 249
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mHasPreviouslySetProgress:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v1}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onProcessingStarted()V

    .line 251
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mHasPreviouslySetProgress:Z

    .line 254
    :cond_0
    iput p1, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mProgressPercent:I

    .line 255
    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v2, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mUri:Landroid/net/Uri;

    iget v3, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mProgressPercent:I

    iget-object v4, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/camera/session/SessionNotifier;->notifyTaskProgress(Landroid/net/Uri;ILcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 256
    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mProgressListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/session/CaptureSession$ProgressListener;

    .line 257
    .local v0, "listener":Lcom/android/camera/session/CaptureSession$ProgressListener;
    invoke-interface {v0, p1}, Lcom/android/camera/session/CaptureSession$ProgressListener;->onProgressChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 249
    .end local v0    # "listener":Lcom/android/camera/session/CaptureSession$ProgressListener;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 259
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setProgressMessage(I)V
    .locals 4
    .param p1, "messageId"    # I

    .prologue
    .line 268
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mProgressMessageId:I

    .line 269
    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v2, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v1, v2, p1, v3}, Lcom/android/camera/session/SessionNotifier;->notifyTaskProgressText(Landroid/net/Uri;ILcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 270
    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mProgressListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/session/CaptureSession$ProgressListener;

    .line 271
    .local v0, "listener":Lcom/android/camera/session/CaptureSession$ProgressListener;
    invoke-interface {v0, p1}, Lcom/android/camera/session/CaptureSession$ProgressListener;->onStatusMessageChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 268
    .end local v0    # "listener":Lcom/android/camera/session/CaptureSession$ProgressListener;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 273
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public setSceneMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "scene"    # Ljava/lang/String;

    .prologue
    .line 701
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
    .line 611
    .local p1, "watermarkViewDataOptional":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/android/camera/watermark/WatermarkViewData;>;"
    return-void
.end method

.method public declared-synchronized startEmpty(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Lcom/android/camera/util/Size;)V
    .locals 4
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "videoSize"    # Lcom/android/camera/util/Size;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 300
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mIsFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 315
    :goto_0
    monitor-exit p0

    return-void

    .line 304
    :cond_0
    if-eqz p1, :cond_1

    .line 305
    :try_start_1
    iput-object p1, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    .line 306
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onCaptureStarted()V

    .line 309
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mProgressMessageId:I

    .line 310
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mTitle:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mSessionStartMillis:J

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/android/camera/session/PlaceholderManager;->insertEmptyVideoPlaceholder(Ljava/lang/String;Lcom/android/camera/util/Size;J)Lcom/android/camera/session/PlaceholderManager$Placeholder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    .line 311
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    iget-object v0, v0, Lcom/android/camera/session/PlaceholderManager$Placeholder;->outputUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mUri:Landroid/net/Uri;

    .line 313
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mUri:Landroid/net/Uri;

    invoke-interface {v0, v1, p0}, Lcom/android/camera/session/CaptureSessionManager;->putSession(Landroid/net/Uri;Lcom/android/camera/session/CaptureSession;)V

    .line 314
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v0, v1, v2}, Lcom/android/camera/session/SessionNotifier;->notifyTaskQueued(Landroid/net/Uri;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 300
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
    .line 320
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
    .line 330
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
    .line 325
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public unregisterImageSavedListener()V
    .locals 0

    .prologue
    .line 624
    return-void
.end method

.method public updateCaptureIndicatorThumbnail(Landroid/graphics/Bitmap;I)V
    .locals 1
    .param p1, "indicator"    # Landroid/graphics/Bitmap;
    .param p2, "rotationDegrees"    # I

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onTinyThumb()V

    .line 294
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/camera/session/VideoRecordSessionImpl;->onCaptureIndicatorUpdate(Landroid/graphics/Bitmap;I)V

    .line 295
    return-void
.end method

.method public updatePreview()V
    .locals 0

    .prologue
    .line 559
    return-void
.end method

.method public updateThumbnail(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    if-nez v0, :cond_0

    .line 287
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mImageLifecycleListener:Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;->onMediumThumb()V

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/session/PlaceholderManager;->replacePlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;Landroid/graphics/Bitmap;)V

    .line 286
    iget-object v0, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/session/VideoRecordSessionImpl;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v0, v1, v2}, Lcom/android/camera/session/SessionNotifier;->notifySessionUpdated(Landroid/net/Uri;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    goto :goto_0
.end method
