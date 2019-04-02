.class public Lcom/android/camera/video/VideoFacadeImpl;
.super Ljava/lang/Object;
.source "VideoFacadeImpl.java"

# interfaces
.implements Lcom/android/camera/video/VideoFacade;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;
    }
.end annotation


# static fields
.field private static final RECORD_TIME_UPDATE_DELAY:J = 0x3e8L

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private mCaptureRate:I

.field private mCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

.field private final mContext:Landroid/content/Context;

.field private mExternalUri:Landroid/net/Uri;

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
            "Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "VideoFacadeImpl"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/video/VideoFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/video/RecordReadyStateChangeListener;)V
    .locals 3
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "orientationLockController"    # Lcom/android/camera/burst/OrientationLockController;
    .param p3, "readyStateListener"    # Lcom/android/camera/video/RecordReadyStateChangeListener;

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;->IDLE:Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl;->mVideoRecordState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl;->mVideoRecoder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 78
    iput-boolean v2, p0, Lcom/android/camera/video/VideoFacadeImpl;->mNeedWarnRemaining:Z

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/video/VideoFacadeImpl;->mShutterSoundEnabled:Z

    .line 82
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/camera/video/VideoFacadeImpl;->mCaptureRate:I

    .line 88
    sget-object v0, Lcom/android/camera/video/VideoFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 89
    iput-object p1, p0, Lcom/android/camera/video/VideoFacadeImpl;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/android/camera/video/VideoFacadeImpl;->mOrientationLockController:Lcom/android/camera/burst/OrientationLockController;

    .line 91
    iput-object p3, p0, Lcom/android/camera/video/VideoFacadeImpl;->mReadyStateListener:Lcom/android/camera/video/RecordReadyStateChangeListener;

    .line 93
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl;->mInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 95
    invoke-static {}, Lcom/android/camera/async/MainThread;->create()Lcom/android/camera/async/MainThread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl;->mMainThread:Lcom/android/camera/async/MainThread;

    .line 96
    return-void
.end method

.method static synthetic access$000()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/camera/video/VideoFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/video/VideoFacadeImpl;)Lcom/android/camera/one/OneCameraCaptureSetting;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/VideoFacadeImpl;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl;->mCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/video/VideoFacadeImpl;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/video/VideoFacadeImpl;

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/android/camera/video/VideoFacadeImpl;->mRecordingStartTime:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/android/camera/video/VideoFacadeImpl;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/VideoFacadeImpl;
    .param p1, "x1"    # J

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/android/camera/video/VideoFacadeImpl;->mRecordingStartTime:J

    return-wide p1
.end method

.method static synthetic access$1102(Lcom/android/camera/video/VideoFacadeImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/video/VideoFacadeImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/camera/video/VideoFacadeImpl;->mNeedWarnRemaining:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/camera/video/VideoFacadeImpl;)Lcom/android/camera/video/RecordReadyStateChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/VideoFacadeImpl;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl;->mReadyStateListener:Lcom/android/camera/video/RecordReadyStateChangeListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/video/VideoFacadeImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/video/VideoFacadeImpl;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/camera/video/VideoFacadeImpl;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/video/VideoFacadeImpl;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/VideoFacadeImpl;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl;->mVideoRecordState:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/video/VideoFacadeImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/video/VideoFacadeImpl;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/camera/video/VideoFacadeImpl;->reEnableUI()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/video/VideoFacadeImpl;)Lcom/android/camera/async/MainThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/VideoFacadeImpl;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl;->mMainThread:Lcom/android/camera/async/MainThread;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/video/VideoFacadeImpl;)Landroid/media/CamcorderProfile;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/VideoFacadeImpl;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl;->mProfile:Landroid/media/CamcorderProfile;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/video/VideoFacadeImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/VideoFacadeImpl;

    .prologue
    .line 47
    iget v0, p0, Lcom/android/camera/video/VideoFacadeImpl;->mCaptureRate:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/video/VideoFacadeImpl;)Landroid/view/Surface;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/VideoFacadeImpl;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl;->mInputSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/video/VideoFacadeImpl;)Lcom/android/camera/one/OneCameraCharacteristics;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/VideoFacadeImpl;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/video/VideoFacadeImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/VideoFacadeImpl;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/video/VideoFacadeImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/VideoFacadeImpl;

    .prologue
    .line 47
    iget v0, p0, Lcom/android/camera/video/VideoFacadeImpl;->mMaxVideoDurationInMs:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/video/VideoFacadeImpl;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/video/VideoFacadeImpl;

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/android/camera/video/VideoFacadeImpl;->mRequestedSizeLimit:J

    return-wide v0
.end method

.method private millisecondToTimeString(JZ)Ljava/lang/String;
    .locals 19
    .param p1, "milliSeconds"    # J
    .param p3, "displayCentiSeconds"    # Z

    .prologue
    .line 553
    const-wide/16 v14, 0x3e8

    div-long v10, p1, v14

    .line 554
    .local v10, "seconds":J
    const-wide/16 v14, 0x3c

    div-long v2, v10, v14

    .line 555
    .local v2, "minutes":J
    const-wide/16 v14, 0x3c

    div-long v0, v2, v14

    .line 556
    .local v0, "hours":J
    const-wide/16 v14, 0x3c

    mul-long/2addr v14, v0

    sub-long v6, v2, v14

    .line 557
    .local v6, "remainderMinutes":J
    const-wide/16 v14, 0x3c

    mul-long/2addr v14, v2

    sub-long v8, v10, v14

    .line 559
    .local v8, "remainderSeconds":J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 562
    .local v12, "timeStringBuilder":Ljava/lang/StringBuilder;
    const-wide/16 v14, 0x0

    cmp-long v13, v0, v14

    if-lez v13, :cond_1

    .line 563
    const-wide/16 v14, 0xa

    cmp-long v13, v0, v14

    if-gez v13, :cond_0

    .line 564
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 566
    :cond_0
    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 568
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 572
    :cond_1
    const-wide/16 v14, 0xa

    cmp-long v13, v6, v14

    if-gez v13, :cond_2

    .line 573
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 575
    :cond_2
    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 576
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 579
    const-wide/16 v14, 0xa

    cmp-long v13, v8, v14

    if-gez v13, :cond_3

    .line 580
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 582
    :cond_3
    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 585
    if-eqz p3, :cond_5

    .line 586
    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 587
    const-wide/16 v14, 0x3e8

    mul-long/2addr v14, v10

    sub-long v14, p1, v14

    const-wide/16 v16, 0xa

    div-long v4, v14, v16

    .line 588
    .local v4, "remainderCentiSeconds":J
    const-wide/16 v14, 0xa

    cmp-long v13, v4, v14

    if-gez v13, :cond_4

    .line 589
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 591
    :cond_4
    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 594
    .end local v4    # "remainderCentiSeconds":J
    :cond_5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method private reEnableUI()V
    .locals 1

    .prologue
    .line 547
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V

    .line 548
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl;->mOrientationLockController:Lcom/android/camera/burst/OrientationLockController;

    invoke-interface {v0}, Lcom/android/camera/burst/OrientationLockController;->unlockOrientation()V

    .line 549
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl;->mReadyStateListener:Lcom/android/camera/video/RecordReadyStateChangeListener;

    invoke-interface {v0}, Lcom/android/camera/video/RecordReadyStateChangeListener;->onRecordingStoped()V

    .line 550
    return-void
.end method

.method private updateRecordingTime()V
    .locals 15

    .prologue
    const/16 v14, 0x1e

    const/4 v5, 0x0

    .line 598
    iget-object v10, p0, Lcom/android/camera/video/VideoFacadeImpl;->mOnRecordTimeUpdateListener:Lcom/android/camera/video/OnRecordTimeUpdateListener;

    if-nez v10, :cond_1

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/video/VideoFacadeImpl;->isBurstRunning()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 601
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 602
    .local v6, "now":J
    iget-wide v10, p0, Lcom/android/camera/video/VideoFacadeImpl;->mRecordingStartTime:J

    sub-long v0, v6, v10

    .line 606
    .local v0, "delta":J
    iget v10, p0, Lcom/android/camera/video/VideoFacadeImpl;->mMaxVideoDurationInMs:I

    if-eqz v10, :cond_5

    iget v10, p0, Lcom/android/camera/video/VideoFacadeImpl;->mMaxVideoDurationInMs:I

    const v11, 0xea60

    sub-int/2addr v10, v11

    int-to-long v10, v10

    cmp-long v10, v0, v10

    if-ltz v10, :cond_5

    const/4 v4, 0x1

    .line 608
    .local v4, "needCountdown":Z
    :goto_1
    move-wide v2, v0

    .line 609
    .local v2, "deltaAdjusted":J
    if-eqz v4, :cond_6

    .line 610
    const-wide/16 v10, 0x0

    iget v12, p0, Lcom/android/camera/video/VideoFacadeImpl;->mMaxVideoDurationInMs:I

    int-to-long v12, v12

    sub-long/2addr v12, v2

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 615
    :cond_2
    :goto_2
    iget-object v10, p0, Lcom/android/camera/video/VideoFacadeImpl;->mOnRecordTimeUpdateListener:Lcom/android/camera/video/OnRecordTimeUpdateListener;

    invoke-direct {p0, v2, v3, v5}, Lcom/android/camera/video/VideoFacadeImpl;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v10, v5}, Lcom/android/camera/video/OnRecordTimeUpdateListener;->onRecordTimeUpdate(Ljava/lang/String;)V

    .line 617
    iget-boolean v5, p0, Lcom/android/camera/video/VideoFacadeImpl;->mNeedWarnRemaining:Z

    if-eq v5, v4, :cond_3

    .line 618
    iput-boolean v4, p0, Lcom/android/camera/video/VideoFacadeImpl;->mNeedWarnRemaining:Z

    .line 619
    iget-object v5, p0, Lcom/android/camera/video/VideoFacadeImpl;->mOnRecordTimeUpdateListener:Lcom/android/camera/video/OnRecordTimeUpdateListener;

    iget-boolean v10, p0, Lcom/android/camera/video/VideoFacadeImpl;->mNeedWarnRemaining:Z

    invoke-interface {v5, v10}, Lcom/android/camera/video/OnRecordTimeUpdateListener;->onRecordTimeWarning(Z)V

    .line 622
    :cond_3
    const-wide/16 v8, 0x3e8

    .line 623
    .local v8, "targetNextUpdateDelay":J
    iget v5, p0, Lcom/android/camera/video/VideoFacadeImpl;->mCaptureRate:I

    if-ge v5, v14, :cond_4

    .line 624
    iget-object v5, p0, Lcom/android/camera/video/VideoFacadeImpl;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameRate:I

    int-to-float v5, v5

    iget v10, p0, Lcom/android/camera/video/VideoFacadeImpl;->mCaptureRate:I

    int-to-float v10, v10

    div-float/2addr v5, v10

    const/high16 v10, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v10

    float-to-long v8, v5

    .line 627
    :cond_4
    new-instance v5, Ljava/util/Timer;

    invoke-direct {v5}, Ljava/util/Timer;-><init>()V

    new-instance v10, Lcom/android/camera/video/VideoFacadeImpl$3;

    invoke-direct {v10, p0}, Lcom/android/camera/video/VideoFacadeImpl$3;-><init>(Lcom/android/camera/video/VideoFacadeImpl;)V

    rem-long v12, v0, v8

    sub-long v12, v8, v12

    invoke-virtual {v5, v10, v12, v13}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .end local v2    # "deltaAdjusted":J
    .end local v4    # "needCountdown":Z
    .end local v8    # "targetNextUpdateDelay":J
    :cond_5
    move v4, v5

    .line 606
    goto :goto_1

    .line 611
    .restart local v2    # "deltaAdjusted":J
    .restart local v4    # "needCountdown":Z
    :cond_6
    iget v10, p0, Lcom/android/camera/video/VideoFacadeImpl;->mCaptureRate:I

    if-eq v10, v14, :cond_2

    .line 612
    iget v10, p0, Lcom/android/camera/video/VideoFacadeImpl;->mCaptureRate:I

    int-to-long v10, v10

    mul-long/2addr v10, v0

    iget-object v12, p0, Lcom/android/camera/video/VideoFacadeImpl;->mProfile:Landroid/media/CamcorderProfile;

    iget v12, v12, Landroid/media/CamcorderProfile;->videoFrameRate:I

    int-to-long v12, v12

    div-long v2, v10, v12

    goto :goto_2
.end method


# virtual methods
.method public getCamcorderProfile()Landroid/media/CamcorderProfile;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl;->mProfile:Landroid/media/CamcorderProfile;

    return-object v0
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl;->mInputSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public isBurstRunning()Z
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl;->mVideoRecordState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;->RUNNING:Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;

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
    .line 522
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl;->mVideoRecordState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;->STOPPING:Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;

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
    .line 527
    iget-object v1, p0, Lcom/android/camera/video/VideoFacadeImpl;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 528
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 534
    :goto_0
    return-void

    .line 529
    :cond_0
    sget-object v0, Lcom/android/camera/video/VideoFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "release"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 530
    invoke-virtual {p0}, Lcom/android/camera/video/VideoFacadeImpl;->stopBurst()Z

    .line 531
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl;->mInputSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl;->mInputSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 532
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl;->mExternalUri:Landroid/net/Uri;

    .line 533
    monitor-exit v1

    goto :goto_0

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
    .line 538
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl;->mVideoRecoder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 539
    return-void
.end method

.method public setLiveBroadcastStatusInfo(Lcom/android/camera/video/LiveBroadcastStatusController;)V
    .locals 0
    .param p1, "liveBroadcastStatusController"    # Lcom/android/camera/video/LiveBroadcastStatusController;

    .prologue
    .line 121
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
    .line 100
    .local p10, "touchChangedState":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lcom/android/camera/video/VideoFacadeImpl;->mInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl;->mInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 111
    :goto_0
    return-void

    .line 102
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    iput-object p1, p0, Lcom/android/camera/video/VideoFacadeImpl;->mProfile:Landroid/media/CamcorderProfile;

    .line 104
    iput-object p2, p0, Lcom/android/camera/video/VideoFacadeImpl;->mCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    .line 105
    iput p4, p0, Lcom/android/camera/video/VideoFacadeImpl;->mMaxVideoDurationInMs:I

    .line 106
    iput-wide p5, p0, Lcom/android/camera/video/VideoFacadeImpl;->mRequestedSizeLimit:J

    .line 107
    iput-object p8, p0, Lcom/android/camera/video/VideoFacadeImpl;->mInputSurface:Landroid/view/Surface;

    .line 108
    iput-object p9, p0, Lcom/android/camera/video/VideoFacadeImpl;->mOnRecordTimeUpdateListener:Lcom/android/camera/video/OnRecordTimeUpdateListener;

    .line 109
    iput-object p3, p0, Lcom/android/camera/video/VideoFacadeImpl;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 110
    iput-object p7, p0, Lcom/android/camera/video/VideoFacadeImpl;->mExternalUri:Landroid/net/Uri;

    goto :goto_0

    .line 102
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
    .line 130
    iput-boolean p1, p0, Lcom/android/camera/video/VideoFacadeImpl;->mShutterSoundEnabled:Z

    .line 131
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
    .line 116
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
    .line 135
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/video/VideoFacadeImpl;->mInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 136
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/VideoFacadeImpl;->mInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v3

    .line 487
    :goto_0
    return-void

    .line 137
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 139
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/video/VideoFacadeImpl;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 142
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/VideoFacadeImpl;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_3

    .line 143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/VideoFacadeImpl;->mVideoRecoder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/VideoFacadeImpl;->mVideoRecordState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;->IDLE:Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;

    sget-object v5, Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;->RUNNING:Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;

    .line 144
    invoke-virtual {v2, v3, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/VideoFacadeImpl;->mExternalUri:Landroid/net/Uri;

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/android/camera/session/CaptureSession$CaptureSessionCreator;->createAndStartEmpty(Landroid/net/Uri;)Lcom/android/camera/session/CaptureSession;

    move-result-object v8

    .line 147
    .local v8, "captureSession":Lcom/android/camera/session/CaptureSession;
    if-nez v8, :cond_1

    .line 148
    sget-object v2, Lcom/android/camera/video/VideoFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Cannot start record : captureSession is null"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/VideoFacadeImpl;->mVideoRecordState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;->IDLE:Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 150
    invoke-interface {v8}, Lcom/android/camera/session/CaptureSession;->cancel()V

    .line 151
    monitor-exit v22

    goto :goto_0

    .line 486
    .end local v8    # "captureSession":Lcom/android/camera/session/CaptureSession;
    :catchall_0
    move-exception v2

    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 137
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 154
    .restart local v8    # "captureSession":Lcom/android/camera/session/CaptureSession;
    :cond_1
    :try_start_3
    invoke-interface {v8}, Lcom/android/camera/session/CaptureSession;->getVideoRecordListener()Lcom/android/camera/session/VideoRecordListener;

    move-result-object v11

    .line 155
    .local v11, "recordListener":Lcom/android/camera/session/VideoRecordListener;
    if-nez v11, :cond_2

    .line 156
    sget-object v2, Lcom/android/camera/video/VideoFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Cannot start record : recordListener is null"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/VideoFacadeImpl;->mVideoRecordState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;->IDLE:Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 158
    invoke-interface {v8}, Lcom/android/camera/session/CaptureSession;->cancel()V

    .line 159
    monitor-exit v22

    goto :goto_0

    .line 162
    :cond_2
    sget-object v2, Lcom/android/camera/video/VideoFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/VideoFacadeImpl;->mCaptureSetting:Lcom/android/camera/one/OneCameraCaptureSetting;

    invoke-virtual {v2}, Lcom/android/camera/one/OneCameraCaptureSetting;->getCaptureRateSetting()Lcom/android/camera/async/Observable;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/video/VideoFacadeImpl;->mCaptureRate:I

    .line 167
    sget-object v2, Lcom/android/camera/video/VideoFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCaptureRate : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/video/VideoFacadeImpl;->mCaptureRate:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/VideoFacadeImpl;->mOrientationLockController:Lcom/android/camera/burst/OrientationLockController;

    invoke-interface {v2}, Lcom/android/camera/burst/OrientationLockController;->lockOrientation()V

    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/VideoFacadeImpl;->mReadyStateListener:Lcom/android/camera/video/RecordReadyStateChangeListener;

    invoke-interface {v2}, Lcom/android/camera/video/RecordReadyStateChangeListener;->onRecordingStarting()V

    .line 173
    new-instance v4, Lcom/android/camera/async/Lifetime;

    invoke-direct {v4}, Lcom/android/camera/async/Lifetime;-><init>()V

    .line 174
    .local v4, "localLifetime":Lcom/android/camera/async/Lifetime;
    new-instance v2, Lcom/android/camera/video/VideoFacadeImpl$1;

    move-object/from16 v3, p0

    move-object/from16 v5, p4

    move-wide/from16 v6, p7

    move/from16 v9, p6

    move-object/from16 v10, p1

    invoke-direct/range {v2 .. v11}, Lcom/android/camera/video/VideoFacadeImpl$1;-><init>(Lcom/android/camera/video/VideoFacadeImpl;Lcom/android/camera/async/Lifetime;Lcom/android/camera/app/OrientationManager$DeviceOrientation;JLcom/android/camera/session/CaptureSession;ILcom/android/camera/async/MainThread;Lcom/android/camera/session/VideoRecordListener;)V

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

    .line 474
    .local v21, "recordController":Lcom/android/camera/burst/BurstController;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/VideoFacadeImpl;->mVideoRecoder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/burst/BurstTaker;

    move-object/from16 v0, v21

    invoke-interface {v2, v0}, Lcom/android/camera/burst/BurstTaker;->startBurst(Lcom/android/camera/burst/BurstController;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 486
    .end local v4    # "localLifetime":Lcom/android/camera/async/Lifetime;
    .end local v8    # "captureSession":Lcom/android/camera/session/CaptureSession;
    .end local v11    # "recordListener":Lcom/android/camera/session/VideoRecordListener;
    .end local v21    # "recordController":Lcom/android/camera/burst/BurstController;
    :cond_3
    :goto_1
    :try_start_5
    monitor-exit v22

    goto/16 :goto_0

    .line 475
    .restart local v4    # "localLifetime":Lcom/android/camera/async/Lifetime;
    .restart local v8    # "captureSession":Lcom/android/camera/session/CaptureSession;
    .restart local v11    # "recordListener":Lcom/android/camera/session/VideoRecordListener;
    .restart local v21    # "recordController":Lcom/android/camera/burst/BurstController;
    :catch_0
    move-exception v20

    .line 476
    .local v20, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/camera/video/VideoFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 477
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/video/VideoFacadeImpl;->stopBurst()Z

    .line 478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/video/VideoFacadeImpl;->mVideoRecordState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;->STOPPING:Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;

    sget-object v5, Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;->IDLE:Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;

    invoke-virtual {v2, v3, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 480
    const/4 v2, -0x1

    invoke-interface {v11, v2}, Lcom/android/camera/session/VideoRecordListener;->onVideoRecordError(I)V

    goto :goto_1

    .line 483
    .end local v4    # "localLifetime":Lcom/android/camera/async/Lifetime;
    .end local v8    # "captureSession":Lcom/android/camera/session/CaptureSession;
    .end local v11    # "recordListener":Lcom/android/camera/session/VideoRecordListener;
    .end local v20    # "e":Ljava/lang/Exception;
    .end local v21    # "recordController":Lcom/android/camera/burst/BurstController;
    :cond_4
    sget-object v2, Lcom/android/camera/video/VideoFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Cannot start record."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public stopBurst()Z
    .locals 5

    .prologue
    .line 491
    const/4 v1, 0x0

    .line 492
    .local v1, "wasStopped":Z
    iget-object v2, p0, Lcom/android/camera/video/VideoFacadeImpl;->mVideoRecoder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/video/VideoFacadeImpl;->mVideoRecordState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;->RUNNING:Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;

    sget-object v4, Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;->STOPPING:Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;

    .line 493
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 494
    sget-object v2, Lcom/android/camera/video/VideoFacadeImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "stoping Burst"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 495
    const/4 v1, 0x1

    .line 497
    new-instance v0, Lcom/android/camera/video/VideoFacadeImpl$2;

    invoke-direct {v0, p0}, Lcom/android/camera/video/VideoFacadeImpl$2;-><init>(Lcom/android/camera/video/VideoFacadeImpl;)V

    .line 504
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/camera/async/MainThread;->isMainThread()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 505
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 510
    :goto_0
    iget-object v2, p0, Lcom/android/camera/video/VideoFacadeImpl;->mVideoRecoder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/burst/BurstTaker;

    invoke-interface {v2}, Lcom/android/camera/burst/BurstTaker;->stopBurst()V

    .line 512
    .end local v0    # "runnable":Ljava/lang/Runnable;
    :cond_0
    return v1

    .line 507
    .restart local v0    # "runnable":Ljava/lang/Runnable;
    :cond_1
    iget-object v2, p0, Lcom/android/camera/video/VideoFacadeImpl;->mMainThread:Lcom/android/camera/async/MainThread;

    invoke-virtual {v2, v0}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
