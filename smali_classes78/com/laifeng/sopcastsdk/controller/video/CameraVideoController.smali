.class public Lcom/laifeng/sopcastsdk/controller/video/CameraVideoController;
.super Ljava/lang/Object;
.source "CameraVideoController.java"

# interfaces
.implements Lcom/laifeng/sopcastsdk/controller/video/IVideoController;


# instance fields
.field private mListener:Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;

.field private mRecorder:Lcom/laifeng/sopcastsdk/video/MyRecorder;

.field private mRenderer:Lcom/laifeng/sopcastsdk/video/MyRenderer;

.field private mVideoConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;


# direct methods
.method public constructor <init>(Lcom/laifeng/sopcastsdk/video/MyRenderer;)V
    .locals 2
    .param p1, "renderer"    # Lcom/laifeng/sopcastsdk/video/MyRenderer;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;->createDefault()Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/controller/video/CameraVideoController;->mVideoConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    .line 29
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/controller/video/CameraVideoController;->mRenderer:Lcom/laifeng/sopcastsdk/video/MyRenderer;

    .line 30
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/video/CameraVideoController;->mRenderer:Lcom/laifeng/sopcastsdk/video/MyRenderer;

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/controller/video/CameraVideoController;->mVideoConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    invoke-virtual {v0, v1}, Lcom/laifeng/sopcastsdk/video/MyRenderer;->setVideoConfiguration(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;)V

    .line 31
    return-void
.end method


# virtual methods
.method public pause()V
    .locals 2

    .prologue
    .line 64
    const-string v0, "SopCast"

    const-string v1, "Pause video recording"

    invoke-static {v0, v1}, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/video/CameraVideoController;->mRecorder:Lcom/laifeng/sopcastsdk/video/MyRecorder;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/video/CameraVideoController;->mRecorder:Lcom/laifeng/sopcastsdk/video/MyRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/laifeng/sopcastsdk/video/MyRecorder;->setPause(Z)V

    .line 68
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 71
    const-string v0, "SopCast"

    const-string v1, "Resume video recording"

    invoke-static {v0, v1}, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/video/CameraVideoController;->mRecorder:Lcom/laifeng/sopcastsdk/video/MyRecorder;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/video/CameraVideoController;->mRecorder:Lcom/laifeng/sopcastsdk/video/MyRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/laifeng/sopcastsdk/video/MyRecorder;->setPause(Z)V

    .line 75
    :cond_0
    return-void
.end method

.method public setVideoBps(I)Z
    .locals 4
    .param p1, "bps"    # I

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "result":Z
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_1

    .line 82
    const-string v1, "SopCast"

    const-string v2, "Bps need change, but MediaCodec do not support."

    invoke-static {v1, v2}, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_0
    :goto_0
    return v0

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/controller/video/CameraVideoController;->mRecorder:Lcom/laifeng/sopcastsdk/video/MyRecorder;

    if-eqz v1, :cond_0

    .line 85
    const-string v1, "SopCast"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bps change, current bps: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/controller/video/CameraVideoController;->mRecorder:Lcom/laifeng/sopcastsdk/video/MyRecorder;

    invoke-virtual {v1, p1}, Lcom/laifeng/sopcastsdk/video/MyRecorder;->setRecorderBps(I)Z

    .line 87
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setVideoConfiguration(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;)V
    .locals 2
    .param p1, "configuration"    # Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/controller/video/CameraVideoController;->mVideoConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    .line 35
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/video/CameraVideoController;->mRenderer:Lcom/laifeng/sopcastsdk/video/MyRenderer;

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/controller/video/CameraVideoController;->mVideoConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    invoke-virtual {v0, v1}, Lcom/laifeng/sopcastsdk/video/MyRenderer;->setVideoConfiguration(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;)V

    .line 36
    return-void
.end method

.method public setVideoEncoderListener(Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/controller/video/CameraVideoController;->mListener:Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;

    .line 40
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/video/CameraVideoController;->mListener:Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;

    if-nez v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 46
    :cond_0
    const-string v0, "SopCast"

    const-string v1, "Start video recording"

    invoke-static {v0, v1}, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v0, Lcom/laifeng/sopcastsdk/video/MyRecorder;

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/controller/video/CameraVideoController;->mVideoConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    invoke-direct {v0, v1}, Lcom/laifeng/sopcastsdk/video/MyRecorder;-><init>(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;)V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/controller/video/CameraVideoController;->mRecorder:Lcom/laifeng/sopcastsdk/video/MyRecorder;

    .line 48
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/video/CameraVideoController;->mRecorder:Lcom/laifeng/sopcastsdk/video/MyRecorder;

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/controller/video/CameraVideoController;->mListener:Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;

    invoke-virtual {v0, v1}, Lcom/laifeng/sopcastsdk/video/MyRecorder;->setVideoEncodeListener(Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;)V

    .line 49
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/video/CameraVideoController;->mRecorder:Lcom/laifeng/sopcastsdk/video/MyRecorder;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/video/MyRecorder;->prepareEncoder()V

    .line 50
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/video/CameraVideoController;->mRenderer:Lcom/laifeng/sopcastsdk/video/MyRenderer;

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/controller/video/CameraVideoController;->mRecorder:Lcom/laifeng/sopcastsdk/video/MyRecorder;

    invoke-virtual {v0, v1}, Lcom/laifeng/sopcastsdk/video/MyRenderer;->setRecorder(Lcom/laifeng/sopcastsdk/video/MyRecorder;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    const-string v0, "SopCast"

    const-string v1, "Stop video recording"

    invoke-static {v0, v1}, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/video/CameraVideoController;->mRenderer:Lcom/laifeng/sopcastsdk/video/MyRenderer;

    invoke-virtual {v0, v2}, Lcom/laifeng/sopcastsdk/video/MyRenderer;->setRecorder(Lcom/laifeng/sopcastsdk/video/MyRecorder;)V

    .line 56
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/video/CameraVideoController;->mRecorder:Lcom/laifeng/sopcastsdk/video/MyRecorder;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/video/CameraVideoController;->mRecorder:Lcom/laifeng/sopcastsdk/video/MyRecorder;

    invoke-virtual {v0, v2}, Lcom/laifeng/sopcastsdk/video/MyRecorder;->setVideoEncodeListener(Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;)V

    .line 58
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/video/CameraVideoController;->mRecorder:Lcom/laifeng/sopcastsdk/video/MyRecorder;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/video/MyRecorder;->stop()V

    .line 59
    iput-object v2, p0, Lcom/laifeng/sopcastsdk/controller/video/CameraVideoController;->mRecorder:Lcom/laifeng/sopcastsdk/video/MyRecorder;

    .line 61
    :cond_0
    return-void
.end method
