.class public Lcom/laifeng/sopcastsdk/controller/video/ScreenVideoController;
.super Ljava/lang/Object;
.source "ScreenVideoController.java"

# interfaces
.implements Lcom/laifeng/sopcastsdk/controller/video/IVideoController;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private mEncoder:Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;

.field private mListener:Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;

.field private mManager:Landroid/media/projection/MediaProjectionManager;

.field private mMediaProjection:Landroid/media/projection/MediaProjection;

.field private mVideoConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

.field private mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

.field private resultCode:I

.field private resultData:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/media/projection/MediaProjectionManager;ILandroid/content/Intent;)V
    .locals 1
    .param p1, "manager"    # Landroid/media/projection/MediaProjectionManager;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;->createDefault()Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/controller/video/ScreenVideoController;->mVideoConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    .line 43
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/controller/video/ScreenVideoController;->mManager:Landroid/media/projection/MediaProjectionManager;

    .line 44
    iput p2, p0, Lcom/laifeng/sopcastsdk/controller/video/ScreenVideoController;->resultCode:I

    .line 45
    iput-object p3, p0, Lcom/laifeng/sopcastsdk/controller/video/ScreenVideoController;->resultData:Landroid/content/Intent;

    .line 46
    return-void
.end method


# virtual methods
.method public pause()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/video/ScreenVideoController;->mEncoder:Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/video/ScreenVideoController;->mEncoder:Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->setPause(Z)V

    .line 83
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/video/ScreenVideoController;->mEncoder:Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/video/ScreenVideoController;->mEncoder:Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->setPause(Z)V

    .line 90
    :cond_0
    return-void
.end method

.method public setVideoBps(I)Z
    .locals 4
    .param p1, "bps"    # I

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "result":Z
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_1

    .line 98
    const-string v1, "SopCast"

    const-string v2, "Bps need change, but MediaCodec do not support."

    invoke-static {v1, v2}, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    :goto_0
    return v0

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/controller/video/ScreenVideoController;->mEncoder:Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;

    if-eqz v1, :cond_0

    .line 101
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

    .line 102
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/controller/video/ScreenVideoController;->mEncoder:Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;

    invoke-virtual {v1, p1}, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->setRecorderBps(I)V

    .line 103
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setVideoConfiguration(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;)V
    .locals 0
    .param p1, "configuration"    # Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/controller/video/ScreenVideoController;->mVideoConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    .line 117
    return-void
.end method

.method public setVideoEncoderListener(Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/controller/video/ScreenVideoController;->mListener:Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;

    .line 112
    return-void
.end method

.method public start()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 50
    new-instance v0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/controller/video/ScreenVideoController;->mVideoConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    invoke-direct {v0, v1}, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;-><init>(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;)V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/controller/video/ScreenVideoController;->mEncoder:Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;

    .line 51
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/video/ScreenVideoController;->mEncoder:Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->getSurface()Landroid/view/Surface;

    move-result-object v6

    .line 52
    .local v6, "surface":Landroid/view/Surface;
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/video/ScreenVideoController;->mEncoder:Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->start()V

    .line 53
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/video/ScreenVideoController;->mEncoder:Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/controller/video/ScreenVideoController;->mListener:Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;

    invoke-virtual {v0, v1}, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->setOnVideoEncodeListener(Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;)V

    .line 54
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/video/ScreenVideoController;->mManager:Landroid/media/projection/MediaProjectionManager;

    iget v1, p0, Lcom/laifeng/sopcastsdk/controller/video/ScreenVideoController;->resultCode:I

    iget-object v4, p0, Lcom/laifeng/sopcastsdk/controller/video/ScreenVideoController;->resultData:Landroid/content/Intent;

    invoke-virtual {v0, v1, v4}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object v0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/controller/video/ScreenVideoController;->mMediaProjection:Landroid/media/projection/MediaProjection;

    .line 55
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/video/ScreenVideoController;->mVideoConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    iget v0, v0, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;->width:I

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/mediacodec/VideoMediaCodec;->getVideoSize(I)I

    move-result v2

    .line 56
    .local v2, "width":I
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/video/ScreenVideoController;->mVideoConfiguration:Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    iget v0, v0, Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;->height:I

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/mediacodec/VideoMediaCodec;->getVideoSize(I)I

    move-result v3

    .line 57
    .local v3, "height":I
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/video/ScreenVideoController;->mMediaProjection:Landroid/media/projection/MediaProjection;

    const-string v1, "ScreenRecoder"

    const/4 v4, 0x1

    const/16 v5, 0x10

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/controller/video/ScreenVideoController;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 59
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/video/ScreenVideoController;->mEncoder:Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/video/ScreenVideoController;->mEncoder:Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;

    invoke-virtual {v0, v1}, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->setOnVideoEncodeListener(Lcom/laifeng/sopcastsdk/video/OnVideoEncodeListener;)V

    .line 65
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/video/ScreenVideoController;->mEncoder:Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->stop()V

    .line 66
    iput-object v1, p0, Lcom/laifeng/sopcastsdk/controller/video/ScreenVideoController;->mEncoder:Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/video/ScreenVideoController;->mMediaProjection:Landroid/media/projection/MediaProjection;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/video/ScreenVideoController;->mMediaProjection:Landroid/media/projection/MediaProjection;

    invoke-virtual {v0}, Landroid/media/projection/MediaProjection;->stop()V

    .line 70
    iput-object v1, p0, Lcom/laifeng/sopcastsdk/controller/video/ScreenVideoController;->mMediaProjection:Landroid/media/projection/MediaProjection;

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/video/ScreenVideoController;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/video/ScreenVideoController;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 74
    iput-object v1, p0, Lcom/laifeng/sopcastsdk/controller/video/ScreenVideoController;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 76
    :cond_2
    return-void
.end method
