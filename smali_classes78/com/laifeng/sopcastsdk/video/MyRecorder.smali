.class public Lcom/laifeng/sopcastsdk/video/MyRecorder;
.super Ljava/lang/Object;
.source "MyRecorder.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# instance fields
.field private encodeLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile isStarted:Z

.field private mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

.field private mEncoderHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mInputSurface:Lcom/laifeng/sopcastsdk/video/InputSurface;

.field private mListener:Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;

.field private mMediaCodec:Landroid/media/MediaCodec;

.field private mPause:Z

.field private swapDataRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;)V
    .locals 1
    .param p1, "configuration"    # Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->encodeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 85
    new-instance v0, Lcom/laifeng/sopcastsdk/video/MyRecorder$1;

    invoke-direct {v0, p0}, Lcom/laifeng/sopcastsdk/video/MyRecorder$1;-><init>(Lcom/laifeng/sopcastsdk/video/MyRecorder;)V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->swapDataRunnable:Ljava/lang/Runnable;

    .line 32
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->mConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/laifeng/sopcastsdk/video/MyRecorder;)V
    .locals 0
    .param p0, "x0"    # Lcom/laifeng/sopcastsdk/video/MyRecorder;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/video/MyRecorder;->drainEncoder()V

    return-void
.end method

.method private drainEncoder()V
    .locals 8

    .prologue
    .line 130
    iget-object v4, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 131
    .local v3, "outBuffers":[Ljava/nio/ByteBuffer;
    :goto_0
    iget-boolean v4, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->isStarted:Z

    if-eqz v4, :cond_3

    .line 132
    iget-object v4, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->encodeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 133
    iget-object v4, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v4, :cond_2

    .line 134
    iget-object v4, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v5, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v6, 0x2ee0

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    .line 135
    .local v2, "outBufferIndex":I
    if-ltz v2, :cond_1

    .line 136
    aget-object v0, v3, v2

    .line 137
    .local v0, "bb":Ljava/nio/ByteBuffer;
    iget-object v4, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->mListener:Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;

    if-eqz v4, :cond_0

    .line 138
    iget-object v4, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->mListener:Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;

    iget-object v5, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v4, v0, v5}, Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;->onVideoEncode(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 140
    :cond_0
    iget-object v4, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 149
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :goto_1
    iget-object v4, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->encodeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 144
    :cond_1
    const-wide/16 v4, 0xa

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 151
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "outBufferIndex":I
    :cond_2
    iget-object v4, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->encodeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 155
    :cond_3
    return-void
.end method

.method private releaseEncoder()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 107
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 108
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 109
    iput-object v1, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->mInputSurface:Lcom/laifeng/sopcastsdk/video/InputSurface;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->mInputSurface:Lcom/laifeng/sopcastsdk/video/InputSurface;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/video/InputSurface;->release()V

    .line 113
    iput-object v1, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->mInputSurface:Lcom/laifeng/sopcastsdk/video/InputSurface;

    .line 115
    :cond_1
    return-void
.end method


# virtual methods
.method public firstTimeSetup()Z
    .locals 3

    .prologue
    .line 56
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->mInputSurface:Lcom/laifeng/sopcastsdk/video/InputSurface;

    if-eqz v1, :cond_1

    .line 57
    :cond_0
    const/4 v1, 0x0

    .line 66
    :goto_0
    return v1

    .line 60
    :cond_1
    :try_start_0
    new-instance v1, Lcom/laifeng/sopcastsdk/video/InputSurface;

    iget-object v2, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/laifeng/sopcastsdk/video/InputSurface;-><init>(Landroid/view/Surface;)V

    iput-object v1, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->mInputSurface:Lcom/laifeng/sopcastsdk/video/InputSurface;

    .line 61
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    const/4 v1, 0x1

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/video/MyRecorder;->releaseEncoder()V

    .line 64
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "e":Ljava/lang/Exception;
    throw v0
.end method

.method public makeCurrent()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->mInputSurface:Lcom/laifeng/sopcastsdk/video/InputSurface;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/video/InputSurface;->makeCurrent()V

    .line 75
    return-void
.end method

.method public prepareEncoder()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->mMediaCodec:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->mInputSurface:Lcom/laifeng/sopcastsdk/video/InputSurface;

    if-eqz v0, :cond_1

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "prepareEncoder called twice?"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->mConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/mediacodec/VideoMediaCodec;->getVideoMediaCodec(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 48
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SopCastEncode"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->mHandlerThread:Landroid/os/HandlerThread;

    .line 49
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 50
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->mEncoderHandler:Landroid/os/Handler;

    .line 51
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->isStarted:Z

    .line 53
    return-void
.end method

.method public setPause(Z)V
    .locals 0
    .param p1, "pause"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->mPause:Z

    .line 41
    return-void
.end method

.method public setRecorderBps(I)Z
    .locals 4
    .param p1, "bps"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 119
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->mInputSurface:Lcom/laifeng/sopcastsdk/video/InputSurface;

    if-nez v1, :cond_1

    .line 120
    :cond_0
    const/4 v1, 0x0

    .line 126
    :goto_0
    return v1

    .line 122
    :cond_1
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

    .line 123
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 124
    .local v0, "bitrate":Landroid/os/Bundle;
    const-string v1, "video-bitrate"

    mul-int/lit16 v2, p1, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 125
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 126
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setVideoEncodeListener(Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->mListener:Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;

    .line 37
    return-void
.end method

.method public startSwapData()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->mEncoderHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->swapDataRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 71
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->isStarted:Z

    if-nez v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->isStarted:Z

    .line 97
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->mEncoderHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 98
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 99
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->encodeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 100
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/video/MyRecorder;->releaseEncoder()V

    .line 101
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->encodeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0
.end method

.method public swapBuffers()V
    .locals 4

    .prologue
    .line 78
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->mPause:Z

    if-eqz v0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->mInputSurface:Lcom/laifeng/sopcastsdk/video/InputSurface;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/video/InputSurface;->swapBuffers()Z

    .line 82
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder;->mInputSurface:Lcom/laifeng/sopcastsdk/video/InputSurface;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/laifeng/sopcastsdk/video/InputSurface;->setPresentationTime(J)V

    goto :goto_0
.end method
