.class public Lcom/laifeng/sopcastsdk/screen/ScreenRecordActivity;
.super Landroid/app/Activity;
.source "ScreenRecordActivity.java"


# static fields
.field private static final RECORD_REQUEST_CODE:I = 0x65

.field private static final TAG:Ljava/lang/String; = "SopCast"


# instance fields
.field private mMediaProjectionManage:Landroid/media/projection/MediaProjectionManager;

.field private mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected muteRecording(Z)V
    .locals 1
    .param p1, "mute"    # Z

    .prologue
    .line 108
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordActivity;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordActivity;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-virtual {v0, p1}, Lcom/laifeng/sopcastsdk/controller/StreamController;->mute(Z)V

    .line 111
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 50
    const/16 v2, 0x65

    if-ne p1, v2, :cond_0

    .line 51
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 52
    new-instance v0, Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;

    invoke-direct {v0}, Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;-><init>()V

    .line 53
    .local v0, "audioController":Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;
    new-instance v1, Lcom/laifeng/sopcastsdk/controller/video/ScreenVideoController;

    iget-object v2, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordActivity;->mMediaProjectionManage:Landroid/media/projection/MediaProjectionManager;

    invoke-direct {v1, v2, p2, p3}, Lcom/laifeng/sopcastsdk/controller/video/ScreenVideoController;-><init>(Landroid/media/projection/MediaProjectionManager;ILandroid/content/Intent;)V

    .line 54
    .local v1, "videoController":Lcom/laifeng/sopcastsdk/controller/video/ScreenVideoController;
    new-instance v2, Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-direct {v2, v1, v0}, Lcom/laifeng/sopcastsdk/controller/StreamController;-><init>(Lcom/laifeng/sopcastsdk/controller/video/IVideoController;Lcom/laifeng/sopcastsdk/controller/audio/IAudioController;)V

    iput-object v2, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordActivity;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    .line 55
    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/screen/ScreenRecordActivity;->requestRecordSuccess()V

    .line 60
    .end local v0    # "audioController":Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;
    .end local v1    # "videoController":Lcom/laifeng/sopcastsdk/controller/video/ScreenVideoController;
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/screen/ScreenRecordActivity;->requestRecordFail()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/screen/ScreenRecordActivity;->stopRecording()V

    .line 136
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 137
    return-void
.end method

.method protected pauseRecording()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordActivity;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordActivity;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/controller/StreamController;->pause()V

    .line 98
    :cond_0
    return-void
.end method

.method protected requestRecordFail()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method protected requestRecordSuccess()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method protected requestRecording()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 39
    invoke-static {}, Lcom/laifeng/sopcastsdk/utils/SopCastUtils;->isOverLOLLIPOP()Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    const-string v1, "SopCast"

    const-string v2, "Device don\'t support screen recording."

    invoke-static {v1, v2}, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :goto_0
    return-void

    .line 43
    :cond_0
    const-string v1, "media_projection"

    invoke-virtual {p0, v1}, Lcom/laifeng/sopcastsdk/screen/ScreenRecordActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/projection/MediaProjectionManager;

    iput-object v1, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordActivity;->mMediaProjectionManage:Landroid/media/projection/MediaProjectionManager;

    .line 44
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordActivity;->mMediaProjectionManage:Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {v1}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    move-result-object v0

    .line 45
    .local v0, "captureIntent":Landroid/content/Intent;
    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Lcom/laifeng/sopcastsdk/screen/ScreenRecordActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected resumeRecording()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordActivity;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordActivity;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/controller/StreamController;->resume()V

    .line 105
    :cond_0
    return-void
.end method

.method public setAudioConfiguration(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;)V
    .locals 1
    .param p1, "audioConfiguration"    # Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordActivity;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordActivity;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-virtual {v0, p1}, Lcom/laifeng/sopcastsdk/controller/StreamController;->setAudioConfiguration(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;)V

    .line 80
    :cond_0
    return-void
.end method

.method protected setRecordBps(I)Z
    .locals 1
    .param p1, "bps"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordActivity;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordActivity;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-virtual {v0, p1}, Lcom/laifeng/sopcastsdk/controller/StreamController;->setVideoBps(I)Z

    move-result v0

    .line 117
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setRecordPacker(Lcom/laifeng/sopcastsdk/stream/packer/Packer;)V
    .locals 1
    .param p1, "packer"    # Lcom/laifeng/sopcastsdk/stream/packer/Packer;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordActivity;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordActivity;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-virtual {v0, p1}, Lcom/laifeng/sopcastsdk/controller/StreamController;->setPacker(Lcom/laifeng/sopcastsdk/stream/packer/Packer;)V

    .line 125
    :cond_0
    return-void
.end method

.method protected setRecordSender(Lcom/laifeng/sopcastsdk/stream/sender/Sender;)V
    .locals 1
    .param p1, "sender"    # Lcom/laifeng/sopcastsdk/stream/sender/Sender;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordActivity;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordActivity;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-virtual {v0, p1}, Lcom/laifeng/sopcastsdk/controller/StreamController;->setSender(Lcom/laifeng/sopcastsdk/stream/sender/Sender;)V

    .line 131
    :cond_0
    return-void
.end method

.method public setVideoConfiguration(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;)V
    .locals 1
    .param p1, "videoConfiguration"    # Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordActivity;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordActivity;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-virtual {v0, p1}, Lcom/laifeng/sopcastsdk/controller/StreamController;->setVideoConfiguration(Lcom/laifeng/sopcastsdk/configuration/VideoConfiguration;)V

    .line 74
    :cond_0
    return-void
.end method

.method protected startRecording()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordActivity;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordActivity;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/controller/StreamController;->start()V

    .line 86
    :cond_0
    return-void
.end method

.method protected stopRecording()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordActivity;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordActivity;->mStreamController:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/controller/StreamController;->stop()V

    .line 92
    :cond_0
    return-void
.end method
