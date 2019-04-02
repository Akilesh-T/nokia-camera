.class public Lcom/android/camera/captureintent/VideoIntentSession;
.super Ljava/lang/Object;
.source "VideoIntentSession.java"

# interfaces
.implements Lcom/android/camera/session/CaptureSession;


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mCamcorderProfile:Landroid/media/CamcorderProfile;

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

.field private final mExternalUri:Landroid/net/Uri;

.field private volatile mIsFinished:Z

.field private mIsStarted:Z

.field private mLocation:Landroid/location/Location;

.field private final mMediaSaver:Lcom/android/camera/app/MediaSaver;

.field private mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

.field private final mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

.field private mPrevewSize:Lcom/android/camera/util/Size;

.field private mRecordingStartTime:J

.field private final mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

.field private final mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

.field private final mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

.field private final mSessionStartMillis:J

.field private final mTitle:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mVideoCaptureRate:F

.field private mVideoFileDescFeature:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoFilename:Ljava/lang/String;

.field private final mVideoRecordListener:Lcom/android/camera/session/VideoRecordListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "VideoIntSession"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/captureintent/VideoIntentSession;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/media/CamcorderProfile;JLandroid/net/Uri;Landroid/location/Location;Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Lcom/android/camera/session/CaptureSessionManager$SessionListener;Lcom/android/camera/session/PlaceholderManager;Lcom/android/camera/app/MediaSaver;)V
    .locals 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "camcorderProfile"    # Landroid/media/CamcorderProfile;
    .param p3, "sessionStartMillis"    # J
    .param p5, "externalUri"    # Landroid/net/Uri;
    .param p6, "location"    # Landroid/location/Location;
    .param p7, "captureSessionManager"    # Lcom/android/camera/session/CaptureSessionManager;
    .param p8, "sessionNotifier"    # Lcom/android/camera/session/SessionNotifier;
    .param p9, "sessionListener"    # Lcom/android/camera/session/CaptureSessionManager$SessionListener;
    .param p10, "placeholderManager"    # Lcom/android/camera/session/PlaceholderManager;
    .param p11, "mediaSaver"    # Lcom/android/camera/app/MediaSaver;

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v3, Lcom/android/camera/stats/CaptureSessionStatsCollector;

    invoke-direct {v3}, Lcom/android/camera/stats/CaptureSessionStatsCollector;-><init>()V

    iput-object v3, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mCaptureSessionStatsCollector:Lcom/android/camera/stats/CaptureSessionStatsCollector;

    .line 106
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mVideoCaptureRate:F

    .line 109
    new-instance v3, Lcom/android/camera/captureintent/VideoIntentSession$1;

    invoke-direct {v3, p0}, Lcom/android/camera/captureintent/VideoIntentSession$1;-><init>(Lcom/android/camera/captureintent/VideoIntentSession;)V

    iput-object v3, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mVideoRecordListener:Lcom/android/camera/session/VideoRecordListener;

    .line 146
    iput-object p1, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mTitle:Ljava/lang/String;

    .line 147
    iput-object p2, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    .line 148
    iput-wide p3, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mSessionStartMillis:J

    .line 149
    iput-object p6, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mLocation:Landroid/location/Location;

    .line 150
    iput-object p7, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mSessionManager:Lcom/android/camera/session/CaptureSessionManager;

    .line 151
    iput-object p8, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    .line 152
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .line 153
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    .line 154
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    .line 156
    iput-object p5, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mExternalUri:Landroid/net/Uri;

    .line 157
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mUri:Landroid/net/Uri;

    .line 158
    if-eqz p5, :cond_0

    .line 159
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mContentValueFeature:Lcom/google/common/util/concurrent/SettableFuture;

    .line 160
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mVideoFilename:Ljava/lang/String;

    .line 163
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mVideoFileDescFeature:Lcom/google/common/util/concurrent/SettableFuture;

    .line 164
    new-instance v3, Lcom/android/camera/captureintent/VideoIntentSession$2;

    invoke-direct {v3, p0, p5}, Lcom/android/camera/captureintent/VideoIntentSession$2;-><init>(Lcom/android/camera/captureintent/VideoIntentSession;Landroid/net/Uri;)V

    invoke-static {v3}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 211
    :goto_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mIsFinished:Z

    .line 212
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mIsStarted:Z

    .line 213
    return-void

    .line 182
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mVideoFileDescFeature:Lcom/google/common/util/concurrent/SettableFuture;

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-static {v4}, Lcom/android/camera/util/VideoUtil;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "filename":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "path":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mVideoFilename:Ljava/lang/String;

    .line 188
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mContentValueFeature:Lcom/google/common/util/concurrent/SettableFuture;

    .line 189
    new-instance v3, Lcom/android/camera/captureintent/VideoIntentSession$3;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/camera/captureintent/VideoIntentSession$3;-><init>(Lcom/android/camera/captureintent/VideoIntentSession;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/android/camera/captureintent/VideoIntentSession;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/VideoIntentSession;
    .param p1, "x1"    # J

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mRecordingStartTime:J

    return-wide p1
.end method

.method static synthetic access$1000(Lcom/android/camera/captureintent/VideoIntentSession;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/VideoIntentSession;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/camera/captureintent/VideoIntentSession;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/captureintent/VideoIntentSession;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/camera/captureintent/VideoIntentSession;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/captureintent/VideoIntentSession;
    .param p1, "x1"    # F

    .prologue
    .line 68
    iput p1, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mVideoCaptureRate:F

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/captureintent/VideoIntentSession;)Lcom/android/camera/session/CaptureSessionManager$SessionListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/VideoIntentSession;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/captureintent/VideoIntentSession;)Lcom/android/camera/session/SessionNotifier;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/VideoIntentSession;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/captureintent/VideoIntentSession;)Lcom/android/camera/session/PlaceholderManager$Placeholder;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/VideoIntentSession;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/captureintent/VideoIntentSession;)Lcom/android/camera/session/PlaceholderManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/VideoIntentSession;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/captureintent/VideoIntentSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/captureintent/VideoIntentSession;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/camera/captureintent/VideoIntentSession;->saveVideoAndFinish()V

    return-void
.end method

.method static synthetic access$300()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/camera/captureintent/VideoIntentSession;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/captureintent/VideoIntentSession;)Lcom/google/common/util/concurrent/SettableFuture;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/VideoIntentSession;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mVideoFileDescFeature:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/captureintent/VideoIntentSession;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/VideoIntentSession;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/captureintent/VideoIntentSession;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/captureintent/VideoIntentSession;

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mSessionStartMillis:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/camera/captureintent/VideoIntentSession;)Landroid/media/CamcorderProfile;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/VideoIntentSession;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/captureintent/VideoIntentSession;)Landroid/location/Location;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/VideoIntentSession;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/captureintent/VideoIntentSession;)Lcom/google/common/util/concurrent/SettableFuture;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/captureintent/VideoIntentSession;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mContentValueFeature:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method private cleanupEmptyFile()V
    .locals 6

    .prologue
    .line 596
    iget-object v1, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 597
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 598
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 599
    sget-object v1, Lcom/android/camera/captureintent/VideoIntentSession;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty video file deleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 602
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private saveVideoAndFinish()V
    .locals 14

    .prologue
    const/4 v13, -0x1

    const/4 v12, 0x0

    .line 498
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mIsFinished:Z

    .line 500
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mExternalUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 502
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mUri:Landroid/net/Uri;

    const-string v2, ""

    iget-object v6, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-static {v6}, Lcom/android/camera/util/VideoUtil;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mVideoFileDescFeature:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v6}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    iget-object v10, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mPrevewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v10}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v10

    invoke-static {v6, v10}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface/range {v0 .. v6}, Lcom/android/camera/session/SessionNotifier;->notifySessionVideoDataAvailable(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 503
    invoke-virtual {p0}, Lcom/android/camera/captureintent/VideoIntentSession;->finalizeSession()V

    .line 504
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    :goto_0
    return-void

    .line 505
    :catch_0
    move-exception v7

    .line 506
    .local v7, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/android/camera/captureintent/VideoIntentSession;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "createVideoThumbnailBitmap fail : "

    invoke-static {v0, v1, v7}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 507
    invoke-virtual {p0, v13, v12}, Lcom/android/camera/captureintent/VideoIntentSession;->finishWithFailure(IZ)V

    goto :goto_0

    .line 511
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v0

    const-string v1, "saveVideoAndFinish"

    invoke-virtual {v0, v1}, Lcom/android/camera/stats/profiler/Profilers;->guard(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v4

    .line 512
    .local v4, "guard":Lcom/android/camera/stats/profiler/Profile;
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mContentValueFeature:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/base/Optional;

    .line 513
    .local v3, "contentValues":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Landroid/content/ContentValues;>;"
    const-string v0, "mContentValueFeature.get"

    invoke-interface {v4, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 515
    invoke-virtual {v3}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 516
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v10, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mRecordingStartTime:J

    sub-long/2addr v0, v10

    long-to-float v0, v0

    iget v1, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mVideoCaptureRate:F

    mul-float/2addr v0, v1

    float-to-long v8, v0

    .line 517
    .local v8, "duration":J
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-gtz v0, :cond_1

    .line 518
    sget-object v0, Lcom/android/camera/captureintent/VideoIntentSession;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Video duration <= 0 : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 520
    :cond_1
    invoke-virtual {v3}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v1, "duration"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 522
    invoke-virtual {v3}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v1, "_size"

    new-instance v6, Ljava/io/File;

    iget-object v10, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v6, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 523
    const-string v0, "contentValues update"

    invoke-interface {v4, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 525
    invoke-virtual {v3}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v1, "_data"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 526
    .local v2, "finalPath":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v1, "mime_type"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 527
    .local v5, "mimeType":Ljava/lang/String;
    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 528
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 529
    const-string v0, "rename video done"

    invoke-interface {v4, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 532
    :cond_2
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    if-nez v0, :cond_3

    .line 533
    iget-object v1, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mMediaSaver:Lcom/android/camera/app/MediaSaver;

    invoke-virtual {v3}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    new-instance v6, Lcom/android/camera/captureintent/VideoIntentSession$4;

    invoke-direct {v6, p0, v4, v2, v5}, Lcom/android/camera/captureintent/VideoIntentSession$4;-><init>(Lcom/android/camera/captureintent/VideoIntentSession;Lcom/android/camera/stats/profiler/Profile;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2, v0, v6}, Lcom/android/camera/app/MediaSaver;->addVideo(Ljava/lang/String;Landroid/content/ContentValues;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 588
    .end local v2    # "finalPath":Ljava/lang/String;
    .end local v3    # "contentValues":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Landroid/content/ContentValues;>;"
    .end local v4    # "guard":Lcom/android/camera/stats/profiler/Profile;
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v8    # "duration":J
    :catch_1
    move-exception v7

    .line 589
    .restart local v7    # "e":Ljava/lang/Exception;
    sget-object v0, Lcom/android/camera/captureintent/VideoIntentSession;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Video content get error : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 590
    invoke-virtual {p0, v13, v12}, Lcom/android/camera/captureintent/VideoIntentSession;->finishWithFailure(IZ)V

    goto/16 :goto_0

    .line 560
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v2    # "finalPath":Ljava/lang/String;
    .restart local v3    # "contentValues":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Landroid/content/ContentValues;>;"
    .restart local v4    # "guard":Lcom/android/camera/stats/profiler/Profile;
    .restart local v5    # "mimeType":Ljava/lang/String;
    .restart local v8    # "duration":J
    :cond_3
    :try_start_2
    new-instance v0, Lcom/android/camera/captureintent/VideoIntentSession$5;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/captureintent/VideoIntentSession$5;-><init>(Lcom/android/camera/captureintent/VideoIntentSession;Ljava/lang/String;Lcom/google/common/base/Optional;Lcom/android/camera/stats/profiler/Profile;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 584
    .end local v2    # "finalPath":Ljava/lang/String;
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v8    # "duration":J
    :cond_4
    const-string v0, "Video content value not present"

    invoke-interface {v4, v0}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 585
    sget-object v0, Lcom/android/camera/captureintent/VideoIntentSession;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Video content value not present"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 586
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/captureintent/VideoIntentSession;->finishWithFailure(IZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method


# virtual methods
.method public addProgressListener(Lcom/android/camera/session/CaptureSession$ProgressListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ProgressListener;

    .prologue
    .line 401
    return-void
.end method

.method public declared-synchronized cancel()V
    .locals 4

    .prologue
    .line 310
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mIsFinished:Z

    .line 311
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mUri:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/session/SessionNotifier;->notifyTaskCanceled(Landroid/net/Uri;ZLcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 315
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/captureintent/VideoIntentSession;->finalizeSession()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    monitor-exit p0

    return-void

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public finalizeSession()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 382
    iget-object v1, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mVideoFileDescFeature:Lcom/google/common/util/concurrent/SettableFuture;

    if-eqz v1, :cond_0

    .line 384
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mVideoFileDescFeature:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    iput-object v4, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mVideoFileDescFeature:Lcom/google/common/util/concurrent/SettableFuture;

    .line 392
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    if-eqz v1, :cond_1

    .line 393
    iget-object v1, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    iget-object v2, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    invoke-virtual {v1, v2}, Lcom/android/camera/session/PlaceholderManager;->removePlaceholder(Lcom/android/camera/session/PlaceholderManager$Placeholder;)V

    .line 394
    iput-object v4, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    .line 396
    :cond_1
    return-void

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lcom/android/camera/captureintent/VideoIntentSession;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot close VideoFileDescriptor : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    iput-object v4, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mVideoFileDescFeature:Lcom/google/common/util/concurrent/SettableFuture;

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iput-object v4, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mVideoFileDescFeature:Lcom/google/common/util/concurrent/SettableFuture;

    throw v1
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 352
    return-void
.end method

.method public finishWithFailure(IZ)V
    .locals 6
    .param p1, "progressMessageId"    # I
    .param p2, "removeFromFilmstrip"    # Z

    .prologue
    const/4 v3, 0x0

    .line 371
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mIsFinished:Z

    .line 372
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move v2, p1

    move v4, v3

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/session/SessionNotifier;->notifyTaskFailed(Landroid/net/Uri;IZZLcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 374
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mUri:Landroid/net/Uri;

    .line 376
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/captureintent/VideoIntentSession;->cleanupEmptyFile()V

    .line 377
    invoke-virtual {p0}, Lcom/android/camera/captureintent/VideoIntentSession;->finalizeSession()V

    .line 378
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
    .line 626
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCaptureSessionForMap()Lcom/android/camera/session/CaptureSession;
    .locals 1

    .prologue
    .line 415
    new-instance v0, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;

    invoke-direct {v0, p0}, Lcom/android/camera/session/CaptureSessionFactory$CaptureSessionStub;-><init>(Lcom/android/camera/session/CaptureSession;)V

    return-object v0
.end method

.method public getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mCaptureSessionStatsCollector:Lcom/android/camera/stats/CaptureSessionStatsCollector;

    return-object v0
.end method

.method public getExternalUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mExternalUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getPrevPhoto()[B
    .locals 1

    .prologue
    .line 494
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1

    .prologue
    .line 255
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized getProgressMessageId()I
    .locals 1

    .prologue
    .line 265
    monitor-enter p0

    const/4 v0, -0x1

    monitor-exit p0

    return v0
.end method

.method public getSceneMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 616
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTempOutputFile()Lcom/android/camera/session/TemporarySessionFile;
    .locals 2

    .prologue
    .line 356
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getVideoFileDescriptor()Ljava/io/FileDescriptor;
    .locals 4

    .prologue
    .line 232
    iget-object v1, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mVideoFileDescFeature:Lcom/google/common/util/concurrent/SettableFuture;

    if-eqz v1, :cond_0

    .line 234
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mVideoFileDescFeature:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 239
    :goto_0
    return-object v1

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/camera/captureintent/VideoIntentSession;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot get VideoFileDescriptor : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 239
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVideoFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mVideoFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoRecordListener()Lcom/android/camera/session/VideoRecordListener;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mVideoRecordListener:Lcom/android/camera/session/VideoRecordListener;

    return-object v0
.end method

.method public isCaptureIntent()Z
    .locals 1

    .prologue
    .line 646
    const/4 v0, 0x0

    return v0
.end method

.method public isDisableSessionReturnData()Z
    .locals 1

    .prologue
    .line 474
    const/4 v0, 0x0

    return v0
.end method

.method public isFirstShotInTwiceShot()Z
    .locals 1

    .prologue
    .line 621
    const/4 v0, 0x0

    return v0
.end method

.method public isForceHideThumbnail()Z
    .locals 1

    .prologue
    .line 453
    const/4 v0, 0x1

    return v0
.end method

.method public isImageHWRotate()Z
    .locals 1

    .prologue
    .line 661
    const/4 v0, 0x0

    return v0
.end method

.method public isMainCamera()Z
    .locals 1

    .prologue
    .line 484
    const/4 v0, 0x0

    return v0
.end method

.method public isPreviewOnly()Z
    .locals 1

    .prologue
    .line 464
    const/4 v0, 0x0

    return v0
.end method

.method public needMirror()Z
    .locals 1

    .prologue
    .line 631
    const/4 v0, 0x0

    return v0
.end method

.method public onCaptureFinish()V
    .locals 0

    .prologue
    .line 637
    return-void
.end method

.method public onCaptureStart()V
    .locals 0

    .prologue
    .line 642
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
    .line 420
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public registerImageSavedListener(Lcom/android/camera/session/CaptureSession$ImageSavedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ImageSavedListener;

    .prologue
    .line 434
    return-void
.end method

.method public removeProgressListener(Lcom/android/camera/session/CaptureSession$ProgressListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ProgressListener;

    .prologue
    .line 406
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
    .line 326
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
    .line 321
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
    .line 331
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
    .line 336
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
    .line 340
    .local p2, "imageName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

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
    .line 345
    .local p2, "imageName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 346
    .local v0, "futureResult":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/common/base/Optional<Ljava/lang/String;>;>;"
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 347
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
    .line 430
    .local p1, "brandLogoViewDataOptional":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/android/camera/brandlogo/BrandLogoViewData;>;"
    return-void
.end method

.method public setCaptureMode(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V
    .locals 0
    .param p1, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .prologue
    .line 459
    return-void
.end method

.method public setDisableSessionReturnData(Z)V
    .locals 0
    .param p1, "isDisable"    # Z

    .prologue
    .line 470
    return-void
.end method

.method public setForceHideThumbnail(Z)V
    .locals 0
    .param p1, "hideThumbnail"    # Z

    .prologue
    .line 449
    return-void
.end method

.method public setImageHWRotate(Z)V
    .locals 0
    .param p1, "hw_do_rotate"    # Z

    .prologue
    .line 657
    return-void
.end method

.method public setIsCaptureIntent(Z)V
    .locals 0
    .param p1, "isCaptureIntent"    # Z

    .prologue
    .line 652
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mLocation:Landroid/location/Location;

    .line 250
    return-void
.end method

.method public setMainCamera(Z)V
    .locals 0
    .param p1, "isMainCamera"    # Z

    .prologue
    .line 480
    return-void
.end method

.method public setMirror(Z)V
    .locals 0
    .param p1, "mirror"    # Z

    .prologue
    .line 607
    return-void
.end method

.method public setPrevPhoto([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 490
    return-void
.end method

.method public setPreviewOnly(Z)V
    .locals 0
    .param p1, "previewOnly"    # Z

    .prologue
    .line 462
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 0
    .param p1, "percent"    # I

    .prologue
    .line 261
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setProgressMessage(I)V
    .locals 0
    .param p1, "messageId"    # I

    .prologue
    .line 270
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public setSceneMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "scene"    # Ljava/lang/String;

    .prologue
    .line 612
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
    .line 426
    .local p1, "watermarkViewDataOptional":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/android/camera/watermark/WatermarkViewData;>;"
    return-void
.end method

.method public declared-synchronized startEmpty(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Lcom/android/camera/util/Size;)V
    .locals 7
    .param p1, "listener"    # Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;
    .param p2, "previewSize"    # Lcom/android/camera/util/Size;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 284
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mIsStarted:Z

    .line 285
    iput-object p2, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mPrevewSize:Lcom/android/camera/util/Size;

    .line 286
    iget-object v1, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mPlaceholderManager:Lcom/android/camera/session/PlaceholderManager;

    iget-object v2, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mTitle:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mSessionStartMillis:J

    iget-object v6, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mExternalUri:Landroid/net/Uri;

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/session/PlaceholderManager;->insertEmptyCaptureIntentPlaceholder(Ljava/lang/String;Lcom/android/camera/util/Size;JLandroid/net/Uri;)Lcom/android/camera/session/PlaceholderManager$Placeholder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    .line 287
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mPlaceHolder:Lcom/android/camera/session/PlaceholderManager$Placeholder;

    iget-object v0, v0, Lcom/android/camera/session/PlaceholderManager$Placeholder;->outputUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    monitor-exit p0

    return-void

    .line 284
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
    .line 293
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
    .line 305
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
    .line 299
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
    .line 439
    return-void
.end method

.method public updateCaptureIndicatorThumbnail(Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p1, "indicator"    # Landroid/graphics/Bitmap;
    .param p2, "rotationDegrees"    # I

    .prologue
    .line 280
    return-void
.end method

.method public updatePreview()V
    .locals 2

    .prologue
    .line 366
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateThumbnail(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mSessionNotifier:Lcom/android/camera/session/SessionNotifier;

    iget-object v1, p0, Lcom/android/camera/captureintent/VideoIntentSession;->mSessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v0, p1, v1}, Lcom/android/camera/session/SessionNotifier;->notifySessionThumbnailAvailable(Landroid/graphics/Bitmap;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 275
    return-void
.end method
