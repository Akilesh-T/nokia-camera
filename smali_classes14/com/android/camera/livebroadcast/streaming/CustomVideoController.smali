.class public Lcom/android/camera/livebroadcast/streaming/CustomVideoController;
.super Ljava/lang/Object;
.source "CustomVideoController.java"

# interfaces
.implements Lcom/laifeng/sopcastsdk/controller/video/IVideoController;


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mGLRenderer:Lcom/android/camera/pip/opengl/GLRenderer;

.field private mListener:Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;

.field private mRecorder:Lcom/android/camera/pip/opengl/ScreenRecorder;

.field private mVideoConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "[LB]SController"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/livebroadcast/streaming/CustomVideoController;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/pip/opengl/GLRenderer;)V
    .locals 1
    .param p1, "glRenderer"    # Lcom/android/camera/pip/opengl/GLRenderer;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;->createDefault()Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/livebroadcast/streaming/CustomVideoController;->mVideoConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    .line 22
    iput-object p1, p0, Lcom/android/camera/livebroadcast/streaming/CustomVideoController;->mGLRenderer:Lcom/android/camera/pip/opengl/GLRenderer;

    .line 23
    return-void
.end method


# virtual methods
.method public pause()V
    .locals 2

    .prologue
    .line 55
    sget-object v0, Lcom/android/camera/livebroadcast/streaming/CustomVideoController;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Pause video recording"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/CustomVideoController;->mRecorder:Lcom/android/camera/pip/opengl/ScreenRecorder;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/CustomVideoController;->mRecorder:Lcom/android/camera/pip/opengl/ScreenRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/pip/opengl/ScreenRecorder;->setPause(Z)V

    .line 59
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 62
    sget-object v0, Lcom/android/camera/livebroadcast/streaming/CustomVideoController;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Resume video recording"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/CustomVideoController;->mRecorder:Lcom/android/camera/pip/opengl/ScreenRecorder;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/CustomVideoController;->mRecorder:Lcom/android/camera/pip/opengl/ScreenRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/pip/opengl/ScreenRecorder;->setPause(Z)V

    .line 66
    :cond_0
    return-void
.end method

.method public setVideoBps(I)Z
    .locals 4
    .param p1, "bps"    # I

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, "result":Z
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_1

    .line 73
    sget-object v1, Lcom/android/camera/livebroadcast/streaming/CustomVideoController;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Bps need change, but MediaCodec do not support."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 81
    :cond_0
    :goto_0
    return v0

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/android/camera/livebroadcast/streaming/CustomVideoController;->mRecorder:Lcom/android/camera/pip/opengl/ScreenRecorder;

    if-eqz v1, :cond_0

    .line 76
    sget-object v1, Lcom/android/camera/livebroadcast/streaming/CustomVideoController;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bps change, current bps: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/android/camera/livebroadcast/streaming/CustomVideoController;->mRecorder:Lcom/android/camera/pip/opengl/ScreenRecorder;

    invoke-virtual {v1, p1}, Lcom/android/camera/pip/opengl/ScreenRecorder;->setRecorderBps(I)Z

    .line 78
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setVideoConfiguration(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;)V
    .locals 0
    .param p1, "configuration"    # Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/camera/livebroadcast/streaming/CustomVideoController;->mVideoConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    .line 27
    return-void
.end method

.method public setVideoEncoderListener(Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/camera/livebroadcast/streaming/CustomVideoController;->mListener:Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;

    .line 31
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/CustomVideoController;->mListener:Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;

    if-nez v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 37
    :cond_0
    sget-object v0, Lcom/android/camera/livebroadcast/streaming/CustomVideoController;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Start video recording"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/android/camera/pip/opengl/ScreenRecorder;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/streaming/CustomVideoController;->mVideoConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    invoke-direct {v0, v1}, Lcom/android/camera/pip/opengl/ScreenRecorder;-><init>(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/streaming/CustomVideoController;->mRecorder:Lcom/android/camera/pip/opengl/ScreenRecorder;

    .line 39
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/CustomVideoController;->mRecorder:Lcom/android/camera/pip/opengl/ScreenRecorder;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/streaming/CustomVideoController;->mListener:Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/pip/opengl/ScreenRecorder;->setVideoEncodeListener(Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;)V

    .line 40
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/CustomVideoController;->mRecorder:Lcom/android/camera/pip/opengl/ScreenRecorder;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/ScreenRecorder;->prepareEncoder()V

    .line 41
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/CustomVideoController;->mGLRenderer:Lcom/android/camera/pip/opengl/GLRenderer;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/streaming/CustomVideoController;->mRecorder:Lcom/android/camera/pip/opengl/ScreenRecorder;

    invoke-virtual {v0, v1}, Lcom/android/camera/pip/opengl/GLRenderer;->setRecorder(Lcom/android/camera/pip/opengl/ScreenRecorder;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    sget-object v0, Lcom/android/camera/livebroadcast/streaming/CustomVideoController;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Stop video recording"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/CustomVideoController;->mGLRenderer:Lcom/android/camera/pip/opengl/GLRenderer;

    invoke-virtual {v0, v2}, Lcom/android/camera/pip/opengl/GLRenderer;->setRecorder(Lcom/android/camera/pip/opengl/ScreenRecorder;)V

    .line 47
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/CustomVideoController;->mRecorder:Lcom/android/camera/pip/opengl/ScreenRecorder;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/CustomVideoController;->mRecorder:Lcom/android/camera/pip/opengl/ScreenRecorder;

    invoke-virtual {v0, v2}, Lcom/android/camera/pip/opengl/ScreenRecorder;->setVideoEncodeListener(Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;)V

    .line 49
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/CustomVideoController;->mRecorder:Lcom/android/camera/pip/opengl/ScreenRecorder;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/ScreenRecorder;->stop()V

    .line 50
    iput-object v2, p0, Lcom/android/camera/livebroadcast/streaming/CustomVideoController;->mRecorder:Lcom/android/camera/pip/opengl/ScreenRecorder;

    .line 52
    :cond_0
    return-void
.end method
