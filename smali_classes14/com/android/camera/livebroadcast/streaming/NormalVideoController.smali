.class public Lcom/android/camera/livebroadcast/streaming/NormalVideoController;
.super Ljava/lang/Object;
.source "NormalVideoController.java"

# interfaces
.implements Lcom/laifeng/sopcastsdk/controller/video/IVideoController;


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mEncoderHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mInputSurface:Landroid/view/Surface;

.field private final mMediaCodec:Landroid/media/MediaCodec;

.field private mOnVideoEncodeListener:Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;

.field private final mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "NormalVideoCtrl"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;I)V
    .locals 3
    .param p1, "videoConfiguration"    # Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;
    .param p2, "orientation"    # I

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->getVideoMediaCodec(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;I)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->mMediaCodec:Landroid/media/MediaCodec;

    .line 40
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->mInputSurface:Landroid/view/Surface;

    .line 42
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MediaCodecThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->mHandlerThread:Landroid/os/HandlerThread;

    .line 43
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 44
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->mEncoderHandler:Landroid/os/Handler;

    .line 46
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->mMediaCodec:Landroid/media/MediaCodec;

    new-instance v1, Lcom/android/camera/livebroadcast/streaming/NormalVideoController$1;

    invoke-direct {v1, p0}, Lcom/android/camera/livebroadcast/streaming/NormalVideoController$1;-><init>(Lcom/android/camera/livebroadcast/streaming/NormalVideoController;)V

    iget-object v2, p0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->mEncoderHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/livebroadcast/streaming/NormalVideoController;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/streaming/NormalVideoController;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/livebroadcast/streaming/NormalVideoController;)Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/streaming/NormalVideoController;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->mOnVideoEncodeListener:Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/livebroadcast/streaming/NormalVideoController;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/streaming/NormalVideoController;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method private getVideoMediaCodec(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;I)Landroid/media/MediaCodec;
    .locals 8
    .param p1, "videoConfiguration"    # Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;
    .param p2, "orientation"    # I

    .prologue
    const/4 v7, 0x1

    .line 159
    iget v5, p1, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;->width:I

    invoke-direct {p0, v5}, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->getVideoSize(I)I

    move-result v4

    .line 160
    .local v4, "videoWidth":I
    iget v5, p1, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;->height:I

    invoke-direct {p0, v5}, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->getVideoSize(I)I

    move-result v3

    .line 161
    .local v3, "videoHeight":I
    iget-object v5, p1, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;->mime:Ljava/lang/String;

    invoke-static {v5, v4, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    .line 162
    .local v1, "format":Landroid/media/MediaFormat;
    const-string v5, "color-format"

    const v6, 0x7f000789

    invoke-virtual {v1, v5, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 163
    const-string v5, "bitrate"

    iget v6, p1, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;->maxBps:I

    mul-int/lit16 v6, v6, 0x400

    invoke-virtual {v1, v5, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 165
    const-string v5, "frame-rate"

    iget v6, p1, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;->fps:I

    invoke-virtual {v1, v5, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 166
    const-string v5, "i-frame-interval"

    iget v6, p1, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;->ifi:I

    invoke-virtual {v1, v5, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 167
    const-string v5, "bitrate-mode"

    invoke-virtual {v1, v5, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 168
    const-string v5, "complexity"

    const/4 v6, 0x2

    invoke-virtual {v1, v5, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 169
    const/4 v2, 0x0

    .line 172
    .local v2, "mediaCodec":Landroid/media/MediaCodec;
    :try_start_0
    iget-object v5, p1, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;->mime:Ljava/lang/String;

    invoke-static {v5}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    .line 173
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v2, v1, v5, v6, v7}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_0
    :goto_0
    return-object v2

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 176
    if-eqz v2, :cond_0

    .line 177
    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V

    .line 178
    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    .line 179
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getVideoSize(I)I
    .locals 6
    .param p1, "size"    # I

    .prologue
    .line 154
    int-to-double v2, p1

    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 155
    .local v0, "multiple":I
    mul-int/lit8 v1, v0, 0x10

    return v1
.end method


# virtual methods
.method public getInputSurface()Landroid/view/Surface;
    .locals 2

    .prologue
    .line 137
    iget-object v1, p0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->mInputSurface:Landroid/view/Surface;

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 101
    sget-object v0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    .line 143
    sget-object v0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 147
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 148
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->mInputSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 150
    :cond_0
    monitor-exit v1

    .line 151
    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "resume"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public setVideoBps(I)Z
    .locals 5
    .param p1, "bps"    # I

    .prologue
    .line 113
    iget-object v2, p0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    sget-object v1, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setVideoBps :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    mul-int/lit16 v4, p1, 0x400

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 116
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 117
    .local v0, "bitrate":Landroid/os/Bundle;
    const-string v1, "video-bitrate"

    mul-int/lit16 v3, p1, 0x400

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 118
    iget-object v1, p0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 119
    const/4 v1, 0x1

    monitor-exit v2

    .line 121
    .end local v0    # "bitrate":Landroid/os/Bundle;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setVideoConfiguration(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;)V
    .locals 0
    .param p1, "videoConfiguration"    # Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    .prologue
    .line 134
    return-void
.end method

.method public setVideoEncoderListener(Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;)V
    .locals 0
    .param p1, "onVideoEncodeListener"    # Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->mOnVideoEncodeListener:Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;

    .line 129
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 83
    sget-object v0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 85
    iget-object v1, p0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 87
    monitor-exit v1

    .line 88
    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 92
    sget-object v0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "stop"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 95
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/NormalVideoController;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 97
    return-void

    .line 95
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
