.class public Lcom/android/camera/livebroadcast/streaming/Streaming;
.super Ljava/lang/Object;
.source "Streaming.java"


# static fields
.field public static final STREAM_HEIGHT:I = 0x500

.field public static final STREAM_WIDTH:I = 0x2d0

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final UPDATE_BPS_THRESHOLD:J = 0x4e20L


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mCurrentBps:I

.field private mIsRecording:Z

.field private mLastTimeUpdated:J

.field private mRtmpSender:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;

.field private mSenderListener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$OnSenderListener;

.field private mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

.field private mStreamingConnection:Lcom/android/camera/livebroadcast/streaming/StreamingConnection;

.field private mVideoConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "[LB]Streaming"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/livebroadcast/streaming/Streaming;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Lcom/android/camera/livebroadcast/streaming/Streaming$2;

    invoke-direct {v0, p0}, Lcom/android/camera/livebroadcast/streaming/Streaming$2;-><init>(Lcom/android/camera/livebroadcast/streaming/Streaming;)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/streaming/Streaming;->mSenderListener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$OnSenderListener;

    .line 34
    iput-object p1, p0, Lcom/android/camera/livebroadcast/streaming/Streaming;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method static synthetic access$000()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/android/camera/livebroadcast/streaming/Streaming;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/livebroadcast/streaming/Streaming;)Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/streaming/Streaming;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/Streaming;->mRtmpSender:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/livebroadcast/streaming/Streaming;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/streaming/Streaming;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/camera/livebroadcast/streaming/Streaming;->onConnectionFailed()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/livebroadcast/streaming/Streaming;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/streaming/Streaming;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/android/camera/livebroadcast/streaming/Streaming;->mIsRecording:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/livebroadcast/streaming/Streaming;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/streaming/Streaming;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/android/camera/livebroadcast/streaming/Streaming;->mIsRecording:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/livebroadcast/streaming/Streaming;)Lcom/android/camera/livebroadcast/streaming/StreamingConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/streaming/Streaming;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/Streaming;->mStreamingConnection:Lcom/android/camera/livebroadcast/streaming/StreamingConnection;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/livebroadcast/streaming/Streaming;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/streaming/Streaming;

    .prologue
    .line 16
    iget v0, p0, Lcom/android/camera/livebroadcast/streaming/Streaming;->mCurrentBps:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/camera/livebroadcast/streaming/Streaming;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/streaming/Streaming;
    .param p1, "x1"    # I

    .prologue
    .line 16
    iput p1, p0, Lcom/android/camera/livebroadcast/streaming/Streaming;->mCurrentBps:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/livebroadcast/streaming/Streaming;)Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/streaming/Streaming;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/Streaming;->mVideoConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/livebroadcast/streaming/Streaming;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/streaming/Streaming;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/camera/livebroadcast/streaming/Streaming;->onConnectionWeak()V

    return-void
.end method

.method private onConnectionFailed()V
    .locals 5

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/Streaming;->mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    if-nez v0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/Streaming;->mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->START:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->FAILED:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/streaming/Streaming;->mContext:Landroid/content/Context;

    const v4, 0x7f080113

    .line 200
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 198
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private onConnectionWeak()V
    .locals 5

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/Streaming;->mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    if-nez v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/Streaming;->mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->START:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->MESSAGE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/streaming/Streaming;->mContext:Landroid/content/Context;

    const v4, 0x7f0800bc

    .line 209
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 207
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public init(Landroid/app/Activity;Lcom/android/camera/pip/opengl/GLRenderer;ZI)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "glRenderer"    # Lcom/android/camera/pip/opengl/GLRenderer;
    .param p3, "customAudio"    # Z
    .param p4, "orientation"    # I

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/camera/livebroadcast/streaming/Streaming;->mActivity:Landroid/app/Activity;

    .line 40
    new-instance v5, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;

    invoke-direct {v5, p1, p2}, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;-><init>(Landroid/content/Context;Lcom/android/camera/pip/opengl/GLRenderer;)V

    iput-object v5, p0, Lcom/android/camera/livebroadcast/streaming/Streaming;->mStreamingConnection:Lcom/android/camera/livebroadcast/streaming/StreamingConnection;

    .line 41
    invoke-virtual {p2, p4}, Lcom/android/camera/pip/opengl/GLRenderer;->setOrientation(I)V

    .line 42
    iget-object v5, p0, Lcom/android/camera/livebroadcast/streaming/Streaming;->mStreamingConnection:Lcom/android/camera/livebroadcast/streaming/StreamingConnection;

    invoke-virtual {v5}, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->init()V

    .line 43
    new-instance v4, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;

    invoke-direct {v4}, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;-><init>()V

    .line 44
    .local v4, "videoBuilder":Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;
    const/16 v5, 0x5a

    if-eq p4, v5, :cond_0

    const/16 v5, 0x10e

    if-ne p4, v5, :cond_2

    :cond_0
    const/4 v3, 0x1

    .line 46
    .local v3, "streamingOri":I
    :goto_0
    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    .line 47
    const/16 v5, 0x2d0

    const/16 v6, 0x500

    invoke-virtual {v4, v5, v6}, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;->setSize(II)Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;

    .line 50
    :goto_1
    const/16 v5, 0x1e

    invoke-virtual {v4, v5}, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;->setFps(I)Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;

    .line 51
    const/16 v5, 0x4b0

    const/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6}, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;->setBps(II)Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;

    .line 52
    invoke-virtual {v4}, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;->build()Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/livebroadcast/streaming/Streaming;->mVideoConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    .line 53
    iget-object v5, p0, Lcom/android/camera/livebroadcast/streaming/Streaming;->mStreamingConnection:Lcom/android/camera/livebroadcast/streaming/StreamingConnection;

    iget-object v6, p0, Lcom/android/camera/livebroadcast/streaming/Streaming;->mVideoConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    invoke-virtual {v5, v6}, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->setVideoConfiguration(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;)V

    .line 54
    new-instance v0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;

    invoke-direct {v0}, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;-><init>()V

    .line 55
    .local v0, "audioBuilder":Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;
    if-eqz p3, :cond_1

    const/16 v5, 0x1f40

    invoke-virtual {v0, v5}, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;->setFrequency(I)Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;

    .line 58
    :cond_1
    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;->build()Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    move-result-object v1

    .line 59
    .local v1, "audioConfiguration":Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;
    iget-object v5, p0, Lcom/android/camera/livebroadcast/streaming/Streaming;->mStreamingConnection:Lcom/android/camera/livebroadcast/streaming/StreamingConnection;

    invoke-virtual {v5, v1}, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->setAudioConfiguration(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;)V

    .line 62
    new-instance v2, Lcom/laifeng/sopcastsdk/stream/packer/rtmp/RtmpPacker;

    invoke-direct {v2}, Lcom/laifeng/sopcastsdk/stream/packer/rtmp/RtmpPacker;-><init>()V

    .line 63
    .local v2, "packer":Lcom/laifeng/sopcastsdk/stream/packer/rtmp/RtmpPacker;
    if-eqz p3, :cond_4

    .line 64
    const/16 v5, 0x1f40

    const/16 v6, 0x10

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7}, Lcom/laifeng/sopcastsdk/stream/packer/rtmp/RtmpPacker;->initAudioParams(IIZ)V

    .line 67
    :goto_2
    iget-object v5, p0, Lcom/android/camera/livebroadcast/streaming/Streaming;->mStreamingConnection:Lcom/android/camera/livebroadcast/streaming/StreamingConnection;

    invoke-virtual {v5, v2}, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->setPacker(Lcom/laifeng/sopcastsdk/stream/packer/Packer;)V

    .line 69
    new-instance v5, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;

    invoke-direct {v5}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;-><init>()V

    iput-object v5, p0, Lcom/android/camera/livebroadcast/streaming/Streaming;->mRtmpSender:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;

    .line 70
    const/4 v5, 0x2

    if-ne v3, v5, :cond_5

    .line 71
    iget-object v5, p0, Lcom/android/camera/livebroadcast/streaming/Streaming;->mRtmpSender:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;

    const/16 v6, 0x2d0

    const/16 v7, 0x500

    invoke-virtual {v5, v6, v7}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->setVideoParams(II)V

    .line 74
    :goto_3
    if-eqz p3, :cond_6

    .line 75
    iget-object v5, p0, Lcom/android/camera/livebroadcast/streaming/Streaming;->mRtmpSender:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;

    const/16 v6, 0x1f40

    const/16 v7, 0x10

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->setAudioParams(IIZ)V

    .line 78
    :goto_4
    iget-object v5, p0, Lcom/android/camera/livebroadcast/streaming/Streaming;->mRtmpSender:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;

    iget-object v6, p0, Lcom/android/camera/livebroadcast/streaming/Streaming;->mSenderListener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$OnSenderListener;

    invoke-virtual {v5, v6}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->setSenderListener(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$OnSenderListener;)V

    .line 79
    iget-object v5, p0, Lcom/android/camera/livebroadcast/streaming/Streaming;->mStreamingConnection:Lcom/android/camera/livebroadcast/streaming/StreamingConnection;

    iget-object v6, p0, Lcom/android/camera/livebroadcast/streaming/Streaming;->mRtmpSender:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;

    invoke-virtual {v5, v6}, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->setSender(Lcom/laifeng/sopcastsdk/stream/sender/Sender;)V

    .line 80
    iget-object v5, p0, Lcom/android/camera/livebroadcast/streaming/Streaming;->mStreamingConnection:Lcom/android/camera/livebroadcast/streaming/StreamingConnection;

    new-instance v6, Lcom/android/camera/livebroadcast/streaming/Streaming$1;

    invoke-direct {v6, p0}, Lcom/android/camera/livebroadcast/streaming/Streaming$1;-><init>(Lcom/android/camera/livebroadcast/streaming/Streaming;)V

    invoke-virtual {v5, v6}, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->setLivingStartListener(Lcom/android/camera/livebroadcast/streaming/StreamingConnection$LivingStartListener;)V

    .line 102
    return-void

    .line 44
    .end local v0    # "audioBuilder":Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;
    .end local v1    # "audioConfiguration":Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;
    .end local v2    # "packer":Lcom/laifeng/sopcastsdk/stream/packer/rtmp/RtmpPacker;
    .end local v3    # "streamingOri":I
    :cond_2
    const/4 v3, 0x2

    goto/16 :goto_0

    .line 49
    .restart local v3    # "streamingOri":I
    :cond_3
    const/16 v5, 0x500

    const/16 v6, 0x2d0

    invoke-virtual {v4, v5, v6}, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;->setSize(II)Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration$Builder;

    goto/16 :goto_1

    .line 66
    .restart local v0    # "audioBuilder":Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration$Builder;
    .restart local v1    # "audioConfiguration":Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;
    .restart local v2    # "packer":Lcom/laifeng/sopcastsdk/stream/packer/rtmp/RtmpPacker;
    :cond_4
    const v5, 0xac44

    const/16 v6, 0x10

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7}, Lcom/laifeng/sopcastsdk/stream/packer/rtmp/RtmpPacker;->initAudioParams(IIZ)V

    goto :goto_2

    .line 73
    :cond_5
    iget-object v5, p0, Lcom/android/camera/livebroadcast/streaming/Streaming;->mRtmpSender:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;

    const/16 v6, 0x500

    const/16 v7, 0x2d0

    invoke-virtual {v5, v6, v7}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->setVideoParams(II)V

    goto :goto_3

    .line 77
    :cond_6
    iget-object v5, p0, Lcom/android/camera/livebroadcast/streaming/Streaming;->mRtmpSender:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;

    const v6, 0xac44

    const/16 v7, 0x10

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->setAudioParams(IIZ)V

    goto :goto_4
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/camera/livebroadcast/streaming/Streaming;->mIsRecording:Z

    return v0
.end method

.method public setCallback(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/camera/livebroadcast/streaming/Streaming;->mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    .line 106
    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 3
    .param p1, "uploadUrl"    # Ljava/lang/String;

    .prologue
    .line 113
    sget-object v0, Lcom/android/camera/livebroadcast/streaming/Streaming;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start() uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/Streaming;->mRtmpSender:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;

    invoke-virtual {v0, p1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->setAddress(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/Streaming;->mRtmpSender:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->connect()V

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/livebroadcast/streaming/Streaming;->mIsRecording:Z

    .line 117
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 120
    sget-object v0, Lcom/android/camera/livebroadcast/streaming/Streaming;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "stop()"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/Streaming;->mStreamingConnection:Lcom/android/camera/livebroadcast/streaming/StreamingConnection;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/Streaming;->mStreamingConnection:Lcom/android/camera/livebroadcast/streaming/StreamingConnection;

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->stop()V

    .line 123
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/livebroadcast/streaming/Streaming;->mIsRecording:Z

    .line 124
    return-void
.end method
