.class public Lcom/android/camera/pip/opengl/ScreenRecorder;
.super Ljava/lang/Object;
.source "ScreenRecorder.java"


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private encodeLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile isStarted:Z

.field private mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

.field private mEglCore:Lcom/android/camera/pip/opengl/EglCore;

.field private mEncoderHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mInputSurface:Lcom/android/camera/pip/opengl/WindowSurface;

.field private mListener:Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;

.field private mMediaCodec:Landroid/media/MediaCodec;

.field private mPause:Z

.field private swapDataRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ScreenRecorder"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/pip/opengl/ScreenRecorder;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;)V
    .locals 1
    .param p1, "configuration"    # Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->encodeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 90
    new-instance v0, Lcom/android/camera/pip/opengl/ScreenRecorder$1;

    invoke-direct {v0, p0}, Lcom/android/camera/pip/opengl/ScreenRecorder$1;-><init>(Lcom/android/camera/pip/opengl/ScreenRecorder;)V

    iput-object v0, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->swapDataRunnable:Ljava/lang/Runnable;

    .line 35
    iput-object p1, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/pip/opengl/ScreenRecorder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/pip/opengl/ScreenRecorder;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/camera/pip/opengl/ScreenRecorder;->drainEncoder()V

    return-void
.end method

.method private drainEncoder()V
    .locals 8

    .prologue
    .line 139
    iget-object v4, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 140
    .local v3, "outBuffers":[Ljava/nio/ByteBuffer;
    :goto_0
    iget-boolean v4, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->isStarted:Z

    if-eqz v4, :cond_3

    .line 141
    iget-object v4, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->encodeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 142
    iget-object v4, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v4, :cond_2

    .line 143
    iget-object v4, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v5, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v6, 0x2ee0

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    .line 144
    .local v2, "outBufferIndex":I
    if-ltz v2, :cond_1

    .line 145
    aget-object v0, v3, v2

    .line 146
    .local v0, "bb":Ljava/nio/ByteBuffer;
    iget-object v4, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mListener:Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;

    if-eqz v4, :cond_0

    .line 147
    iget-object v4, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mListener:Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;

    iget-object v5, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v4, v0, v5}, Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;->onVideoEncode(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 149
    :cond_0
    iget-object v4, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 158
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :goto_1
    iget-object v4, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->encodeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 153
    :cond_1
    const-wide/16 v4, 0xa

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 154
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 160
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "outBufferIndex":I
    :cond_2
    iget-object v4, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->encodeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 164
    :cond_3
    return-void
.end method

.method private releaseEncoder()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    iget-object v0, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 112
    iget-object v0, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 113
    iget-object v0, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 114
    iput-object v1, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mInputSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mInputSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/WindowSurface;->release()V

    .line 118
    iput-object v1, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mInputSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mEglCore:Lcom/android/camera/pip/opengl/EglCore;

    if-eqz v0, :cond_2

    .line 121
    iget-object v0, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mEglCore:Lcom/android/camera/pip/opengl/EglCore;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/EglCore;->release()V

    .line 122
    iput-object v1, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mEglCore:Lcom/android/camera/pip/opengl/EglCore;

    .line 124
    :cond_2
    return-void
.end method


# virtual methods
.method public firstTimeSetup()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 59
    iget-object v2, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mInputSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    if-eqz v2, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v1

    .line 63
    :cond_1
    new-instance v1, Lcom/android/camera/pip/opengl/EglCore;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/pip/opengl/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v1, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mEglCore:Lcom/android/camera/pip/opengl/EglCore;

    .line 65
    :try_start_0
    new-instance v1, Lcom/android/camera/pip/opengl/WindowSurface;

    iget-object v2, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mEglCore:Lcom/android/camera/pip/opengl/EglCore;

    iget-object v3, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/pip/opengl/WindowSurface;-><init>(Lcom/android/camera/pip/opengl/EglCore;Landroid/view/Surface;Z)V

    iput-object v1, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mInputSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    .line 66
    iget-object v1, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    const/4 v1, 0x1

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/android/camera/pip/opengl/ScreenRecorder;->releaseEncoder()V

    .line 69
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "e":Ljava/lang/Exception;
    throw v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mInputSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/WindowSurface;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mInputSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/WindowSurface;->getWidth()I

    move-result v0

    return v0
.end method

.method public makeCurrent()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mInputSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/WindowSurface;->makeCurrent()V

    .line 80
    return-void
.end method

.method public makeCurrentReadFrom(Lcom/android/camera/pip/opengl/EglSurfaceBase;)V
    .locals 1
    .param p1, "readSurface"    # Lcom/android/camera/pip/opengl/EglSurfaceBase;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mInputSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v0, p1}, Lcom/android/camera/pip/opengl/WindowSurface;->makeCurrentReadFrom(Lcom/android/camera/pip/opengl/EglSurfaceBase;)V

    .line 168
    return-void
.end method

.method public prepareEncoder()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mMediaCodec:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mInputSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    if-eqz v0, :cond_1

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "prepareEncoder called twice?"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/mediacodec/VideoMediaCodec;->getVideoMediaCodec(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 51
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SopCastEncode"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mHandlerThread:Landroid/os/HandlerThread;

    .line 52
    iget-object v0, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 53
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mEncoderHandler:Landroid/os/Handler;

    .line 54
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->isStarted:Z

    .line 56
    return-void
.end method

.method public setPause(Z)V
    .locals 0
    .param p1, "pause"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mPause:Z

    .line 44
    return-void
.end method

.method public setPresentationTime(J)V
    .locals 1
    .param p1, "nsecs"    # J

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mInputSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/pip/opengl/WindowSurface;->setPresentationTime(J)V

    .line 180
    return-void
.end method

.method public setRecorderBps(I)Z
    .locals 4
    .param p1, "bps"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 128
    iget-object v1, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mInputSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    if-nez v1, :cond_1

    .line 129
    :cond_0
    const/4 v1, 0x0

    .line 135
    :goto_0
    return v1

    .line 131
    :cond_1
    sget-object v1, Lcom/android/camera/pip/opengl/ScreenRecorder;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 132
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 133
    .local v0, "bitrate":Landroid/os/Bundle;
    const-string v1, "video-bitrate"

    mul-int/lit16 v2, p1, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 134
    iget-object v1, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 135
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setVideoEncodeListener(Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mListener:Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;

    .line 40
    return-void
.end method

.method public startSwapData()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mEncoderHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->swapDataRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->isStarted:Z

    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->isStarted:Z

    .line 102
    iget-object v0, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mEncoderHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 103
    iget-object v0, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 104
    iget-object v0, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->encodeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 105
    invoke-direct {p0}, Lcom/android/camera/pip/opengl/ScreenRecorder;->releaseEncoder()V

    .line 106
    iget-object v0, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->encodeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0
.end method

.method public swapBuffers()V
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mPause:Z

    if-eqz v0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mInputSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/WindowSurface;->swapBuffers()Z

    .line 87
    iget-object v0, p0, Lcom/android/camera/pip/opengl/ScreenRecorder;->mInputSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/pip/opengl/WindowSurface;->setPresentationTime(J)V

    goto :goto_0
.end method
