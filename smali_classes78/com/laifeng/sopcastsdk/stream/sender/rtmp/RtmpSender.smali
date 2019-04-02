.class public Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;
.super Ljava/lang/Object;
.source "RtmpSender.java"

# interfaces
.implements Lcom/laifeng/sopcastsdk/stream/sender/Sender;
.implements Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/SendQueueListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$OnSenderListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;

.field private mHandler:Lcom/laifeng/sopcastsdk/utils/WeakHandler;

.field private mListener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$OnSenderListener;

.field private mRtmpUrl:Ljava/lang/String;

.field private mSendQueue:Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;

.field private rtmpConnection:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;

    invoke-direct {v0}, Lcom/laifeng/sopcastsdk/utils/WeakHandler;-><init>()V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->mHandler:Lcom/laifeng/sopcastsdk/utils/WeakHandler;

    .line 26
    new-instance v0, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;

    invoke-direct {v0}, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/NormalSendQueue;-><init>()V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->mSendQueue:Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;

    .line 128
    new-instance v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$4;

    invoke-direct {v0, p0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$4;-><init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;)V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->listener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;

    .line 62
    new-instance v0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;

    invoke-direct {v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;-><init>()V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->rtmpConnection:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;)Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$OnSenderListener;
    .locals 1
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->mListener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$OnSenderListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;)V
    .locals 0
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->connectNotInUi()V

    return-void
.end method

.method static synthetic access$200(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;)Lcom/laifeng/sopcastsdk/utils/WeakHandler;
    .locals 1
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->mHandler:Lcom/laifeng/sopcastsdk/utils/WeakHandler;

    return-object v0
.end method

.method private declared-synchronized connectNotInUi()V
    .locals 2

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->rtmpConnection:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->listener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;

    invoke-virtual {v0, v1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->setConnectListener(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;)V

    .line 100
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->rtmpConnection:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->mRtmpUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->connect(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public bad()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->mHandler:Lcom/laifeng/sopcastsdk/utils/WeakHandler;

    new-instance v1, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$2;

    invoke-direct {v1, p0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$2;-><init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;)V

    invoke-virtual {v0, v1}, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->post(Ljava/lang/Runnable;)Z

    .line 50
    return-void
.end method

.method public connect()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->rtmpConnection:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->mSendQueue:Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;

    invoke-virtual {v0, v1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->setSendQueue(Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;)V

    .line 87
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$3;

    invoke-direct {v1, p0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$3;-><init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 92
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 93
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->mListener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$OnSenderListener;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->mListener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$OnSenderListener;

    invoke-interface {v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$OnSenderListener;->onConnecting()V

    .line 96
    :cond_0
    return-void
.end method

.method public good()V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->mHandler:Lcom/laifeng/sopcastsdk/utils/WeakHandler;

    new-instance v1, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$1;

    invoke-direct {v1, p0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$1;-><init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;)V

    invoke-virtual {v0, v1}, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->post(Ljava/lang/Runnable;)Z

    .line 38
    return-void
.end method

.method public onData([BI)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "type"    # I

    .prologue
    .line 112
    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->rtmpConnection:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;

    invoke-virtual {v0, p1, p2}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->publishAudioData([BI)V

    .line 118
    :cond_1
    :goto_0
    return-void

    .line 114
    :cond_2
    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x5

    if-eq p2, v0, :cond_3

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 116
    :cond_3
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->rtmpConnection:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;

    invoke-virtual {v0, p1, p2}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->publishVideoData([BI)V

    goto :goto_0
.end method

.method public sendDisconnectMsg()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->mHandler:Lcom/laifeng/sopcastsdk/utils/WeakHandler;

    new-instance v1, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$5;

    invoke-direct {v1, p0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$5;-><init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;)V

    invoke-virtual {v0, v1}, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->post(Ljava/lang/Runnable;)Z

    .line 211
    return-void
.end method

.method public sendPublishFail()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->mHandler:Lcom/laifeng/sopcastsdk/utils/WeakHandler;

    new-instance v1, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$6;

    invoke-direct {v1, p0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$6;-><init>(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;)V

    invoke-virtual {v0, v1}, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->post(Ljava/lang/Runnable;)Z

    .line 222
    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->mRtmpUrl:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setAudioParams(IIZ)V
    .locals 1
    .param p1, "sampleRate"    # I
    .param p2, "sampleSize"    # I
    .param p3, "isStereo"    # Z

    .prologue
    .line 78
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->rtmpConnection:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->setAudioParams(IIZ)V

    .line 79
    return-void
.end method

.method public setSendQueue(Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;)V
    .locals 0
    .param p1, "sendQueue"    # Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->mSendQueue:Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;

    .line 71
    return-void
.end method

.method public setSenderListener(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$OnSenderListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$OnSenderListener;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->mListener:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$OnSenderListener;

    .line 83
    return-void
.end method

.method public setVideoParams(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->rtmpConnection:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;

    invoke-virtual {v0, p1, p2}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->setVideoParams(II)V

    .line 75
    return-void
.end method

.method public declared-synchronized start()V
    .locals 1

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->mSendQueue:Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;

    invoke-interface {v0, p0}, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;->setSendQueueListener(Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/SendQueueListener;)V

    .line 107
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->mSendQueue:Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;

    invoke-interface {v0}, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->rtmpConnection:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->stop()V

    .line 123
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->rtmpConnection:Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;->setConnectListener(Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnectListener;)V

    .line 124
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->mSendQueue:Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;->setSendQueueListener(Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/SendQueueListener;)V

    .line 125
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;->mSendQueue:Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;

    invoke-interface {v0}, Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
