.class public Lcom/laifeng/sopcastsdk/controller/StreamController;
.super Ljava/lang/Object;
.source "StreamController.java"

# interfaces
.implements Lcom/laifeng/sopcastsdk/audio/OnAudioEncodeListener;
.implements Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;
.implements Lcom/laifeng/sopcastsdk/stream/packer/Packer$OnPacketListener;


# instance fields
.field private mAudioController:Lcom/laifeng/sopcastsdk/controller/audio/IAudioController;

.field private mPacker:Lcom/laifeng/sopcastsdk/stream/packer/Packer;

.field private mSender:Lcom/laifeng/sopcastsdk/stream/sender/Sender;

.field private mVideoController:Lcom/laifeng/sopcastsdk/controller/video/IVideoController;


# direct methods
.method public constructor <init>(Lcom/laifeng/sopcastsdk/controller/video/IVideoController;Lcom/laifeng/sopcastsdk/controller/audio/IAudioController;)V
    .locals 0
    .param p1, "videoProcessor"    # Lcom/laifeng/sopcastsdk/controller/video/IVideoController;
    .param p2, "audioProcessor"    # Lcom/laifeng/sopcastsdk/controller/audio/IAudioController;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/laifeng/sopcastsdk/controller/StreamController;->mAudioController:Lcom/laifeng/sopcastsdk/controller/audio/IAudioController;

    .line 34
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/controller/StreamController;->mVideoController:Lcom/laifeng/sopcastsdk/controller/video/IVideoController;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/laifeng/sopcastsdk/controller/StreamController;)Lcom/laifeng/sopcastsdk/stream/packer/Packer;
    .locals 1
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/controller/StreamController;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/StreamController;->mPacker:Lcom/laifeng/sopcastsdk/stream/packer/Packer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/laifeng/sopcastsdk/controller/StreamController;)Lcom/laifeng/sopcastsdk/stream/sender/Sender;
    .locals 1
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/controller/StreamController;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/StreamController;->mSender:Lcom/laifeng/sopcastsdk/stream/sender/Sender;

    return-object v0
.end method

.method static synthetic access$200(Lcom/laifeng/sopcastsdk/controller/StreamController;)Lcom/laifeng/sopcastsdk/controller/video/IVideoController;
    .locals 1
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/controller/StreamController;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/StreamController;->mVideoController:Lcom/laifeng/sopcastsdk/controller/video/IVideoController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/laifeng/sopcastsdk/controller/StreamController;)Lcom/laifeng/sopcastsdk/controller/audio/IAudioController;
    .locals 1
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/controller/StreamController;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/StreamController;->mAudioController:Lcom/laifeng/sopcastsdk/controller/audio/IAudioController;

    return-object v0
.end method


# virtual methods
.method public getSessionId()I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/StreamController;->mAudioController:Lcom/laifeng/sopcastsdk/controller/audio/IAudioController;

    invoke-interface {v0}, Lcom/laifeng/sopcastsdk/controller/audio/IAudioController;->getSessionId()I

    move-result v0

    return v0
.end method

.method public mute(Z)V
    .locals 1
    .param p1, "mute"    # Z

    .prologue
    .line 113
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/StreamController;->mAudioController:Lcom/laifeng/sopcastsdk/controller/audio/IAudioController;

    invoke-interface {v0, p1}, Lcom/laifeng/sopcastsdk/controller/audio/IAudioController;->mute(Z)V

    .line 114
    return-void
.end method

.method public onAudioEncode(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "bi"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/StreamController;->mPacker:Lcom/laifeng/sopcastsdk/stream/packer/Packer;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/StreamController;->mPacker:Lcom/laifeng/sopcastsdk/stream/packer/Packer;

    invoke-interface {v0, p1, p2}, Lcom/laifeng/sopcastsdk/stream/packer/Packer;->onAudioData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 129
    :cond_0
    return-void
.end method

.method public onPacket([BI)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "packetType"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/StreamController;->mSender:Lcom/laifeng/sopcastsdk/stream/sender/Sender;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/StreamController;->mSender:Lcom/laifeng/sopcastsdk/stream/sender/Sender;

    invoke-interface {v0, p1, p2}, Lcom/laifeng/sopcastsdk/stream/sender/Sender;->onData([BI)V

    .line 143
    :cond_0
    return-void
.end method

.method public onVideoEncode(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "bi"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/StreamController;->mPacker:Lcom/laifeng/sopcastsdk/stream/packer/Packer;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/StreamController;->mPacker:Lcom/laifeng/sopcastsdk/stream/packer/Packer;

    invoke-interface {v0, p1, p2}, Lcom/laifeng/sopcastsdk/stream/packer/Packer;->onVideoData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 136
    :cond_0
    return-void
.end method

.method public declared-synchronized pause()V
    .locals 1

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/laifeng/sopcastsdk/controller/StreamController$3;

    invoke-direct {v0, p0}, Lcom/laifeng/sopcastsdk/controller/StreamController$3;-><init>(Lcom/laifeng/sopcastsdk/controller/StreamController;)V

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/utils/SopCastUtils;->processNotUI(Lcom/laifeng/sopcastsdk/utils/SopCastUtils$INotUIProcessor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resume()V
    .locals 1

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/laifeng/sopcastsdk/controller/StreamController$4;

    invoke-direct {v0, p0}, Lcom/laifeng/sopcastsdk/controller/StreamController$4;-><init>(Lcom/laifeng/sopcastsdk/controller/StreamController;)V

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/utils/SopCastUtils;->processNotUI(Lcom/laifeng/sopcastsdk/utils/SopCastUtils$INotUIProcessor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAudioConfiguration(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;)V
    .locals 1
    .param p1, "audioConfiguration"    # Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/StreamController;->mAudioController:Lcom/laifeng/sopcastsdk/controller/audio/IAudioController;

    invoke-interface {v0, p1}, Lcom/laifeng/sopcastsdk/controller/audio/IAudioController;->setAudioConfiguration(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;)V

    .line 43
    return-void
.end method

.method public setPacker(Lcom/laifeng/sopcastsdk/stream/packer/Packer;)V
    .locals 1
    .param p1, "packer"    # Lcom/laifeng/sopcastsdk/stream/packer/Packer;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/controller/StreamController;->mPacker:Lcom/laifeng/sopcastsdk/stream/packer/Packer;

    .line 47
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/StreamController;->mPacker:Lcom/laifeng/sopcastsdk/stream/packer/Packer;

    invoke-interface {v0, p0}, Lcom/laifeng/sopcastsdk/stream/packer/Packer;->setPacketListener(Lcom/laifeng/sopcastsdk/stream/packer/Packer$OnPacketListener;)V

    .line 48
    return-void
.end method

.method public setSender(Lcom/laifeng/sopcastsdk/stream/sender/Sender;)V
    .locals 0
    .param p1, "sender"    # Lcom/laifeng/sopcastsdk/stream/sender/Sender;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/controller/StreamController;->mSender:Lcom/laifeng/sopcastsdk/stream/sender/Sender;

    .line 52
    return-void
.end method

.method public setVideoBps(I)Z
    .locals 1
    .param p1, "bps"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/StreamController;->mVideoController:Lcom/laifeng/sopcastsdk/controller/video/IVideoController;

    invoke-interface {v0, p1}, Lcom/laifeng/sopcastsdk/controller/video/IVideoController;->setVideoBps(I)Z

    move-result v0

    return v0
.end method

.method public setVideoConfiguration(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;)V
    .locals 1
    .param p1, "videoConfiguration"    # Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/StreamController;->mVideoController:Lcom/laifeng/sopcastsdk/controller/video/IVideoController;

    invoke-interface {v0, p1}, Lcom/laifeng/sopcastsdk/controller/video/IVideoController;->setVideoConfiguration(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;)V

    .line 39
    return-void
.end method

.method public declared-synchronized start()V
    .locals 1

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/laifeng/sopcastsdk/controller/StreamController$1;

    invoke-direct {v0, p0}, Lcom/laifeng/sopcastsdk/controller/StreamController$1;-><init>(Lcom/laifeng/sopcastsdk/controller/StreamController;)V

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/utils/SopCastUtils;->processNotUI(Lcom/laifeng/sopcastsdk/utils/SopCastUtils$INotUIProcessor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/laifeng/sopcastsdk/controller/StreamController$2;

    invoke-direct {v0, p0}, Lcom/laifeng/sopcastsdk/controller/StreamController$2;-><init>(Lcom/laifeng/sopcastsdk/controller/StreamController;)V

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/utils/SopCastUtils;->processNotUI(Lcom/laifeng/sopcastsdk/utils/SopCastUtils$INotUIProcessor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
