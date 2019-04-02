.class public Lcom/android/camera/video/StreamingFacadeImpl;
.super Ljava/lang/Object;
.source "StreamingFacadeImpl.java"

# interfaces
.implements Lcom/android/camera/video/VideoFacade;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/video/StreamingFacadeImpl$MainHandler;,
        Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;
    }
.end annotation


# static fields
.field private static final HIDE_OPTIONS_DELAY_TIME:I = 0xbb8

.field private static final MSG_HIDE_MODE_OPTIONS_DURING_RECORDING:I = 0x1

.field private static final MSG_SHOW_MODE_OPTIONS_DURING_RECORDING:I = 0x2

.field private static final RECORD_TIME_UPDATE_DELAY:J = 0x3e8L

.field private static final STREAMING_START_DELAY_SECS:I = 0x3

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mCameraActivity:Lcom/android/camera/CameraActivity;

.field private mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private mCaptureRate:I

.field private mCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

.field private mCommentsAdapter:Lcom/android/camera/livebroadcast/status/CommentsAdapter;

.field private final mContext:Landroid/content/Context;

.field private mCountdownController:Lcom/android/camera/video/CountdownController;

.field private mHandler:Landroid/os/Handler;

.field private final mInited:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mListComments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/livebroadcast/status/Comment;",
            ">;"
        }
    .end annotation
.end field

.field private mLiveBroadcastStatusController:Lcom/android/camera/video/LiveBroadcastStatusController;

.field private final mMainThread:Lcom/android/camera/async/MainThread;

.field private mOnRecordTimeUpdateListener:Lcom/android/camera/video/OnRecordTimeUpdateListener;

.field private final mOrientationLockController:Lcom/android/camera/burst/OrientationLockController;

.field private mOrientationState:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mProfile:Landroid/media/CamcorderProfile;

.field private final mReadyStateListener:Lcom/android/camera/video/RecordReadyStateChangeListener;

.field private mRecordingStartTime:J

.field private final mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mShutterSoundEnabled:Z

.field private mStreamingLifetime:Lcom/android/camera/async/Lifetime;

.field private mTouchChangedState:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoStreamState:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoStreamer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/camera/burst/BurstTaker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 71
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "StreamingFacadeImpl"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/video/StreamingFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/CameraActivity;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/video/RecordReadyStateChangeListener;)V
    .locals 3
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "cameraActivity"    # Lcom/android/camera/CameraActivity;
    .param p3, "orientationLockController"    # Lcom/android/camera/burst/OrientationLockController;
    .param p4, "readyStateListener"    # Lcom/android/camera/video/RecordReadyStateChangeListener;

    .prologue
    const/4 v2, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;->IDLE:Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mVideoStreamState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 88
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mVideoStreamer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mShutterSoundEnabled:Z

    .line 102
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mCaptureRate:I

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mListComments:Ljava/util/List;

    .line 113
    new-instance v0, Lcom/android/camera/video/StreamingFacadeImpl$MainHandler;

    invoke-direct {v0, p0, p0}, Lcom/android/camera/video/StreamingFacadeImpl$MainHandler;-><init>(Lcom/android/camera/video/StreamingFacadeImpl;Lcom/android/camera/video/VideoFacade;)V

    iput-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mHandler:Landroid/os/Handler;

    .line 154
    sget-object v0, Lcom/android/camera/video/StreamingFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 155
    iput-object p1, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mContext:Landroid/content/Context;

    .line 156
    iput-object p2, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mCameraActivity:Lcom/android/camera/CameraActivity;

    .line 157
    iput-object p3, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mOrientationLockController:Lcom/android/camera/burst/OrientationLockController;

    .line 158
    iput-object p4, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mReadyStateListener:Lcom/android/camera/video/RecordReadyStateChangeListener;

    .line 160
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 161
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 162
    invoke-static {}, Lcom/android/camera/async/MainThread;->create()Lcom/android/camera/async/MainThread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mMainThread:Lcom/android/camera/async/MainThread;

    .line 163
    new-instance v0, Lcom/android/camera/livebroadcast/status/CommentsAdapter;

    iget-object v1, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mListComments:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lcom/android/camera/livebroadcast/status/CommentsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mCommentsAdapter:Lcom/android/camera/livebroadcast/status/CommentsAdapter;

    .line 165
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/video/RecordReadyStateChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/StreamingFacadeImpl;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mReadyStateListener:Lcom/android/camera/video/RecordReadyStateChangeListener;

    return-object v0
.end method

.method static synthetic access$100()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/camera/video/StreamingFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/video/StreamingFacadeImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/StreamingFacadeImpl;

    .prologue
    .line 69
    iget v0, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mCaptureRate:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/camera/video/StreamingFacadeImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/video/StreamingFacadeImpl;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mCaptureRate:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/one/OneCameraCaptureSetting;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/StreamingFacadeImpl;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/one/OneCameraCharacteristics;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/StreamingFacadeImpl;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/video/StreamingFacadeImpl;)Landroid/media/CamcorderProfile;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/StreamingFacadeImpl;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mProfile:Landroid/media/CamcorderProfile;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/video/StreamingFacadeImpl;Lcom/android/camera/livebroadcast/streaming/MediaStreamer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/video/StreamingFacadeImpl;
    .param p1, "x1"    # Lcom/android/camera/livebroadcast/streaming/MediaStreamer;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/camera/video/StreamingFacadeImpl;->releaseMediaStreamer(Lcom/android/camera/livebroadcast/streaming/MediaStreamer;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/video/StreamingFacadeImpl;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/video/StreamingFacadeImpl;

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mRecordingStartTime:J

    return-wide v0
.end method

.method static synthetic access$1502(Lcom/android/camera/video/StreamingFacadeImpl;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/StreamingFacadeImpl;
    .param p1, "x1"    # J

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mRecordingStartTime:J

    return-wide p1
.end method

.method static synthetic access$1600(Lcom/android/camera/video/StreamingFacadeImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/StreamingFacadeImpl;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/video/StreamingFacadeImpl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/StreamingFacadeImpl;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mListComments:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/livebroadcast/status/CommentsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/StreamingFacadeImpl;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mCommentsAdapter:Lcom/android/camera/livebroadcast/status/CommentsAdapter;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/video/LiveBroadcastStatusController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/StreamingFacadeImpl;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mLiveBroadcastStatusController:Lcom/android/camera/video/LiveBroadcastStatusController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/async/Observable;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/StreamingFacadeImpl;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mTouchChangedState:Lcom/android/camera/async/Observable;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/video/StreamingFacadeImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/video/StreamingFacadeImpl;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/camera/video/StreamingFacadeImpl;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/camera/video/StreamingFacadeImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/StreamingFacadeImpl;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/async/Observable;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/StreamingFacadeImpl;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mOrientationState:Lcom/android/camera/async/Observable;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/camera/video/StreamingFacadeImpl;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Lcom/android/camera/livebroadcast/LiveBroadcastManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/video/StreamingFacadeImpl;
    .param p1, "x1"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;
    .param p2, "x2"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;
    .param p3, "x3"    # Ljava/lang/Object;
    .param p4, "x4"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager;
    .param p5, "x5"    # I

    .prologue
    .line 69
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/video/StreamingFacadeImpl;->processError(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Lcom/android/camera/livebroadcast/LiveBroadcastManager;I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/camera/video/StreamingFacadeImpl;Lcom/android/camera/livebroadcast/AccountAgent;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Lcom/android/camera/livebroadcast/LiveBroadcastManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/video/StreamingFacadeImpl;
    .param p1, "x1"    # Lcom/android/camera/livebroadcast/AccountAgent;
    .param p2, "x2"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;
    .param p3, "x3"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;
    .param p4, "x4"    # Ljava/lang/Object;
    .param p5, "x5"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager;
    .param p6, "x6"    # I

    .prologue
    .line 69
    invoke-direct/range {p0 .. p6}, Lcom/android/camera/video/StreamingFacadeImpl;->processInfo(Lcom/android/camera/livebroadcast/AccountAgent;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Lcom/android/camera/livebroadcast/LiveBroadcastManager;I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/camera/video/StreamingFacadeImpl;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/StreamingFacadeImpl;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mVideoStreamer:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/video/CountdownController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/StreamingFacadeImpl;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mCountdownController:Lcom/android/camera/video/CountdownController;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/async/MainThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/StreamingFacadeImpl;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mMainThread:Lcom/android/camera/async/MainThread;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/video/StreamingFacadeImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/video/StreamingFacadeImpl;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/camera/video/StreamingFacadeImpl;->resetHideTimer()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/StreamingFacadeImpl;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mCameraActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/video/StreamingFacadeImpl;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/StreamingFacadeImpl;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mVideoStreamState:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/video/StreamingFacadeImpl;Lcom/android/camera/async/SafeCloseable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/video/StreamingFacadeImpl;
    .param p1, "x1"    # Lcom/android/camera/async/SafeCloseable;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/camera/video/StreamingFacadeImpl;->reEnableUI(Lcom/android/camera/async/SafeCloseable;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/video/StreamingFacadeImpl;Lcom/android/camera/livebroadcast/AccountAgent;Ljava/lang/Object;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/video/StreamingFacadeImpl;
    .param p1, "x1"    # Lcom/android/camera/livebroadcast/AccountAgent;
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Z
    .param p4, "x4"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/video/StreamingFacadeImpl;->stopLiveBroadcast(Lcom/android/camera/livebroadcast/AccountAgent;Ljava/lang/Object;ZI)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/async/Lifetime;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/StreamingFacadeImpl;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mStreamingLifetime:Lcom/android/camera/async/Lifetime;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/burst/OrientationLockController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/StreamingFacadeImpl;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mOrientationLockController:Lcom/android/camera/burst/OrientationLockController;

    return-object v0
.end method

.method private millisecondToTimeString(JZ)Ljava/lang/String;
    .locals 19
    .param p1, "milliSeconds"    # J
    .param p3, "displayCentiSeconds"    # Z

    .prologue
    .line 760
    const-wide/16 v14, 0x3e8

    div-long v10, p1, v14

    .line 761
    .local v10, "seconds":J
    const-wide/16 v14, 0x3c

    div-long v2, v10, v14

    .line 762
    .local v2, "minutes":J
    const-wide/16 v14, 0x3c

    div-long v0, v2, v14

    .line 763
    .local v0, "hours":J
    const-wide/16 v14, 0x3c

    mul-long/2addr v14, v0

    sub-long v6, v2, v14

    .line 764
    .local v6, "remainderMinutes":J
    const-wide/16 v14, 0x3c

    mul-long/2addr v14, v2

    sub-long v8, v10, v14

    .line 766
    .local v8, "remainderSeconds":J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 769
    .local v12, "timeStringBuilder":Ljava/lang/StringBuilder;
    const-wide/16 v14, 0x0

    cmp-long v13, v0, v14

    if-lez v13, :cond_1

    .line 770
    const-wide/16 v14, 0xa

    cmp-long v13, v0, v14

    if-gez v13, :cond_0

    .line 771
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 773
    :cond_0
    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 775
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 779
    :cond_1
    const-wide/16 v14, 0xa

    cmp-long v13, v6, v14

    if-gez v13, :cond_2

    .line 780
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 782
    :cond_2
    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 783
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 786
    const-wide/16 v14, 0xa

    cmp-long v13, v8, v14

    if-gez v13, :cond_3

    .line 787
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 789
    :cond_3
    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 792
    if-eqz p3, :cond_5

    .line 793
    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 794
    const-wide/16 v14, 0x3e8

    mul-long/2addr v14, v10

    sub-long v14, p1, v14

    const-wide/16 v16, 0xa

    div-long v4, v14, v16

    .line 795
    .local v4, "remainderCentiSeconds":J
    const-wide/16 v14, 0xa

    cmp-long v13, v4, v14

    if-gez v13, :cond_4

    .line 796
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 798
    :cond_4
    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 801
    .end local v4    # "remainderCentiSeconds":J
    :cond_5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method private processError(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Lcom/android/camera/livebroadcast/LiveBroadcastManager;I)V
    .locals 2
    .param p1, "stage"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;
    .param p2, "errorCode"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;
    .param p3, "result"    # Ljava/lang/Object;
    .param p4, "liveBroadcastManager"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager;
    .param p5, "orientation"    # I

    .prologue
    .line 835
    sget-object v0, Lcom/android/camera/video/StreamingFacadeImpl$8;->$SwitchMap$com$android$camera$livebroadcast$LiveBroadcastManager$StatusCallback$ErrorCode:[I

    invoke-virtual {p2}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 856
    .end local p3    # "result":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 838
    .restart local p3    # "result":Ljava/lang/Object;
    :pswitch_0
    if-eqz p4, :cond_0

    .line 839
    check-cast p3, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    .end local p3    # "result":Ljava/lang/Object;
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mCameraActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {p4, p3, v0, p2}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->goToAuthorization(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Landroid/app/Activity;Ljava/lang/Object;)V

    goto :goto_0

    .line 844
    .restart local p3    # "result":Ljava/lang/Object;
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mCameraActivity:Lcom/android/camera/CameraActivity;

    check-cast p3, Landroid/content/Intent;

    .end local p3    # "result":Ljava/lang/Object;
    invoke-virtual {v0, p3}, Lcom/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 849
    .restart local p3    # "result":Ljava/lang/Object;
    :pswitch_2
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    iget-object v1, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mCameraActivity:Lcom/android/camera/CameraActivity;

    check-cast p3, Ljava/lang/String;

    .end local p3    # "result":Ljava/lang/Object;
    invoke-direct {v0, v1, p3, p5}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    const/16 v1, 0xbb8

    .line 850
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateTextToast;->showInTime(I)V

    goto :goto_0

    .line 835
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private processInfo(Lcom/android/camera/livebroadcast/AccountAgent;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Lcom/android/camera/livebroadcast/LiveBroadcastManager;I)V
    .locals 8
    .param p1, "accountAgent"    # Lcom/android/camera/livebroadcast/AccountAgent;
    .param p2, "stage"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;
    .param p3, "errorCode"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;
    .param p4, "result"    # Ljava/lang/Object;
    .param p5, "liveBroadcastManager"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager;
    .param p6, "orientation"    # I

    .prologue
    .line 859
    sget-object v0, Lcom/android/camera/video/StreamingFacadeImpl$8;->$SwitchMap$com$android$camera$livebroadcast$LiveBroadcastManager$StatusCallback$Stage:[I

    invoke-virtual {p2}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 866
    sget-object v0, Lcom/android/camera/video/StreamingFacadeImpl$8;->$SwitchMap$com$android$camera$livebroadcast$LiveBroadcastManager$StatusCallback$ErrorCode:[I

    invoke-virtual {p3}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 877
    .end local p4    # "result":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 861
    .restart local p4    # "result":Ljava/lang/Object;
    :pswitch_0
    sget-object v0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->NONE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    if-ne p3, v0, :cond_0

    .line 862
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    iget-object v1, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mCameraActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0800cf

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mContext:Landroid/content/Context;

    invoke-interface {p1}, Lcom/android/camera/livebroadcast/AccountAgent;->getAgentTitleResId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p6}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateTextToast;->showInTime(I)V

    goto :goto_0

    .line 868
    :pswitch_1
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    iget-object v1, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mCameraActivity:Lcom/android/camera/CameraActivity;

    check-cast p4, Ljava/lang/String;

    .end local p4    # "result":Ljava/lang/Object;
    invoke-direct {v0, v1, p4, p6}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    const/16 v1, 0xbb8

    .line 869
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateTextToast;->showInTime(I)V

    goto :goto_0

    .line 859
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 866
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_1
    .end packed-switch
.end method

.method private reEnableUI(Lcom/android/camera/async/SafeCloseable;)V
    .locals 2
    .param p1, "touchChangedCallback"    # Lcom/android/camera/async/SafeCloseable;

    .prologue
    .line 744
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V

    .line 745
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mOrientationLockController:Lcom/android/camera/burst/OrientationLockController;

    invoke-interface {v0}, Lcom/android/camera/burst/OrientationLockController;->unlockOrientation()V

    .line 746
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mReadyStateListener:Lcom/android/camera/video/RecordReadyStateChangeListener;

    invoke-interface {v0}, Lcom/android/camera/video/RecordReadyStateChangeListener;->onRecordingStoped()V

    .line 747
    if-eqz p1, :cond_0

    .line 748
    invoke-interface {p1}, Lcom/android/camera/async/SafeCloseable;->close()V

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 750
    return-void
.end method

.method private releaseMediaStreamer(Lcom/android/camera/livebroadcast/streaming/MediaStreamer;)V
    .locals 4
    .param p1, "mediaStreamer"    # Lcom/android/camera/livebroadcast/streaming/MediaStreamer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 732
    sget-object v1, Lcom/android/camera/video/StreamingFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Releasing MediaStreamer : released = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/camera/livebroadcast/streaming/MediaStreamer;->isReleased()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 733
    invoke-virtual {p1}, Lcom/android/camera/livebroadcast/streaming/MediaStreamer;->isReleased()Z

    move-result v1

    if-nez v1, :cond_0

    .line 735
    :try_start_0
    invoke-virtual {p1}, Lcom/android/camera/livebroadcast/streaming/MediaStreamer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    :cond_0
    return-void

    .line 736
    :catch_0
    move-exception v0

    .line 737
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/camera/video/StreamingFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Releasing MediaStreamer error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 738
    throw v0
.end method

.method private resetHideTimer()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 753
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 754
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 755
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 756
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 757
    return-void
.end method

.method private stopLiveBroadcast(Lcom/android/camera/livebroadcast/AccountAgent;Ljava/lang/Object;ZI)V
    .locals 6
    .param p1, "accountAgent"    # Lcom/android/camera/livebroadcast/AccountAgent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "params"    # Ljava/lang/Object;
    .param p3, "remove"    # Z
    .param p4, "orientation"    # I

    .prologue
    .line 716
    sget-object v0, Lcom/android/camera/video/StreamingFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stoping LiveBroadcast...  remove : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 717
    iget-object v1, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mCameraActivity:Lcom/android/camera/CameraActivity;

    new-instance v2, Lcom/android/camera/video/StreamingFacadeImpl$6;

    invoke-direct {v2, p0, p3}, Lcom/android/camera/video/StreamingFacadeImpl$6;-><init>(Lcom/android/camera/video/StreamingFacadeImpl;Z)V

    move-object v0, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/livebroadcast/AccountAgent;->stopLiveBroadcast(Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Ljava/lang/Object;ZI)V

    .line 729
    return-void
.end method

.method private updateRecordingTime()V
    .locals 12

    .prologue
    .line 805
    iget-object v8, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mOnRecordTimeUpdateListener:Lcom/android/camera/video/OnRecordTimeUpdateListener;

    if-nez v8, :cond_1

    .line 832
    :cond_0
    :goto_0
    return-void

    .line 806
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/video/StreamingFacadeImpl;->isBurstRunning()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 808
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 809
    .local v4, "now":J
    iget-wide v8, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mRecordingStartTime:J

    sub-long v0, v4, v8

    .line 811
    .local v0, "delta":J
    iget v8, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mCaptureRate:I

    int-to-long v8, v8

    mul-long/2addr v8, v0

    iget-object v10, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->videoFrameRate:I

    int-to-long v10, v10

    div-long v2, v8, v10

    .line 813
    .local v2, "deltaAdjusted":J
    iget-object v8, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mOnRecordTimeUpdateListener:Lcom/android/camera/video/OnRecordTimeUpdateListener;

    const/4 v9, 0x0

    invoke-direct {p0, v2, v3, v9}, Lcom/android/camera/video/StreamingFacadeImpl;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/android/camera/video/OnRecordTimeUpdateListener;->onRecordTimeUpdate(Ljava/lang/String;)V

    .line 815
    const-wide/16 v6, 0x3e8

    .line 816
    .local v6, "targetNextUpdateDelay":J
    iget v8, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mCaptureRate:I

    const/16 v9, 0x1e

    if-eq v8, v9, :cond_2

    .line 817
    iget-object v8, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mProfile:Landroid/media/CamcorderProfile;

    iget v8, v8, Landroid/media/CamcorderProfile;->videoFrameRate:I

    int-to-float v8, v8

    iget v9, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mCaptureRate:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    const/high16 v9, 0x447a0000    # 1000.0f

    mul-float/2addr v8, v9

    float-to-long v6, v8

    .line 820
    :cond_2
    new-instance v8, Ljava/util/Timer;

    invoke-direct {v8}, Ljava/util/Timer;-><init>()V

    new-instance v9, Lcom/android/camera/video/StreamingFacadeImpl$7;

    invoke-direct {v9, p0}, Lcom/android/camera/video/StreamingFacadeImpl$7;-><init>(Lcom/android/camera/video/StreamingFacadeImpl;)V

    rem-long v10, v0, v6

    sub-long v10, v6, v10

    invoke-virtual {v8, v9, v10, v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method


# virtual methods
.method public getCamcorderProfile()Landroid/media/CamcorderProfile;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mProfile:Landroid/media/CamcorderProfile;

    return-object v0
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 712
    const/4 v0, 0x0

    return-object v0
.end method

.method public isBurstRunning()Z
    .locals 2

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mVideoStreamState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;->RUNNING:Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;

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
    .line 692
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mVideoStreamState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;->STOPPING:Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;

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
    .line 697
    iget-object v1, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 698
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 699
    sget-object v0, Lcom/android/camera/video/StreamingFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "release"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 700
    invoke-virtual {p0}, Lcom/android/camera/video/StreamingFacadeImpl;->stopBurst()Z

    .line 702
    :cond_0
    monitor-exit v1

    .line 703
    return-void

    .line 702
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
    .line 707
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mVideoStreamer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 708
    return-void
.end method

.method public setLiveBroadcastStatusInfo(Lcom/android/camera/video/LiveBroadcastStatusController;)V
    .locals 0
    .param p1, "liveBroadcastStatusController"    # Lcom/android/camera/video/LiveBroadcastStatusController;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mLiveBroadcastStatusController:Lcom/android/camera/video/LiveBroadcastStatusController;

    .line 190
    return-void
.end method

.method public setRecordingInfo(Landroid/media/CamcorderProfile;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/OneCameraCharacteristics;IJLandroid/net/Uri;Landroid/view/Surface;Lcom/android/camera/video/OnRecordTimeUpdateListener;Lcom/android/camera/async/Observable;)V
    .locals 3
    .param p1, "profile"    # Landroid/media/CamcorderProfile;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;
    .param p3, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p4, "maxVideoDurationInMs"    # I
    .param p5, "requestedSizeLimit"    # J
    .param p7, "saveUri"    # Landroid/net/Uri;
    .param p8, "persistentInputSurface"    # Landroid/view/Surface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p9, "onRecordTimeUpdateListener"    # Lcom/android/camera/video/OnRecordTimeUpdateListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/CamcorderProfile;",
            "Lcom/android/camera/one/OneCameraCaptureSetting;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "IJ",
            "Landroid/net/Uri;",
            "Landroid/view/Surface;",
            "Lcom/android/camera/video/OnRecordTimeUpdateListener;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p10, "touchChangedState":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 179
    :goto_0
    return-void

    .line 171
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    iput-object p1, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mProfile:Landroid/media/CamcorderProfile;

    .line 173
    iput-object p2, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    .line 174
    iput-object p9, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mOnRecordTimeUpdateListener:Lcom/android/camera/video/OnRecordTimeUpdateListener;

    .line 175
    sget-object v0, Lcom/android/camera/video/StreamingFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "OZO - setting set mCameraCharacteristics"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 177
    iput-object p3, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 178
    iput-object p10, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mTouchChangedState:Lcom/android/camera/async/Observable;

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setShutterSoundEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 199
    iput-boolean p1, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mShutterSoundEnabled:Z

    .line 200
    return-void
.end method

.method public setStreamingInfo(Lcom/android/camera/video/CountdownController;Lcom/android/camera/async/Observable;)V
    .locals 0
    .param p1, "countdownController"    # Lcom/android/camera/video/CountdownController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/video/CountdownController;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p2, "orientationState":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mCountdownController:Lcom/android/camera/video/CountdownController;

    .line 184
    iput-object p2, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mOrientationState:Lcom/android/camera/async/Observable;

    .line 185
    return-void
.end method

.method public startBurst(Lcom/android/camera/async/MainThread;Lcom/android/camera/session/CaptureSession$CaptureSessionCreator;Lcom/android/camera/burst/BurstFacade$BurstIntent;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/one/OneCamera$Facing;IJ)V
    .locals 17
    .param p1, "mainThread"    # Lcom/android/camera/async/MainThread;
    .param p2, "captureSessionCreator"    # Lcom/android/camera/session/CaptureSession$CaptureSessionCreator;
    .param p3, "burstIntent"    # Lcom/android/camera/burst/BurstFacade$BurstIntent;
    .param p4, "deviceOrientation"    # Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .param p5, "cameraFacing"    # Lcom/android/camera/one/OneCamera$Facing;
    .param p6, "imageOrientationDegrees"    # I
    .param p7, "remainingStorageBytes"    # J

    .prologue
    .line 204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/StreamingFacadeImpl;->mInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 205
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/video/StreamingFacadeImpl;->mInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v2

    .line 650
    :goto_0
    return-void

    .line 206
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 208
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V

    .line 210
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/video/StreamingFacadeImpl;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v15

    .line 211
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/video/StreamingFacadeImpl;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_7

    .line 212
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/video/StreamingFacadeImpl;->mVideoStreamer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/video/StreamingFacadeImpl;->mVideoStreamState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;->IDLE:Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;

    sget-object v9, Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;->RUNNING:Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;

    .line 213
    invoke-virtual {v1, v2, v9}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 215
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Lcom/android/camera/session/CaptureSession$CaptureSessionCreator;->createAndStartEmpty(Landroid/net/Uri;)Lcom/android/camera/session/CaptureSession;

    move-result-object v8

    .line 216
    .local v8, "captureSession":Lcom/android/camera/session/CaptureSession;
    if-nez v8, :cond_1

    .line 217
    sget-object v1, Lcom/android/camera/video/StreamingFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Cannot start streaming : captureSession is null"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/video/StreamingFacadeImpl;->mVideoStreamState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;->IDLE:Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 219
    invoke-interface {v8}, Lcom/android/camera/session/CaptureSession;->cancel()V

    .line 220
    monitor-exit v15

    goto :goto_0

    .line 649
    .end local v8    # "captureSession":Lcom/android/camera/session/CaptureSession;
    :catchall_0
    move-exception v1

    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 206
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 223
    .restart local v8    # "captureSession":Lcom/android/camera/session/CaptureSession;
    :cond_1
    :try_start_3
    invoke-interface {v8}, Lcom/android/camera/session/CaptureSession;->getVideoRecordListener()Lcom/android/camera/session/VideoRecordListener;

    move-result-object v11

    .line 224
    .local v11, "recordListener":Lcom/android/camera/session/VideoRecordListener;
    if-nez v11, :cond_2

    .line 225
    sget-object v1, Lcom/android/camera/video/StreamingFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Cannot start streaming : recordListener is null"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/video/StreamingFacadeImpl;->mVideoStreamState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;->IDLE:Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 227
    invoke-interface {v8}, Lcom/android/camera/session/CaptureSession;->cancel()V

    .line 228
    monitor-exit v15

    goto :goto_0

    .line 231
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/video/StreamingFacadeImpl;->mCountdownController:Lcom/android/camera/video/CountdownController;

    if-nez v1, :cond_3

    .line 232
    sget-object v1, Lcom/android/camera/video/StreamingFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Cannot start streaming : mCountdownController is null"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/video/StreamingFacadeImpl;->mVideoStreamState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;->IDLE:Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 234
    invoke-interface {v8}, Lcom/android/camera/session/CaptureSession;->cancel()V

    .line 235
    monitor-exit v15

    goto/16 :goto_0

    .line 238
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/video/StreamingFacadeImpl;->mOrientationState:Lcom/android/camera/async/Observable;

    if-nez v1, :cond_4

    .line 239
    sget-object v1, Lcom/android/camera/video/StreamingFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Cannot start streaming : mOrientationState is null"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/video/StreamingFacadeImpl;->mVideoStreamState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;->IDLE:Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 241
    invoke-interface {v8}, Lcom/android/camera/session/CaptureSession;->cancel()V

    .line 242
    monitor-exit v15

    goto/16 :goto_0

    .line 245
    :cond_4
    invoke-static {}, Lcom/android/camera/app/CameraServicesImpl;->instance()Lcom/android/camera/app/CameraServicesImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraServicesImpl;->getLiveBroadcastManager()Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    move-result-object v14

    .line 247
    .local v14, "liveBroadcastManager":Lcom/android/camera/livebroadcast/LiveBroadcastManager;
    if-nez v14, :cond_5

    .line 248
    sget-object v1, Lcom/android/camera/video/StreamingFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Cannot start streaming : liveBroadcastManager is null"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/video/StreamingFacadeImpl;->mVideoStreamState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;->IDLE:Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 250
    invoke-interface {v8}, Lcom/android/camera/session/CaptureSession;->cancel()V

    .line 251
    monitor-exit v15

    goto/16 :goto_0

    .line 254
    :cond_5
    invoke-virtual {v14}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->getCurrentAccountAgent()Lcom/android/camera/livebroadcast/AccountAgent;

    move-result-object v4

    .line 255
    .local v4, "accountAgent":Lcom/android/camera/livebroadcast/AccountAgent;
    if-nez v4, :cond_6

    .line 256
    sget-object v1, Lcom/android/camera/video/StreamingFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Cannot start streaming : accountAgent is null"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/video/StreamingFacadeImpl;->mVideoStreamState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;->IDLE:Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 258
    invoke-interface {v8}, Lcom/android/camera/session/CaptureSession;->cancel()V

    .line 259
    monitor-exit v15

    goto/16 :goto_0

    .line 262
    :cond_6
    sget-object v1, Lcom/android/camera/video/StreamingFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Starting streaming.  AccountType: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->getCurrentAccountType()Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ", accountAgent: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 263
    invoke-interface {v4}, Lcom/android/camera/livebroadcast/AccountAgent;->getCurrentAccount()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 262
    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/video/StreamingFacadeImpl;->mOrientationState:Lcom/android/camera/async/Observable;

    invoke-interface {v1}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 266
    .local v5, "streaming_orientation":I
    sget-object v1, Lcom/android/camera/video/StreamingFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "streaming_orientation : "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 268
    const/4 v1, 0x0

    invoke-interface {v4, v5, v1}, Lcom/android/camera/livebroadcast/AccountAgent;->setOrientation(IZ)V

    .line 277
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/video/StreamingFacadeImpl;->mReadyStateListener:Lcom/android/camera/video/RecordReadyStateChangeListener;

    invoke-interface {v1}, Lcom/android/camera/video/RecordReadyStateChangeListener;->onRecordingStarting()V

    .line 278
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/video/StreamingFacadeImpl;->mTouchChangedState:Lcom/android/camera/async/Observable;

    if-nez v1, :cond_8

    const/4 v7, 0x0

    .line 287
    .local v7, "touchChangedCallback":Lcom/android/camera/async/SafeCloseable;
    :goto_1
    new-instance v3, Lcom/android/camera/async/ConcurrentState;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 288
    .local v3, "isClosed":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Boolean;>;"
    new-instance v12, Lcom/android/camera/async/ConcurrentState;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v12, v1}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    .line 289
    .local v12, "isStarted":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Boolean;>;"
    new-instance v1, Lcom/android/camera/async/Lifetime;

    invoke-direct {v1}, Lcom/android/camera/async/Lifetime;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/camera/video/StreamingFacadeImpl;->mStreamingLifetime:Lcom/android/camera/async/Lifetime;

    .line 290
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/video/StreamingFacadeImpl;->mStreamingLifetime:Lcom/android/camera/async/Lifetime;

    new-instance v2, Lcom/android/camera/video/StreamingFacadeImpl$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/camera/video/StreamingFacadeImpl$2;-><init>(Lcom/android/camera/video/StreamingFacadeImpl;Lcom/android/camera/async/ConcurrentState;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 298
    new-instance v6, Lcom/android/camera/async/Lifetime;

    invoke-direct {v6}, Lcom/android/camera/async/Lifetime;-><init>()V

    .line 299
    .local v6, "abortStage1Lifetime":Lcom/android/camera/async/Lifetime;
    new-instance v1, Lcom/android/camera/video/StreamingFacadeImpl$3;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v4, v7, v8}, Lcom/android/camera/video/StreamingFacadeImpl$3;-><init>(Lcom/android/camera/video/StreamingFacadeImpl;Lcom/android/camera/livebroadcast/AccountAgent;Lcom/android/camera/async/SafeCloseable;Lcom/android/camera/session/CaptureSession;)V

    invoke-virtual {v6, v1}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 310
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/video/StreamingFacadeImpl;->mStreamingLifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v1, v6}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 312
    sget-object v1, Lcom/android/camera/video/StreamingFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Creating LiveBroadcast..."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl;->mCameraActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v16, v0

    new-instance v1, Lcom/android/camera/video/StreamingFacadeImpl$4;

    move-object/from16 v2, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p1

    move/from16 v13, p6

    invoke-direct/range {v1 .. v14}, Lcom/android/camera/video/StreamingFacadeImpl$4;-><init>(Lcom/android/camera/video/StreamingFacadeImpl;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/livebroadcast/AccountAgent;ILcom/android/camera/async/Lifetime;Lcom/android/camera/async/SafeCloseable;Lcom/android/camera/session/CaptureSession;Lcom/android/camera/burst/BurstFacade$BurstIntent;Lcom/android/camera/async/MainThread;Lcom/android/camera/session/VideoRecordListener;Lcom/android/camera/async/ConcurrentState;ILcom/android/camera/livebroadcast/LiveBroadcastManager;)V

    move-object/from16 v0, v16

    invoke-interface {v4, v0, v1, v3, v5}, Lcom/android/camera/livebroadcast/AccountAgent;->createLiveBroadcast(Lcom/android/camera/CameraActivity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/async/Observable;I)V

    .line 649
    .end local v3    # "isClosed":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Boolean;>;"
    .end local v4    # "accountAgent":Lcom/android/camera/livebroadcast/AccountAgent;
    .end local v5    # "streaming_orientation":I
    .end local v6    # "abortStage1Lifetime":Lcom/android/camera/async/Lifetime;
    .end local v7    # "touchChangedCallback":Lcom/android/camera/async/SafeCloseable;
    .end local v8    # "captureSession":Lcom/android/camera/session/CaptureSession;
    .end local v11    # "recordListener":Lcom/android/camera/session/VideoRecordListener;
    .end local v12    # "isStarted":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Boolean;>;"
    .end local v14    # "liveBroadcastManager":Lcom/android/camera/livebroadcast/LiveBroadcastManager;
    :cond_7
    :goto_2
    monitor-exit v15

    goto/16 :goto_0

    .line 278
    .restart local v4    # "accountAgent":Lcom/android/camera/livebroadcast/AccountAgent;
    .restart local v5    # "streaming_orientation":I
    .restart local v8    # "captureSession":Lcom/android/camera/session/CaptureSession;
    .restart local v11    # "recordListener":Lcom/android/camera/session/VideoRecordListener;
    .restart local v14    # "liveBroadcastManager":Lcom/android/camera/livebroadcast/LiveBroadcastManager;
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/video/StreamingFacadeImpl;->mTouchChangedState:Lcom/android/camera/async/Observable;

    new-instance v2, Lcom/android/camera/video/StreamingFacadeImpl$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/camera/video/StreamingFacadeImpl$1;-><init>(Lcom/android/camera/video/StreamingFacadeImpl;)V

    .line 285
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v9

    .line 279
    invoke-interface {v1, v2, v9}, Lcom/android/camera/async/Observable;->addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v7

    goto :goto_1

    .line 645
    .end local v4    # "accountAgent":Lcom/android/camera/livebroadcast/AccountAgent;
    .end local v5    # "streaming_orientation":I
    .end local v8    # "captureSession":Lcom/android/camera/session/CaptureSession;
    .end local v11    # "recordListener":Lcom/android/camera/session/VideoRecordListener;
    .end local v14    # "liveBroadcastManager":Lcom/android/camera/livebroadcast/LiveBroadcastManager;
    :cond_9
    sget-object v1, Lcom/android/camera/video/StreamingFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Cannot start record."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public stopBurst()Z
    .locals 5

    .prologue
    .line 654
    const/4 v1, 0x0

    .line 655
    .local v1, "wasStopped":Z
    iget-object v2, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mVideoStreamer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mVideoStreamState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;->RUNNING:Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;

    sget-object v4, Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;->STOPPING:Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;

    .line 656
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 657
    sget-object v2, Lcom/android/camera/video/StreamingFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "stoping Burst"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 658
    const/4 v1, 0x1

    .line 660
    new-instance v0, Lcom/android/camera/video/StreamingFacadeImpl$5;

    invoke-direct {v0, p0}, Lcom/android/camera/video/StreamingFacadeImpl$5;-><init>(Lcom/android/camera/video/StreamingFacadeImpl;)V

    .line 670
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/camera/async/MainThread;->isMainThread()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 671
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 676
    :goto_0
    iget-object v2, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mStreamingLifetime:Lcom/android/camera/async/Lifetime;

    if-eqz v2, :cond_0

    .line 677
    iget-object v2, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mStreamingLifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v2}, Lcom/android/camera/async/Lifetime;->close()V

    .line 678
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mStreamingLifetime:Lcom/android/camera/async/Lifetime;

    .line 680
    :cond_0
    iget-object v2, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mVideoStreamer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/burst/BurstTaker;

    invoke-interface {v2}, Lcom/android/camera/burst/BurstTaker;->stopBurst()V

    .line 682
    .end local v0    # "runnable":Ljava/lang/Runnable;
    :cond_1
    return v1

    .line 673
    .restart local v0    # "runnable":Ljava/lang/Runnable;
    :cond_2
    iget-object v2, p0, Lcom/android/camera/video/StreamingFacadeImpl;->mMainThread:Lcom/android/camera/async/MainThread;

    invoke-virtual {v2, v0}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
