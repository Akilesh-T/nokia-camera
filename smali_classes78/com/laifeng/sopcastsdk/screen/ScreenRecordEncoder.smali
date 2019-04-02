.class public Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;
.super Ljava/lang/Object;
.source "ScreenRecordEncoder.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private encodeLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile isStarted:Z

.field private mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

.field private mEncoderHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mListener:Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;

.field private mMediaCodec:Landroid/media/MediaCodec;

.field private mPause:Z

.field private swapDataRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;)V
    .locals 1
    .param p1, "configuration"    # Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->encodeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 74
    new-instance v0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder$1;

    invoke-direct {v0, p0}, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder$1;-><init>(Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;)V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->swapDataRunnable:Ljava/lang/Runnable;

    .line 44
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->mConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    .line 45
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->mConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/mediacodec/VideoMediaCodec;->getVideoMediaCodec(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;)V
    .locals 0
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->drainEncoder()V

    return-void
.end method

.method private drainEncoder()V
    .locals 8

    .prologue
    .line 111
    iget-object v4, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 112
    .local v3, "outBuffers":[Ljava/nio/ByteBuffer;
    :goto_0
    iget-boolean v4, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->isStarted:Z

    if-eqz v4, :cond_3

    .line 113
    iget-object v4, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->encodeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 114
    iget-object v4, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v4, :cond_2

    .line 115
    iget-object v4, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v5, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v6, 0x2ee0

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    .line 116
    .local v2, "outBufferIndex":I
    if-ltz v2, :cond_1

    .line 117
    aget-object v0, v3, v2

    .line 118
    .local v0, "bb":Ljava/nio/ByteBuffer;
    iget-object v4, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->mListener:Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->mPause:Z

    if-nez v4, :cond_0

    .line 119
    iget-object v4, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->mListener:Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;

    iget-object v5, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v4, v0, v5}, Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;->onVideoEncode(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 121
    :cond_0
    iget-object v4, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 130
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :goto_1
    iget-object v4, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->encodeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 125
    :cond_1
    const-wide/16 v4, 0xa

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 126
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 132
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "outBufferIndex":I
    :cond_2
    iget-object v4, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->encodeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 136
    :cond_3
    return-void
.end method

.method private releaseEncoder()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 94
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 97
    :cond_0
    return-void
.end method


# virtual methods
.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnVideoEncodeListener(Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->mListener:Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;

    .line 50
    return-void
.end method

.method public setPause(Z)V
    .locals 0
    .param p1, "pause"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->mPause:Z

    .line 54
    return-void
.end method

.method public setRecorderBps(I)V
    .locals 4
    .param p1, "bps"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 101
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-nez v1, :cond_0

    .line 108
    :goto_0
    return-void

    .line 104
    :cond_0
    const-string v1, "SopCast"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bps :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-int/lit16 v3, p1, 0x400

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 106
    .local v0, "bitrate":Landroid/os/Bundle;
    const-string v1, "video-bitrate"

    mul-int/lit16 v2, p1, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 107
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LFEncode"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->mHandlerThread:Landroid/os/HandlerThread;

    .line 58
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 59
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->mEncoderHandler:Landroid/os/Handler;

    .line 60
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 61
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 62
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->mEncoderHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->swapDataRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->isStarted:Z

    .line 64
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->isStarted:Z

    .line 83
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->mEncoderHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 84
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 85
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->encodeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 86
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 87
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->releaseEncoder()V

    .line 88
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->encodeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 89
    return-void
.end method
