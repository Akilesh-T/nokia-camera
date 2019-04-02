.class public Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;
.super Ljava/lang/Object;
.source "RtmpStreamerConnection.java"

# interfaces
.implements Lnet/ossrs/rtmp/ConnectCheckerRtmp;


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mHeight:I

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

.field private mOzoSettings:Lcom/android/camera/OZO/OZOSettings;

.field private final mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mRtmpConnection:Lcom/android/camera/livebroadcast/v2/streaming/RtmpConnection;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "[LB]RStreamerCon"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/media/CamcorderProfile;Lcom/android/camera/async/Observable;IILcom/android/camera/OZO/OZOSettings;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "profile"    # Landroid/media/CamcorderProfile;
    .param p4, "orientation"    # I
    .param p5, "captureRate"    # I
    .param p6, "ozoSettings"    # Lcom/android/camera/OZO/OZOSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/media/CamcorderProfile;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;II",
            "Lcom/android/camera/OZO/OZOSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "isClosed":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    const/4 v5, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v5, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mIsConnected:Z

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    iput-object p1, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mActivity:Landroid/app/Activity;

    .line 46
    iput-object p3, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mIsClosed:Lcom/android/camera/async/Observable;

    .line 47
    iput p4, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mOrientation:I

    .line 48
    invoke-static {}, Lcom/android/camera/async/MainThread;->create()Lcom/android/camera/async/MainThread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mMainThread:Lcom/android/camera/async/MainThread;

    .line 50
    iput-object p6, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mOzoSettings:Lcom/android/camera/OZO/OZOSettings;

    .line 51
    iget v0, p2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mWidth:I

    .line 52
    iget v0, p2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mHeight:I

    .line 53
    rem-int/lit16 v0, p4, 0xb4

    if-nez v0, :cond_0

    .line 54
    iget v0, p2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mWidth:I

    .line 55
    iget v0, p2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mHeight:I

    .line 58
    :cond_0
    new-instance v0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpConnection;

    invoke-direct {v0, p0}, Lcom/android/camera/livebroadcast/v2/streaming/RtmpConnection;-><init>(Lnet/ossrs/rtmp/ConnectCheckerRtmp;)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mRtmpConnection:Lcom/android/camera/livebroadcast/v2/streaming/RtmpConnection;

    .line 59
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mRtmpConnection:Lcom/android/camera/livebroadcast/v2/streaming/RtmpConnection;

    iget v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mWidth:I

    iget v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mHeight:I

    const/16 v3, 0x1e

    const v4, 0x1f4000

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/livebroadcast/v2/streaming/RtmpConnection;->prepareVideo(IIIIZI)Z

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;)Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mLoadDialog:Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;)Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;
    .param p1, "x1"    # Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mLoadDialog:Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mIsConnected:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;

    .prologue
    .line 22
    iget v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mOrientation:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;)Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mOnStreamingResultListener:Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;

    return-object v0
.end method


# virtual methods
.method public getInputSurface()Landroid/view/Surface;
    .locals 2

    .prologue
    .line 159
    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mRtmpConnection:Lcom/android/camera/livebroadcast/v2/streaming/RtmpConnection;

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/v2/streaming/RtmpConnection;->getInputSurface()Landroid/view/Surface;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 161
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
    .line 155
    iget-boolean v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mIsConnected:Z

    return v0
.end method

.method public onAuthErrorRtmp()V
    .locals 2

    .prologue
    .line 214
    sget-object v0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onConnectionWeak()"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mOnStreamingResultListener:Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;

    if-nez v0, :cond_0

    .line 219
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mOnStreamingResultListener:Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;

    invoke-interface {v0}, Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;->onConnectionWeak()V

    goto :goto_0
.end method

.method public onAuthSuccessRtmp()V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public onConnectionFailedRtmp(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 200
    sget-object v0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onConnectionFailedRtmp()"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mOnStreamingResultListener:Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;

    if-nez v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mOnStreamingResultListener:Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;

    invoke-interface {v0}, Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;->onConnectionFailed()V

    goto :goto_0
.end method

.method public onConnectionSuccessRtmp()V
    .locals 3

    .prologue
    .line 179
    sget-object v0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onConnectionSuccessRtmp()"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v2, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection$3;

    invoke-direct {v2, p0}, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection$3;-><init>(Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;)V

    invoke-virtual {v0, v2}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 195
    :cond_0
    monitor-exit v1

    .line 196
    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDisconnectRtmp()V
    .locals 2

    .prologue
    .line 209
    sget-object v0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onDisconnectRtmp()"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    .line 169
    sget-object v0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mRtmpConnection:Lcom/android/camera/livebroadcast/v2/streaming/RtmpConnection;

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/v2/streaming/RtmpConnection;->releaseStream()V

    .line 174
    :cond_0
    monitor-exit v1

    .line 175
    return-void

    .line 174
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
    .line 165
    iput-object p1, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mOnStreamingResultListener:Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;

    .line 166
    return-void
.end method

.method public start(Ljava/lang/String;)Z
    .locals 9
    .param p1, "rtmpPath"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 66
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mOnStreamingResultListener:Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;

    if-nez v0, :cond_0

    .line 67
    sget-object v0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "start fail : OnStreamingResultListener is null"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 118
    :goto_0
    return v4

    .line 71
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    sget-object v0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "start fail : rtmpPath is empty"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_1
    sget-object v0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 77
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection$1;

    invoke-direct {v1, p0}, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection$1;-><init>(Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 94
    iput-boolean v8, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mIsConnected:Z

    .line 98
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mOzoSettings:Lcom/android/camera/OZO/OZOSettings;

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mRtmpConnection:Lcom/android/camera/livebroadcast/v2/streaming/RtmpConnection;

    sget v1, Lcom/android/camera/OZO/OZOConst$AudioParam;->BIT_RATE:I

    sget v2, Lcom/android/camera/OZO/OZOConst$AudioParam;->SAMPLE_RATE:I

    sget-boolean v3, Lcom/android/camera/OZO/OZOConst$AudioParam;->STEREO:Z

    iget-object v6, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mOzoSettings:Lcom/android/camera/OZO/OZOSettings;

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/livebroadcast/v2/streaming/RtmpConnection;->prepareAudio(IIZZZLcom/android/camera/OZO/OZOSettings;)Z

    move-result v7

    .line 111
    .local v7, "isStartStreamSuccess":Z
    :goto_1
    if-eqz v7, :cond_3

    .line 112
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mRtmpConnection:Lcom/android/camera/livebroadcast/v2/streaming/RtmpConnection;

    iget v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mWidth:I

    iget v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mHeight:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/camera/livebroadcast/v2/streaming/RtmpConnection;->startStream(Ljava/lang/String;II)V

    move v4, v8

    .line 113
    goto :goto_0

    .line 104
    .end local v7    # "isStartStreamSuccess":Z
    :cond_2
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mRtmpConnection:Lcom/android/camera/livebroadcast/v2/streaming/RtmpConnection;

    sget v1, Lcom/android/camera/livebroadcast/v2/streaming/RtmpConst$AudioParam;->BIT_RATE:I

    sget v2, Lcom/android/camera/livebroadcast/v2/streaming/RtmpConst$AudioParam;->SAMPLE_RATE:I

    sget-boolean v3, Lcom/android/camera/livebroadcast/v2/streaming/RtmpConst$AudioParam;->STEREO:Z

    const/4 v6, 0x0

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/livebroadcast/v2/streaming/RtmpConnection;->prepareAudio(IIZZZLcom/android/camera/OZO/OZOSettings;)Z

    move-result v7

    .restart local v7    # "isStartStreamSuccess":Z
    goto :goto_1

    .line 115
    :cond_3
    sget-object v0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "start fail : prepared fail"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mOnStreamingResultListener:Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;

    invoke-interface {v0}, Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;->onConnectionFailed()V

    .line 118
    iget-boolean v4, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mIsConnected:Z

    goto :goto_0
.end method

.method public stop()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 122
    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mOnStreamingResultListener:Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;

    if-nez v1, :cond_0

    .line 123
    sget-object v1, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "stop fail : OnStreamingResultListener is null"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 151
    :goto_0
    return v0

    .line 127
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mIsConnected:Z

    if-eqz v1, :cond_1

    .line 128
    sget-object v1, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "stop"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 129
    iput-boolean v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mIsConnected:Z

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mRtmpConnection:Lcom/android/camera/livebroadcast/v2/streaming/RtmpConnection;

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mRtmpConnection:Lcom/android/camera/livebroadcast/v2/streaming/RtmpConnection;

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/v2/streaming/RtmpConnection;->stopStream()V

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mOnStreamingResultListener:Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;

    if-eqz v0, :cond_3

    .line 137
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mOnStreamingResultListener:Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;

    invoke-interface {v0}, Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;->onStreamingStoped()V

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mLoadDialog:Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mLoadDialog:Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 141
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection$2;

    invoke-direct {v1, p0}, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection$2;-><init>(Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 151
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method
