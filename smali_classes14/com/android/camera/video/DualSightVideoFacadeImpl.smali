.class public Lcom/android/camera/video/DualSightVideoFacadeImpl;
.super Ljava/lang/Object;
.source "DualSightVideoFacadeImpl.java"

# interfaces
.implements Lcom/android/camera/video/VideoFacade;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/video/DualSightVideoFacadeImpl$MainHandler;,
        Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;
    }
.end annotation


# static fields
.field private static final HIDE_OPTIONS_DELAY_TIME:I = 0xbb8

.field private static final MSG_HIDE_MODE_OPTIONS_DURING_RECORDING:I = 0x1

.field private static final MSG_SHOW_MODE_OPTIONS_DURING_RECORDING:I = 0x2

.field private static final RECORD_TIME_UPDATE_DELAY:J = 0x3e8L

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private mCaptureRate:I

.field private mCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

.field private final mContext:Landroid/content/Context;

.field private mExternalUri:Landroid/net/Uri;

.field private mHandler:Landroid/os/Handler;

.field private final mInited:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mInputSurface:Landroid/view/Surface;

.field private final mMainThread:Lcom/android/camera/async/MainThread;

.field private mMaxVideoDurationInMs:I

.field private mNeedWarnRemaining:Z

.field private mOnRecordTimeUpdateListener:Lcom/android/camera/video/OnRecordTimeUpdateListener;

.field private final mOrientationLockController:Lcom/android/camera/burst/OrientationLockController;

.field private mProfile:Landroid/media/CamcorderProfile;

.field private final mReadyStateListener:Lcom/android/camera/video/RecordReadyStateChangeListener;

.field private mRecordingStartTime:J

.field private final mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mRequestedSizeLimit:J

.field private mShutterSoundEnabled:Z

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

.field private final mVideoRecoder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/camera/burst/BurstTaker;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoRecordState:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "DSVideoFacadeImpl"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/video/RecordReadyStateChangeListener;)V
    .locals 3
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "orientationLockController"    # Lcom/android/camera/burst/OrientationLockController;
    .param p3, "readyStateListener"    # Lcom/android/camera/video/RecordReadyStateChangeListener;

    .prologue
    const/4 v2, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;->IDLE:Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mVideoRecordState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mVideoRecoder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 84
    iput-boolean v2, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mNeedWarnRemaining:Z

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mShutterSoundEnabled:Z

    .line 88
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mCaptureRate:I

    .line 94
    new-instance v0, Lcom/android/camera/video/DualSightVideoFacadeImpl$MainHandler;

    invoke-direct {v0, p0, p0}, Lcom/android/camera/video/DualSightVideoFacadeImpl$MainHandler;-><init>(Lcom/android/camera/video/DualSightVideoFacadeImpl;Lcom/android/camera/video/VideoFacade;)V

    iput-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mHandler:Landroid/os/Handler;

    .line 135
    sget-object v0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 136
    iput-object p1, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mContext:Landroid/content/Context;

    .line 137
    iput-object p2, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mOrientationLockController:Lcom/android/camera/burst/OrientationLockController;

    .line 138
    iput-object p3, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mReadyStateListener:Lcom/android/camera/video/RecordReadyStateChangeListener;

    .line 140
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 141
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 142
    invoke-static {}, Lcom/android/camera/async/MainThread;->create()Lcom/android/camera/async/MainThread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mMainThread:Lcom/android/camera/async/MainThread;

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/video/DualSightVideoFacadeImpl;)Lcom/android/camera/video/RecordReadyStateChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/DualSightVideoFacadeImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mReadyStateListener:Lcom/android/camera/video/RecordReadyStateChangeListener;

    return-object v0
.end method

.method static synthetic access$100()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/video/DualSightVideoFacadeImpl;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/video/DualSightVideoFacadeImpl;

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mRequestedSizeLimit:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/android/camera/video/DualSightVideoFacadeImpl;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/video/DualSightVideoFacadeImpl;

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mRecordingStartTime:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/android/camera/video/DualSightVideoFacadeImpl;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/DualSightVideoFacadeImpl;
    .param p1, "x1"    # J

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mRecordingStartTime:J

    return-wide p1
.end method

.method static synthetic access$1302(Lcom/android/camera/video/DualSightVideoFacadeImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/video/DualSightVideoFacadeImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mNeedWarnRemaining:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/camera/video/DualSightVideoFacadeImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/DualSightVideoFacadeImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/video/DualSightVideoFacadeImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/video/DualSightVideoFacadeImpl;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/video/DualSightVideoFacadeImpl;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/DualSightVideoFacadeImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mVideoRecordState:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/video/DualSightVideoFacadeImpl;Lcom/android/camera/async/SafeCloseable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/video/DualSightVideoFacadeImpl;
    .param p1, "x1"    # Lcom/android/camera/async/SafeCloseable;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->reEnableUI(Lcom/android/camera/async/SafeCloseable;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/video/DualSightVideoFacadeImpl;)Lcom/android/camera/async/MainThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/DualSightVideoFacadeImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mMainThread:Lcom/android/camera/async/MainThread;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/video/DualSightVideoFacadeImpl;)Lcom/android/camera/async/Observable;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/DualSightVideoFacadeImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mTouchChangedState:Lcom/android/camera/async/Observable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/video/DualSightVideoFacadeImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/video/DualSightVideoFacadeImpl;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->resetHideTimer()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/video/DualSightVideoFacadeImpl;)Lcom/android/camera/one/OneCameraCaptureSetting;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/DualSightVideoFacadeImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/video/DualSightVideoFacadeImpl;)Landroid/media/CamcorderProfile;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/DualSightVideoFacadeImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mProfile:Landroid/media/CamcorderProfile;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/video/DualSightVideoFacadeImpl;)Landroid/view/Surface;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/DualSightVideoFacadeImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mInputSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/video/DualSightVideoFacadeImpl;)Lcom/android/camera/one/OneCameraCharacteristics;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/DualSightVideoFacadeImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/video/DualSightVideoFacadeImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/DualSightVideoFacadeImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/video/DualSightVideoFacadeImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/DualSightVideoFacadeImpl;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mMaxVideoDurationInMs:I

    return v0
.end method

.method private millisecondToTimeString(JZ)Ljava/lang/String;
    .locals 19
    .param p1, "milliSeconds"    # J
    .param p3, "displayCentiSeconds"    # Z

    .prologue
    .line 567
    const-wide/16 v14, 0x3e8

    div-long v10, p1, v14

    .line 568
    .local v10, "seconds":J
    const-wide/16 v14, 0x3c

    div-long v2, v10, v14

    .line 569
    .local v2, "minutes":J
    const-wide/16 v14, 0x3c

    div-long v0, v2, v14

    .line 570
    .local v0, "hours":J
    const-wide/16 v14, 0x3c

    mul-long/2addr v14, v0

    sub-long v6, v2, v14

    .line 571
    .local v6, "remainderMinutes":J
    const-wide/16 v14, 0x3c

    mul-long/2addr v14, v2

    sub-long v8, v10, v14

    .line 573
    .local v8, "remainderSeconds":J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 576
    .local v12, "timeStringBuilder":Ljava/lang/StringBuilder;
    const-wide/16 v14, 0x0

    cmp-long v13, v0, v14

    if-lez v13, :cond_1

    .line 577
    const-wide/16 v14, 0xa

    cmp-long v13, v0, v14

    if-gez v13, :cond_0

    .line 578
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 580
    :cond_0
    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 582
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 586
    :cond_1
    const-wide/16 v14, 0xa

    cmp-long v13, v6, v14

    if-gez v13, :cond_2

    .line 587
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 589
    :cond_2
    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 590
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 593
    const-wide/16 v14, 0xa

    cmp-long v13, v8, v14

    if-gez v13, :cond_3

    .line 594
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 596
    :cond_3
    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 599
    if-eqz p3, :cond_5

    .line 600
    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 601
    const-wide/16 v14, 0x3e8

    mul-long/2addr v14, v10

    sub-long v14, p1, v14

    const-wide/16 v16, 0xa

    div-long v4, v14, v16

    .line 602
    .local v4, "remainderCentiSeconds":J
    const-wide/16 v14, 0xa

    cmp-long v13, v4, v14

    if-gez v13, :cond_4

    .line 603
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 605
    :cond_4
    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 608
    .end local v4    # "remainderCentiSeconds":J
    :cond_5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method private reEnableUI(Lcom/android/camera/async/SafeCloseable;)V
    .locals 2
    .param p1, "touchChangedCallback"    # Lcom/android/camera/async/SafeCloseable;

    .prologue
    .line 550
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V

    .line 551
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mOrientationLockController:Lcom/android/camera/burst/OrientationLockController;

    invoke-interface {v0}, Lcom/android/camera/burst/OrientationLockController;->unlockOrientation()V

    .line 552
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mReadyStateListener:Lcom/android/camera/video/RecordReadyStateChangeListener;

    invoke-interface {v0}, Lcom/android/camera/video/RecordReadyStateChangeListener;->onRecordingStoped()V

    .line 553
    if-eqz p1, :cond_0

    .line 554
    invoke-interface {p1}, Lcom/android/camera/async/SafeCloseable;->close()V

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 556
    return-void
.end method

.method private resetHideTimer()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 559
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 560
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 561
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 562
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 563
    return-void
.end method

.method private updateRecordingTime()V
    .locals 15

    .prologue
    const/16 v14, 0x1e

    const/4 v5, 0x0

    .line 612
    iget-object v10, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mOnRecordTimeUpdateListener:Lcom/android/camera/video/OnRecordTimeUpdateListener;

    if-nez v10, :cond_1

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 613
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->isBurstRunning()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 615
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 616
    .local v6, "now":J
    iget-wide v10, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mRecordingStartTime:J

    sub-long v0, v6, v10

    .line 620
    .local v0, "delta":J
    iget v10, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mMaxVideoDurationInMs:I

    if-eqz v10, :cond_5

    iget v10, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mMaxVideoDurationInMs:I

    const v11, 0xea60

    sub-int/2addr v10, v11

    int-to-long v10, v10

    cmp-long v10, v0, v10

    if-ltz v10, :cond_5

    const/4 v4, 0x1

    .line 622
    .local v4, "needCountdown":Z
    :goto_1
    move-wide v2, v0

    .line 623
    .local v2, "deltaAdjusted":J
    if-eqz v4, :cond_6

    .line 624
    const-wide/16 v10, 0x0

    iget v12, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mMaxVideoDurationInMs:I

    int-to-long v12, v12

    sub-long/2addr v12, v2

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 629
    :cond_2
    :goto_2
    iget-object v10, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mOnRecordTimeUpdateListener:Lcom/android/camera/video/OnRecordTimeUpdateListener;

    invoke-direct {p0, v2, v3, v5}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v10, v5}, Lcom/android/camera/video/OnRecordTimeUpdateListener;->onRecordTimeUpdate(Ljava/lang/String;)V

    .line 631
    iget-boolean v5, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mNeedWarnRemaining:Z

    if-eq v5, v4, :cond_3

    .line 632
    iput-boolean v4, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mNeedWarnRemaining:Z

    .line 633
    iget-object v5, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mOnRecordTimeUpdateListener:Lcom/android/camera/video/OnRecordTimeUpdateListener;

    iget-boolean v10, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mNeedWarnRemaining:Z

    invoke-interface {v5, v10}, Lcom/android/camera/video/OnRecordTimeUpdateListener;->onRecordTimeWarning(Z)V

    .line 636
    :cond_3
    const-wide/16 v8, 0x3e8

    .line 637
    .local v8, "targetNextUpdateDelay":J
    iget v5, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mCaptureRate:I

    if-eq v5, v14, :cond_4

    .line 638
    iget-object v5, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameRate:I

    int-to-float v5, v5

    iget v10, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mCaptureRate:I

    int-to-float v10, v10

    div-float/2addr v5, v10

    const/high16 v10, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v10

    float-to-long v8, v5

    .line 641
    :cond_4
    new-instance v5, Ljava/util/Timer;

    invoke-direct {v5}, Ljava/util/Timer;-><init>()V

    new-instance v10, Lcom/android/camera/video/DualSightVideoFacadeImpl$4;

    invoke-direct {v10, p0}, Lcom/android/camera/video/DualSightVideoFacadeImpl$4;-><init>(Lcom/android/camera/video/DualSightVideoFacadeImpl;)V

    rem-long v12, v0, v8

    sub-long v12, v8, v12

    invoke-virtual {v5, v10, v12, v13}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .end local v2    # "deltaAdjusted":J
    .end local v4    # "needCountdown":Z
    .end local v8    # "targetNextUpdateDelay":J
    :cond_5
    move v4, v5

    .line 620
    goto :goto_1

    .line 625
    .restart local v2    # "deltaAdjusted":J
    .restart local v4    # "needCountdown":Z
    :cond_6
    iget v10, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mCaptureRate:I

    if-eq v10, v14, :cond_2

    .line 626
    iget v10, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mCaptureRate:I

    int-to-long v10, v10

    mul-long/2addr v10, v0

    iget-object v12, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mProfile:Landroid/media/CamcorderProfile;

    iget v12, v12, Landroid/media/CamcorderProfile;->videoFrameRate:I

    int-to-long v12, v12

    div-long v2, v10, v12

    goto :goto_2
.end method


# virtual methods
.method public getCamcorderProfile()Landroid/media/CamcorderProfile;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mProfile:Landroid/media/CamcorderProfile;

    return-object v0
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mInputSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public isBurstRunning()Z
    .locals 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mVideoRecordState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;->RUNNING:Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;

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
    .line 524
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mVideoRecordState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;->STOPPING:Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;

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
    .line 529
    iget-object v1, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 530
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 531
    sget-object v0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "release"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 532
    invoke-virtual {p0}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->stopBurst()Z

    .line 533
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mInputSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mInputSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 534
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mExternalUri:Landroid/net/Uri;

    .line 536
    :cond_1
    monitor-exit v1

    .line 537
    return-void

    .line 536
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
    .line 541
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mVideoRecoder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 542
    return-void
.end method

.method public setLiveBroadcastStatusInfo(Lcom/android/camera/video/LiveBroadcastStatusController;)V
    .locals 0
    .param p1, "liveBroadcastStatusController"    # Lcom/android/camera/video/LiveBroadcastStatusController;

    .prologue
    .line 170
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
    .line 148
    .local p10, "touchChangedState":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 160
    :goto_0
    return-void

    .line 150
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    iput-object p1, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mProfile:Landroid/media/CamcorderProfile;

    .line 152
    iput-object p2, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    .line 153
    iput p4, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mMaxVideoDurationInMs:I

    .line 154
    iput-wide p5, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mRequestedSizeLimit:J

    .line 155
    iput-object p8, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mInputSurface:Landroid/view/Surface;

    .line 156
    iput-object p9, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mOnRecordTimeUpdateListener:Lcom/android/camera/video/OnRecordTimeUpdateListener;

    .line 157
    iput-object p3, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 158
    iput-object p7, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mExternalUri:Landroid/net/Uri;

    .line 159
    iput-object p10, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mTouchChangedState:Lcom/android/camera/async/Observable;

    goto :goto_0

    .line 150
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
    .line 179
    iput-boolean p1, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mShutterSoundEnabled:Z

    .line 180
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
    .line 165
    .local p2, "orientationState":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    return-void
.end method

.method public startBurst(Lcom/android/camera/async/MainThread;Lcom/android/camera/session/CaptureSession$CaptureSessionCreator;Lcom/android/camera/burst/BurstFacade$BurstIntent;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/one/OneCamera$Facing;IJ)V
    .locals 23
    .param p1, "mainThread"    # Lcom/android/camera/async/MainThread;
    .param p2, "captureSessionCreator"    # Lcom/android/camera/session/CaptureSession$CaptureSessionCreator;
    .param p3, "burstIntent"    # Lcom/android/camera/burst/BurstFacade$BurstIntent;
    .param p4, "deviceOrientation"    # Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .param p5, "cameraFacing"    # Lcom/android/camera/one/OneCamera$Facing;
    .param p6, "imageOrientationDegrees"    # I
    .param p7, "remainingStorageBytes"    # J

    .prologue
    .line 184
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 185
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v3

    .line 489
    :goto_0
    return-void

    .line 186
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 188
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 191
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_3

    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mVideoRecoder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mVideoRecordState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;->IDLE:Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;

    sget-object v5, Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;->RUNNING:Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;

    .line 193
    invoke-virtual {v2, v3, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mExternalUri:Landroid/net/Uri;

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/android/camera/session/CaptureSession$CaptureSessionCreator;->createAndStartEmpty(Landroid/net/Uri;)Lcom/android/camera/session/CaptureSession;

    move-result-object v8

    .line 196
    .local v8, "captureSession":Lcom/android/camera/session/CaptureSession;
    if-nez v8, :cond_1

    .line 197
    sget-object v2, Lcom/android/camera/video/DualSightVideoFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Cannot start record : captureSession is null"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mVideoRecordState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;->IDLE:Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 199
    invoke-interface {v8}, Lcom/android/camera/session/CaptureSession;->cancel()V

    .line 200
    monitor-exit v22

    goto :goto_0

    .line 488
    .end local v8    # "captureSession":Lcom/android/camera/session/CaptureSession;
    :catchall_0
    move-exception v2

    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 186
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 203
    .restart local v8    # "captureSession":Lcom/android/camera/session/CaptureSession;
    :cond_1
    :try_start_3
    invoke-interface {v8}, Lcom/android/camera/session/CaptureSession;->getVideoRecordListener()Lcom/android/camera/session/VideoRecordListener;

    move-result-object v10

    .line 204
    .local v10, "recordListener":Lcom/android/camera/session/VideoRecordListener;
    if-nez v10, :cond_2

    .line 205
    sget-object v2, Lcom/android/camera/video/DualSightVideoFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Cannot start record : recordListener is null"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mVideoRecordState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;->IDLE:Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 207
    invoke-interface {v8}, Lcom/android/camera/session/CaptureSession;->cancel()V

    .line 208
    monitor-exit v22

    goto :goto_0

    .line 211
    :cond_2
    sget-object v2, Lcom/android/camera/video/DualSightVideoFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting record. Device orientation: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", image orientation: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", remainingStorageBytes: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p7

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    invoke-virtual {v2}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureRateSetting()Lcom/android/camera/async/Observable;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mCaptureRate:I

    .line 216
    sget-object v2, Lcom/android/camera/video/DualSightVideoFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCaptureRate : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mCaptureRate:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mOrientationLockController:Lcom/android/camera/burst/OrientationLockController;

    invoke-interface {v2}, Lcom/android/camera/burst/OrientationLockController;->lockOrientation()V

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mReadyStateListener:Lcom/android/camera/video/RecordReadyStateChangeListener;

    invoke-interface {v2}, Lcom/android/camera/video/RecordReadyStateChangeListener;->onRecordingStarting()V

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mTouchChangedState:Lcom/android/camera/async/Observable;

    if-nez v2, :cond_4

    const/4 v11, 0x0

    .line 231
    .local v11, "touchChangedCallback":Lcom/android/camera/async/SafeCloseable;
    :goto_1
    new-instance v4, Lcom/android/camera/async/Lifetime;

    invoke-direct {v4}, Lcom/android/camera/async/Lifetime;-><init>()V

    .line 232
    .local v4, "localLifetime":Lcom/android/camera/async/Lifetime;
    new-instance v2, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;

    move-object/from16 v3, p0

    move-object/from16 v5, p4

    move-wide/from16 v6, p7

    move-object/from16 v9, p1

    invoke-direct/range {v2 .. v11}, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;-><init>(Lcom/android/camera/video/DualSightVideoFacadeImpl;Lcom/android/camera/async/Lifetime;Lcom/android/camera/app/OrientationManager$DeviceOrientation;JLcom/android/camera/session/CaptureSession;Lcom/android/camera/async/MainThread;Lcom/android/camera/session/VideoRecordListener;Lcom/android/camera/async/SafeCloseable;)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v12, p3

    move-object v13, v2

    move-object/from16 v16, v8

    move-object/from16 v17, v4

    move-object/from16 v18, p4

    move/from16 v19, p6

    invoke-static/range {v12 .. v19}, Lcom/android/camera/burst/BurstControllerCreator;->create(Lcom/android/camera/burst/BurstFacade$BurstIntent;Lcom/android/camera/burst/BurstResultsListener;Landroid/view/Surface;Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/session/CaptureSession;Lcom/android/camera/async/Lifetime;Lcom/android/camera/app/OrientationManager$DeviceOrientation;I)Lcom/android/camera/burst/BurstController;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v21

    .line 476
    .local v21, "recordController":Lcom/android/camera/burst/BurstController;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mVideoRecoder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/burst/BurstTaker;

    move-object/from16 v0, v21

    invoke-interface {v2, v0}, Lcom/android/camera/burst/BurstTaker;->startBurst(Lcom/android/camera/burst/BurstController;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 488
    .end local v4    # "localLifetime":Lcom/android/camera/async/Lifetime;
    .end local v8    # "captureSession":Lcom/android/camera/session/CaptureSession;
    .end local v10    # "recordListener":Lcom/android/camera/session/VideoRecordListener;
    .end local v11    # "touchChangedCallback":Lcom/android/camera/async/SafeCloseable;
    .end local v21    # "recordController":Lcom/android/camera/burst/BurstController;
    :cond_3
    :goto_2
    :try_start_5
    monitor-exit v22

    goto/16 :goto_0

    .line 222
    .restart local v8    # "captureSession":Lcom/android/camera/session/CaptureSession;
    .restart local v10    # "recordListener":Lcom/android/camera/session/VideoRecordListener;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mTouchChangedState:Lcom/android/camera/async/Observable;

    new-instance v3, Lcom/android/camera/video/DualSightVideoFacadeImpl$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/camera/video/DualSightVideoFacadeImpl$1;-><init>(Lcom/android/camera/video/DualSightVideoFacadeImpl;)V

    .line 229
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v5

    .line 223
    invoke-interface {v2, v3, v5}, Lcom/android/camera/async/Observable;->addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v11

    goto :goto_1

    .line 477
    .restart local v4    # "localLifetime":Lcom/android/camera/async/Lifetime;
    .restart local v11    # "touchChangedCallback":Lcom/android/camera/async/SafeCloseable;
    .restart local v21    # "recordController":Lcom/android/camera/burst/BurstController;
    :catch_0
    move-exception v20

    .line 478
    .local v20, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/camera/video/DualSightVideoFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start record fail : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 479
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->stopBurst()Z

    .line 480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mVideoRecordState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;->STOPPING:Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;

    sget-object v5, Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;->IDLE:Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;

    invoke-virtual {v2, v3, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 482
    const/4 v2, -0x1

    invoke-interface {v10, v2}, Lcom/android/camera/session/VideoRecordListener;->onVideoRecordError(I)V

    goto :goto_2

    .line 485
    .end local v4    # "localLifetime":Lcom/android/camera/async/Lifetime;
    .end local v8    # "captureSession":Lcom/android/camera/session/CaptureSession;
    .end local v10    # "recordListener":Lcom/android/camera/session/VideoRecordListener;
    .end local v11    # "touchChangedCallback":Lcom/android/camera/async/SafeCloseable;
    .end local v20    # "e":Ljava/lang/Exception;
    .end local v21    # "recordController":Lcom/android/camera/burst/BurstController;
    :cond_5
    sget-object v2, Lcom/android/camera/video/DualSightVideoFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Cannot start record."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public stopBurst()Z
    .locals 5

    .prologue
    .line 493
    const/4 v1, 0x0

    .line 494
    .local v1, "wasStopped":Z
    iget-object v2, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mVideoRecoder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mVideoRecordState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;->RUNNING:Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;

    sget-object v4, Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;->STOPPING:Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;

    .line 495
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 496
    sget-object v2, Lcom/android/camera/video/DualSightVideoFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "stoping Burst"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 497
    const/4 v1, 0x1

    .line 499
    new-instance v0, Lcom/android/camera/video/DualSightVideoFacadeImpl$3;

    invoke-direct {v0, p0}, Lcom/android/camera/video/DualSightVideoFacadeImpl$3;-><init>(Lcom/android/camera/video/DualSightVideoFacadeImpl;)V

    .line 506
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/camera/async/MainThread;->isMainThread()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 507
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 512
    :goto_0
    iget-object v2, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mVideoRecoder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/burst/BurstTaker;

    invoke-interface {v2}, Lcom/android/camera/burst/BurstTaker;->stopBurst()V

    .line 514
    .end local v0    # "runnable":Ljava/lang/Runnable;
    :cond_0
    return v1

    .line 509
    .restart local v0    # "runnable":Ljava/lang/Runnable;
    :cond_1
    iget-object v2, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl;->mMainThread:Lcom/android/camera/async/MainThread;

    invoke-virtual {v2, v0}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
