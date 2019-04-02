.class public Lcom/android/camera/livebroadcast/streaming/StreamerConnection;
.super Ljava/lang/Object;
.source "StreamerConnection.java"


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mCurrentBps:I

.field private final mIsClosed:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mIsConnected:Z

.field private mLoadDialog:Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

.field private final mMainThread:Lcom/android/camera/async/MainThread;

.field private mOnStreamingResultListener:Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;

.field private final mOrientation:I

.field private final mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mRtmpSender:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;

.field private final mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

.field private final mVideoController:Lcom/android/camera/livebroadcast/streaming/NormalVideoController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "[LB]StreamerCon"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/media/CamcorderProfile;Lcom/android/camera/async/Observable;II)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "profile"    # Landroid/media/CamcorderProfile;
    .param p4, "orientation"    # I
    .param p5, "captureRate"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/media/CamcorderProfile;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p3, "isClosed":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    const v9, 0xac44

    const/16 v8, 0x10

    const/4 v7, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v7, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mIsConnected:Z

    .line 50
    sget-object v4, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "init"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 51
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    iput-object p1, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mActivity:Landroid/app/Activity;

    .line 54
    iput-object p3, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mIsClosed:Lcom/android/camera/async/Observable;

    .line 55
    iput p4, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mOrientation:I

    .line 56
    invoke-static {}, Lcom/android/camera/async/MainThread;->create()Lcom/android/camera/async/MainThread;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mMainThread:Lcom/android/camera/async/MainThread;

    .line 58
    iget v3, p2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 59
    .local v3, "videoWidth":I
    iget v2, p2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 60
    .local v2, "videoHeight":I
    rem-int/lit16 v4, p4, 0xb4

    if-nez v4, :cond_0

    .line 61
    iget v3, p2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 62
    iget v2, p2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 64
    :cond_0
    new-instance v4, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;

    invoke-direct {v4}, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;-><init>()V

    invoke-virtual {v4, v3, v2}, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;->setSize(II)Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;

    move-result-object v4

    invoke-virtual {v4, p5}, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;->setFps(I)Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;

    move-result-object v4

    const/16 v5, 0x4b0

    const/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6}, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;->setBps(II)Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;->build()Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    move-result-object v1

    .line 65
    .local v1, "videoConfiguration":Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;
    sget-object v4, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VideoConfiguration : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;->fps:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 66
    iget v4, v1, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;->maxBps:I

    iput v4, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mCurrentBps:I

    .line 68
    sget-object v4, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "orientation : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 69
    new-instance v4, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;

    invoke-direct {v4, v1, p4}, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;-><init>(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;I)V

    iput-object v4, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mVideoController:Lcom/android/camera/livebroadcast/streaming/NormalVideoController;

    .line 71
    new-instance v4, Lcom/laifeng/sopcastsdk/controller/StreamController;

    iget-object v5, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mVideoController:Lcom/android/camera/livebroadcast/streaming/NormalVideoController;

    new-instance v6, Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;

    invoke-direct {v6}, Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;-><init>()V

    invoke-direct {v4, v5, v6}, Lcom/laifeng/sopcastsdk/controller/StreamController;-><init>(Lcom/laifeng/sopcastsdk/controller/video/IVideoController;Lcom/laifeng/sopcastsdk/controller/audio/IAudioController;)V

    iput-object v4, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    .line 72
    iget-object v4, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-virtual {v4, v1}, Lcom/laifeng/sopcastsdk/controller/StreamController;->setVideoConfiguration(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;)V

    .line 73
    iget-object v4, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    new-instance v5, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;

    invoke-direct {v5}, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;-><init>()V

    invoke-virtual {v5}, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;->build()Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/laifeng/sopcastsdk/controller/StreamController;->setAudioConfiguration(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;)V

    .line 75
    new-instance v0, Lcom/laifeng/sopcastsdk/stream/packer/rtmp/RtmpPacker;

    invoke-direct {v0}, Lcom/laifeng/sopcastsdk/stream/packer/rtmp/RtmpPacker;-><init>()V

    .line 76
    .local v0, "packer":Lcom/laifeng/sopcastsdk/stream/packer/rtmp/RtmpPacker;
    invoke-virtual {v0, v9, v8, v7}, Lcom/laifeng/sopcastsdk/stream/packer/rtmp/RtmpPacker;->initAudioParams(IIZ)V

    .line 77
    iget-object v4, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-virtual {v4, v0}, Lcom/laifeng/sopcastsdk/controller/StreamController;->setPacker(Lcom/laifeng/sopcastsdk/stream/packer/Packer;)V

    .line 79
    new-instance v4, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;

    invoke-direct {v4}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;-><init>()V

    iput-object v4, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mRtmpSender:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;

    .line 80
    iget-object v4, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mRtmpSender:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;

    invoke-virtual {v4, v3, v2}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->setVideoParams(II)V

    .line 81
    iget-object v4, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mRtmpSender:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;

    invoke-virtual {v4, v9, v8, v7}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->setAudioParams(IIZ)V

    .line 82
    iget-object v4, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mRtmpSender:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;

    new-instance v5, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1;

    invoke-direct {v5, p0, v1}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1;-><init>(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;)V

    invoke-virtual {v4, v5}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->setSenderListener(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$OnSenderListener;)V

    .line 164
    iget-object v4, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    iget-object v5, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mRtmpSender:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;

    invoke-virtual {v4, v5}, Lcom/laifeng/sopcastsdk/controller/StreamController;->setSender(Lcom/laifeng/sopcastsdk/stream/sender/Sender;)V

    .line 165
    return-void
.end method

.method static synthetic access$000()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)Lcom/laifeng/sopcastsdk/controller/StreamController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mOnStreamingResultListener:Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mLoadDialog:Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;)Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/streaming/StreamerConnection;
    .param p1, "x1"    # Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mLoadDialog:Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)Lcom/android/camera/async/MainThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mMainThread:Lcom/android/camera/async/MainThread;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    .prologue
    .line 30
    iget v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mCurrentBps:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/streaming/StreamerConnection;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mCurrentBps:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mIsConnected:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    .prologue
    .line 30
    iget v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mOrientation:I

    return v0
.end method


# virtual methods
.method public getInputSurface()Landroid/view/Surface;
    .locals 2

    .prologue
    .line 237
    iget-object v1, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mVideoController:Lcom/android/camera/livebroadcast/streaming/NormalVideoController;

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->getInputSurface()Landroid/view/Surface;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mIsConnected:Z

    return v0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 247
    sget-object v0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mVideoController:Lcom/android/camera/livebroadcast/streaming/NormalVideoController;

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->release()V

    .line 252
    :cond_0
    monitor-exit v1

    .line 253
    return-void

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOnStreamingResultListener(Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;)V
    .locals 0
    .param p1, "onStreamingResultListener"    # Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mOnStreamingResultListener:Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;

    .line 244
    return-void
.end method

.method public start(Ljava/lang/String;)Z
    .locals 3
    .param p1, "rtmpPath"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 168
    iget-object v1, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mOnStreamingResultListener:Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;

    if-nez v1, :cond_0

    .line 169
    sget-object v1, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "start fail : OnStreamingResultListener is null"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 199
    :goto_0
    return v0

    .line 173
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    sget-object v1, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "start fail : rtmpPath is empty"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_1
    sget-object v0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start : rtmpPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$2;

    invoke-direct {v1, p0}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$2;-><init>(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mIsConnected:Z

    .line 197
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mRtmpSender:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;

    invoke-virtual {v0, p1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->setAddress(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mRtmpSender:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->connect()V

    .line 199
    iget-boolean v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mIsConnected:Z

    goto :goto_0
.end method

.method public stop()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 203
    iget-object v1, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mOnStreamingResultListener:Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;

    if-nez v1, :cond_0

    .line 204
    sget-object v1, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "stop fail : OnStreamingResultListener is null"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 229
    :goto_0
    return v0

    .line 208
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mIsConnected:Z

    if-eqz v1, :cond_1

    .line 209
    sget-object v1, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "stop"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 210
    iget-object v1, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-virtual {v1}, Lcom/laifeng/sopcastsdk/controller/StreamController;->stop()V

    .line 211
    iput-boolean v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mIsConnected:Z

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mOnStreamingResultListener:Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;

    if-eqz v0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mOnStreamingResultListener:Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;

    invoke-interface {v0}, Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;->onStreamingStoped()V

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mLoadDialog:Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mLoadDialog:Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 219
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$3;

    invoke-direct {v1, p0}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$3;-><init>(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 229
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
