.class public Lcom/android/camera/livebroadcast/streaming/CustomAudioController;
.super Ljava/lang/Object;
.source "CustomAudioController.java"

# interfaces
.implements Lcom/laifeng/sopcastsdk/controller/audio/IAudioController;


# static fields
.field private static mAcousticEchoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

.field private static mAutomaticGainControl:Landroid/media/audiofx/AutomaticGainControl;


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
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->createDefault()Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/livebroadcast/streaming/CustomAudioController;->mAudioConfiguration:Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    .line 29
    return-void
.end method

.method public static getAudioRecord(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;)Landroid/media/AudioRecord;
    .locals 7
    .param p0, "audioConfiguration"    # Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 41
    iget v2, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->frequency:I

    .line 42
    .local v2, "frequency":I
    iget v4, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->encoding:I

    .line 43
    .local v4, "audioEncoding":I
    const/16 v3, 0x10

    .line 44
    .local v3, "channelConfiguration":I
    iget v5, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->channelCount:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 45
    const/16 v3, 0xc

    .line 47
    :cond_0
    const/4 v1, 0x0

    .line 48
    .local v1, "audioSource":I
    iget-boolean v5, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->aec:Z

    if-eqz v5, :cond_1

    .line 49
    const/4 v1, 0x7

    .line 51
    :cond_1
    new-instance v0, Landroid/media/AudioRecord;

    .line 52
    invoke-static {p0}, Lcom/laifeng/sopcastsdk/audio/AudioUtils;->getRecordBufferSize(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 53
    .local v0, "audioRecord":Landroid/media/AudioRecord;
    return-object v0
.end method


# virtual methods
.method public getSessionId()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/CustomAudioController;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/CustomAudioController;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v0

    .line 145
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
    .line 132
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

    .line 133
    iput-boolean p1, p0, Lcom/android/camera/livebroadcast/streaming/CustomAudioController;->mMute:Z

    .line 134
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/CustomAudioController;->mAudioProcessor:Lcom/laifeng/sopcastsdk/audio/AudioProcessor;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/CustomAudioController;->mAudioProcessor:Lcom/laifeng/sopcastsdk/audio/AudioProcessor;

    iget-boolean v1, p0, Lcom/android/camera/livebroadcast/streaming/CustomAudioController;->mMute:Z

    invoke-virtual {v0, v1}, Lcom/laifeng/sopcastsdk/audio/AudioProcessor;->setMute(Z)V

    .line 137
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 112
    const-string v0, "SopCast"

    const-string v1, "Audio Recording pause"

    invoke-static {v0, v1}, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/CustomAudioController;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/CustomAudioController;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/CustomAudioController;->mAudioProcessor:Lcom/laifeng/sopcastsdk/audio/AudioProcessor;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/CustomAudioController;->mAudioProcessor:Lcom/laifeng/sopcastsdk/audio/AudioProcessor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/laifeng/sopcastsdk/audio/AudioProcessor;->pauseEncode(Z)V

    .line 119
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 122
    const-string v0, "SopCast"

    const-string v1, "Audio Recording resume"

    invoke-static {v0, v1}, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/CustomAudioController;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/CustomAudioController;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/CustomAudioController;->mAudioProcessor:Lcom/laifeng/sopcastsdk/audio/AudioProcessor;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/CustomAudioController;->mAudioProcessor:Lcom/laifeng/sopcastsdk/audio/AudioProcessor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/laifeng/sopcastsdk/audio/AudioProcessor;->pauseEncode(Z)V

    .line 129
    :cond_1
    return-void
.end method

.method public setAudioConfiguration(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;)V
    .locals 0
    .param p1, "audioConfiguration"    # Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/camera/livebroadcast/streaming/CustomAudioController;->mAudioConfiguration:Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    .line 33
    return-void
.end method

.method public setAudioEncodeListener(Lcom/laifeng/sopcastsdk/audio/OnAudioEncodeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/laifeng/sopcastsdk/audio/OnAudioEncodeListener;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/camera/livebroadcast/streaming/CustomAudioController;->mListener:Lcom/laifeng/sopcastsdk/audio/OnAudioEncodeListener;

    .line 37
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 57
    const-string v1, "SopCast"

    const-string v2, "Audio Recording start"

    invoke-static {v1, v2}, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/android/camera/livebroadcast/streaming/CustomAudioController;->mAudioConfiguration:Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/streaming/CustomAudioController;->getAudioRecord(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;)Landroid/media/AudioRecord;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/livebroadcast/streaming/CustomAudioController;->mAudioRecord:Landroid/media/AudioRecord;

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/livebroadcast/streaming/CustomAudioController;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    new-instance v1, Lcom/laifeng/sopcastsdk/audio/AudioProcessor;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/streaming/CustomAudioController;->mAudioRecord:Landroid/media/AudioRecord;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/streaming/CustomAudioController;->mAudioConfiguration:Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    invoke-direct {v1, v2, v3}, Lcom/laifeng/sopcastsdk/audio/AudioProcessor;-><init>(Landroid/media/AudioRecord;Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;)V

    iput-object v1, p0, Lcom/android/camera/livebroadcast/streaming/CustomAudioController;->mAudioProcessor:Lcom/laifeng/sopcastsdk/audio/AudioProcessor;

    .line 78
    iget-object v1, p0, Lcom/android/camera/livebroadcast/streaming/CustomAudioController;->mAudioProcessor:Lcom/laifeng/sopcastsdk/audio/AudioProcessor;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/streaming/CustomAudioController;->mListener:Lcom/laifeng/sopcastsdk/audio/OnAudioEncodeListener;

    invoke-virtual {v1, v2}, Lcom/laifeng/sopcastsdk/audio/AudioProcessor;->setAudioHEncodeListener(Lcom/laifeng/sopcastsdk/audio/OnAudioEncodeListener;)V

    .line 79
    iget-object v1, p0, Lcom/android/camera/livebroadcast/streaming/CustomAudioController;->mAudioProcessor:Lcom/laifeng/sopcastsdk/audio/AudioProcessor;

    invoke-virtual {v1}, Lcom/laifeng/sopcastsdk/audio/AudioProcessor;->start()V

    .line 80
    iget-object v1, p0, Lcom/android/camera/livebroadcast/streaming/CustomAudioController;->mAudioProcessor:Lcom/laifeng/sopcastsdk/audio/AudioProcessor;

    iget-boolean v2, p0, Lcom/android/camera/livebroadcast/streaming/CustomAudioController;->mMute:Z

    invoke-virtual {v1, v2}, Lcom/laifeng/sopcastsdk/audio/AudioProcessor;->setMute(Z)V

    .line 81
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 84
    const-string v1, "SopCast"

    const-string v2, "Audio Recording stop"

    invoke-static {v1, v2}, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/android/camera/livebroadcast/streaming/CustomAudioController;->mAudioProcessor:Lcom/laifeng/sopcastsdk/audio/AudioProcessor;

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/android/camera/livebroadcast/streaming/CustomAudioController;->mAudioProcessor:Lcom/laifeng/sopcastsdk/audio/AudioProcessor;

    invoke-virtual {v1}, Lcom/laifeng/sopcastsdk/audio/AudioProcessor;->stopEncode()V

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/android/camera/livebroadcast/streaming/CustomAudioController;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_1

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/livebroadcast/streaming/CustomAudioController;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    .line 91
    iget-object v1, p0, Lcom/android/camera/livebroadcast/streaming/CustomAudioController;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 92
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/livebroadcast/streaming/CustomAudioController;->mAudioRecord:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_1
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
