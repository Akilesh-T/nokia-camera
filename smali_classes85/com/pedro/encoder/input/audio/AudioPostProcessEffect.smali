.class public Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;
.super Ljava/lang/Object;
.source "AudioPostProcessEffect.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private acousticEchoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

.field private automaticGainControl:Landroid/media/audiofx/AutomaticGainControl;

.field private microphoneId:I

.field private noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "microphoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "AudioPostProcessEffect"

    iput-object v0, p0, Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;->TAG:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;->acousticEchoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 18
    iput-object v1, p0, Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;->automaticGainControl:Landroid/media/audiofx/AutomaticGainControl;

    .line 19
    iput-object v1, p0, Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;->noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    .line 22
    iput p1, p0, Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;->microphoneId:I

    .line 23
    return-void
.end method


# virtual methods
.method public enableAutoGainControl()V
    .locals 2

    .prologue
    .line 26
    invoke-static {}, Landroid/media/audiofx/AutomaticGainControl;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;->automaticGainControl:Landroid/media/audiofx/AutomaticGainControl;

    if-nez v0, :cond_0

    .line 27
    iget v0, p0, Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;->microphoneId:I

    invoke-static {v0}, Landroid/media/audiofx/AutomaticGainControl;->create(I)Landroid/media/audiofx/AutomaticGainControl;

    move-result-object v0

    iput-object v0, p0, Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;->automaticGainControl:Landroid/media/audiofx/AutomaticGainControl;

    .line 28
    iget-object v0, p0, Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;->automaticGainControl:Landroid/media/audiofx/AutomaticGainControl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/audiofx/AutomaticGainControl;->setEnabled(Z)I

    .line 29
    const-string v0, "AudioPostProcessEffect"

    const-string v1, "AutoGainControl enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :goto_0
    return-void

    .line 31
    :cond_0
    const-string v0, "AudioPostProcessEffect"

    const-string v1, "This device don\'t support AutoGainControl"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableEchoCanceler()V
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Landroid/media/audiofx/AcousticEchoCanceler;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;->acousticEchoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    if-nez v0, :cond_0

    .line 45
    iget v0, p0, Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;->microphoneId:I

    invoke-static {v0}, Landroid/media/audiofx/AcousticEchoCanceler;->create(I)Landroid/media/audiofx/AcousticEchoCanceler;

    move-result-object v0

    iput-object v0, p0, Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;->acousticEchoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 46
    iget-object v0, p0, Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;->acousticEchoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/audiofx/AcousticEchoCanceler;->setEnabled(Z)I

    .line 47
    const-string v0, "AudioPostProcessEffect"

    const-string v1, "EchoCanceler enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    const-string v0, "AudioPostProcessEffect"

    const-string v1, "This device don\'t support EchoCanceler"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableNoiseSuppressor()V
    .locals 2

    .prologue
    .line 62
    invoke-static {}, Landroid/media/audiofx/NoiseSuppressor;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;->noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    if-nez v0, :cond_0

    .line 63
    iget v0, p0, Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;->microphoneId:I

    invoke-static {v0}, Landroid/media/audiofx/NoiseSuppressor;->create(I)Landroid/media/audiofx/NoiseSuppressor;

    move-result-object v0

    iput-object v0, p0, Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;->noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    .line 64
    iget-object v0, p0, Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;->noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/audiofx/NoiseSuppressor;->setEnabled(Z)I

    .line 65
    const-string v0, "AudioPostProcessEffect"

    const-string v1, "NoiseSuppressor enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    const-string v0, "AudioPostProcessEffect"

    const-string v1, "This device don\'t support NoiseSuppressor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public releaseAutoGainControl()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;->automaticGainControl:Landroid/media/audiofx/AutomaticGainControl;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;->automaticGainControl:Landroid/media/audiofx/AutomaticGainControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiofx/AutomaticGainControl;->setEnabled(Z)I

    .line 38
    iget-object v0, p0, Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;->automaticGainControl:Landroid/media/audiofx/AutomaticGainControl;

    invoke-virtual {v0}, Landroid/media/audiofx/AutomaticGainControl;->release()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;->automaticGainControl:Landroid/media/audiofx/AutomaticGainControl;

    .line 41
    :cond_0
    return-void
.end method

.method public releaseEchoCanceler()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;->acousticEchoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;->acousticEchoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiofx/AcousticEchoCanceler;->setEnabled(Z)I

    .line 56
    iget-object v0, p0, Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;->acousticEchoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v0}, Landroid/media/audiofx/AcousticEchoCanceler;->release()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;->acousticEchoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 59
    :cond_0
    return-void
.end method

.method public releaseNoiseSuppressor()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;->noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;->noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiofx/NoiseSuppressor;->setEnabled(Z)I

    .line 74
    iget-object v0, p0, Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;->noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    invoke-virtual {v0}, Landroid/media/audiofx/NoiseSuppressor;->release()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;->noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    .line 77
    :cond_0
    return-void
.end method
