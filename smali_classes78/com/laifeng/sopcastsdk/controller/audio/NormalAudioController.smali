.class public Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;
.super Ljava/lang/Object;
.source "NormalAudioController.java"

# interfaces
.implements Lcom/laifeng/sopcastsdk/controller/audio/IAudioController;


# instance fields
.field private mAudioConfiguration:Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

.field private mAudioProcessor:Lcom/laifeng/sopcastsdk/audio/AudioProcessor;

.field private mAudioRecord:Landroid/media/AudioRecord;

.field private mListener:Lcom/laifeng/sopcastsdk/audio/OnAudioEncodeListener;

.field private mMute:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->createDefault()Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;->mAudioConfiguration:Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    .line 32
    return-void
.end method


# virtual methods
.method public getSessionId()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v0

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public mute(Z)V
    .locals 3
    .param p1, "mute"    # Z

    .prologue
    .line 93
    const-string v0, "SopCast"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio Recording mute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iput-boolean p1, p0, Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;->mMute:Z

    .line 95
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;->mAudioProcessor:Lcom/laifeng/sopcastsdk/audio/AudioProcessor;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;->mAudioProcessor:Lcom/laifeng/sopcastsdk/audio/AudioProcessor;

    iget-boolean v1, p0, Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;->mMute:Z

    invoke-virtual {v0, v1}, Lcom/laifeng/sopcastsdk/audio/AudioProcessor;->setMute(Z)V

    .line 98
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 73
    const-string v0, "SopCast"

    const-string v1, "Audio Recording pause"

    invoke-static {v0, v1}, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;->mAudioProcessor:Lcom/laifeng/sopcastsdk/audio/AudioProcessor;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;->mAudioProcessor:Lcom/laifeng/sopcastsdk/audio/AudioProcessor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/laifeng/sopcastsdk/audio/AudioProcessor;->pauseEncode(Z)V

    .line 80
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 83
    const-string v0, "SopCast"

    const-string v1, "Audio Recording resume"

    invoke-static {v0, v1}, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;->mAudioProcessor:Lcom/laifeng/sopcastsdk/audio/AudioProcessor;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;->mAudioProcessor:Lcom/laifeng/sopcastsdk/audio/AudioProcessor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/laifeng/sopcastsdk/audio/AudioProcessor;->pauseEncode(Z)V

    .line 90
    :cond_1
    return-void
.end method

.method public setAudioConfiguration(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;)V
    .locals 0
    .param p1, "audioConfiguration"    # Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;->mAudioConfiguration:Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    .line 36
    return-void
.end method

.method public setAudioEncodeListener(Lcom/laifeng/sopcastsdk/audio/OnAudioEncodeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/laifeng/sopcastsdk/audio/OnAudioEncodeListener;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;->mListener:Lcom/laifeng/sopcastsdk/audio/OnAudioEncodeListener;

    .line 40
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 43
    const-string v1, "SopCast"

    const-string v2, "Audio Recording start"

    invoke-static {v1, v2}, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;->mAudioConfiguration:Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    invoke-static {v1}, Lcom/laifeng/sopcastsdk/audio/AudioUtils;->getAudioRecord(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;)Landroid/media/AudioRecord;

    move-result-object v1

    iput-object v1, p0, Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;->mAudioRecord:Landroid/media/AudioRecord;

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    new-instance v1, Lcom/laifeng/sopcastsdk/audio/AudioProcessor;

    iget-object v2, p0, Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;->mAudioRecord:Landroid/media/AudioRecord;

    iget-object v3, p0, Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;->mAudioConfiguration:Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    invoke-direct {v1, v2, v3}, Lcom/laifeng/sopcastsdk/audio/AudioProcessor;-><init>(Landroid/media/AudioRecord;Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;)V

    iput-object v1, p0, Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;->mAudioProcessor:Lcom/laifeng/sopcastsdk/audio/AudioProcessor;

    .line 51
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;->mAudioProcessor:Lcom/laifeng/sopcastsdk/audio/AudioProcessor;

    iget-object v2, p0, Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;->mListener:Lcom/laifeng/sopcastsdk/audio/OnAudioEncodeListener;

    invoke-virtual {v1, v2}, Lcom/laifeng/sopcastsdk/audio/AudioProcessor;->setAudioHEncodeListener(Lcom/laifeng/sopcastsdk/audio/OnAudioEncodeListener;)V

    .line 52
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;->mAudioProcessor:Lcom/laifeng/sopcastsdk/audio/AudioProcessor;

    invoke-virtual {v1}, Lcom/laifeng/sopcastsdk/audio/AudioProcessor;->start()V

    .line 53
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;->mAudioProcessor:Lcom/laifeng/sopcastsdk/audio/AudioProcessor;

    iget-boolean v2, p0, Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;->mMute:Z

    invoke-virtual {v1, v2}, Lcom/laifeng/sopcastsdk/audio/AudioProcessor;->setMute(Z)V

    .line 54
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 57
    const-string v1, "SopCast"

    const-string v2, "Audio Recording stop"

    invoke-static {v1, v2}, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;->mAudioProcessor:Lcom/laifeng/sopcastsdk/audio/AudioProcessor;

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;->mAudioProcessor:Lcom/laifeng/sopcastsdk/audio/AudioProcessor;

    invoke-virtual {v1}, Lcom/laifeng/sopcastsdk/audio/AudioProcessor;->stopEncode()V

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_1

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    .line 64
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 65
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/laifeng/sopcastsdk/controller/audio/NormalAudioController;->mAudioRecord:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_1
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
