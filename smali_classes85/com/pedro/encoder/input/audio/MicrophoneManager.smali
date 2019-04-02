.class public Lcom/pedro/encoder/input/audio/MicrophoneManager;
.super Ljava/lang/Object;
.source "MicrophoneManager.java"


# static fields
.field public static final BUFFER_SIZE:I = 0x1000


# instance fields
.field private final TAG:Ljava/lang/String;

.field private audioFormat:I

.field private audioPostProcessEffect:Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;

.field private audioRecord:Landroid/media/AudioRecord;

.field private channel:I

.field private created:Z

.field private getMicrophoneData:Lcom/pedro/encoder/input/audio/GetMicrophoneData;

.field private muted:Z

.field private pcmBuffer:[B

.field private pcmBufferMuted:[B

.field private running:Z

.field private sampleRate:I


# direct methods
.method public constructor <init>(Lcom/pedro/encoder/input/audio/GetMicrophoneData;)V
    .locals 2
    .param p1, "getMicrophoneData"    # Lcom/pedro/encoder/input/audio/GetMicrophoneData;

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "MicrophoneManager"

    iput-object v0, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->TAG:Ljava/lang/String;

    .line 19
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->pcmBuffer:[B

    .line 20
    const/16 v0, 0xb

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->pcmBufferMuted:[B

    .line 21
    iput-boolean v1, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->running:Z

    .line 22
    iput-boolean v1, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->created:Z

    .line 25
    const v0, 0xac44

    iput v0, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->sampleRate:I

    .line 26
    const/4 v0, 0x2

    iput v0, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->audioFormat:I

    .line 27
    const/16 v0, 0xc

    iput v0, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->channel:I

    .line 28
    iput-boolean v1, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->muted:Z

    .line 32
    iput-object p1, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->getMicrophoneData:Lcom/pedro/encoder/input/audio/GetMicrophoneData;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/pedro/encoder/input/audio/MicrophoneManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/pedro/encoder/input/audio/MicrophoneManager;

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->running:Z

    return v0
.end method

.method static synthetic access$002(Lcom/pedro/encoder/input/audio/MicrophoneManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/pedro/encoder/input/audio/MicrophoneManager;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->running:Z

    return p1
.end method

.method static synthetic access$100(Lcom/pedro/encoder/input/audio/MicrophoneManager;)Lcom/pedro/encoder/audio/DataTaken;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/encoder/input/audio/MicrophoneManager;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/pedro/encoder/input/audio/MicrophoneManager;->read()Lcom/pedro/encoder/audio/DataTaken;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/pedro/encoder/input/audio/MicrophoneManager;)Lcom/pedro/encoder/input/audio/GetMicrophoneData;
    .locals 1
    .param p0, "x0"    # Lcom/pedro/encoder/input/audio/MicrophoneManager;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->getMicrophoneData:Lcom/pedro/encoder/input/audio/GetMicrophoneData;

    return-object v0
.end method

.method private getPcmBufferSize()I
    .locals 4

    .prologue
    .line 147
    iget v1, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->sampleRate:I

    iget v2, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->channel:I

    const/4 v3, 0x2

    .line 148
    invoke-static {v1, v2, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v1

    add-int/lit16 v0, v1, 0x1fff

    .line 149
    .local v0, "pcmBufSize":I
    rem-int/lit16 v1, v0, 0x2000

    sub-int v1, v0, v1

    return v1
.end method

.method private init()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->running:Z

    .line 89
    const-string v0, "MicrophoneManager"

    const-string v1, "Microphone started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_0
    return-void

    .line 91
    :cond_0
    const-string v0, "MicrophoneManager"

    const-string v1, "Error starting, microphone was stopped or not created, use createMicrophone() before start()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private read()Lcom/pedro/encoder/audio/DataTaken;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 113
    iget-boolean v1, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->muted:Z

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->audioRecord:Landroid/media/AudioRecord;

    iget-object v2, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->pcmBufferMuted:[B

    iget-object v3, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->pcmBufferMuted:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v4, v3}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    .line 118
    .local v0, "size":I
    :goto_0
    if-gtz v0, :cond_1

    .line 119
    const/4 v1, 0x0

    .line 121
    :goto_1
    return-object v1

    .line 116
    .end local v0    # "size":I
    :cond_0
    iget-object v1, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->audioRecord:Landroid/media/AudioRecord;

    iget-object v2, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->pcmBuffer:[B

    iget-object v3, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->pcmBuffer:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v4, v3}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    .restart local v0    # "size":I
    goto :goto_0

    .line 121
    :cond_1
    new-instance v1, Lcom/pedro/encoder/audio/DataTaken;

    iget-object v2, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->pcmBuffer:[B

    invoke-direct {v1, v2, v0}, Lcom/pedro/encoder/audio/DataTaken;-><init>([BI)V

    goto :goto_1
.end method


# virtual methods
.method public createMicrophone()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    iget v0, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->sampleRate:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/pedro/encoder/input/audio/MicrophoneManager;->createMicrophone(IZZZ)V

    .line 40
    const-string v0, "MicrophoneManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Microphone created, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->sampleRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "hz, Stereo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method

.method public createMicrophone(IZZZ)V
    .locals 7
    .param p1, "sampleRate"    # I
    .param p2, "isStereo"    # Z
    .param p3, "echoCanceler"    # Z
    .param p4, "noiseSuppressor"    # Z

    .prologue
    .line 48
    iput p1, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->sampleRate:I

    .line 49
    if-nez p2, :cond_0

    const/16 v0, 0x10

    iput v0, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->channel:I

    .line 50
    :cond_0
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x0

    iget v3, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->channel:I

    iget v4, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->audioFormat:I

    .line 52
    invoke-direct {p0}, Lcom/pedro/encoder/input/audio/MicrophoneManager;->getPcmBufferSize()I

    move-result v2

    mul-int/lit8 v5, v2, 0x4

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->audioRecord:Landroid/media/AudioRecord;

    .line 53
    new-instance v0, Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;

    iget-object v1, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;-><init>(I)V

    iput-object v0, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->audioPostProcessEffect:Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;

    .line 54
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->audioPostProcessEffect:Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;->enableEchoCanceler()V

    .line 55
    :cond_1
    if-eqz p4, :cond_2

    iget-object v0, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->audioPostProcessEffect:Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;->enableNoiseSuppressor()V

    .line 56
    :cond_2
    if-eqz p2, :cond_3

    const-string v6, "Stereo"

    .line 57
    .local v6, "chl":Ljava/lang/String;
    :goto_0
    const-string v0, "MicrophoneManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Microphone created, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "hz, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->created:Z

    .line 59
    return-void

    .line 56
    .end local v6    # "chl":Ljava/lang/String;
    :cond_3
    const-string v6, "Mono"

    goto :goto_0
.end method

.method public getAudioFormat()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->audioFormat:I

    return v0
.end method

.method public getChannel()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->channel:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->sampleRate:I

    return v0
.end method

.method public isCreated()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->created:Z

    return v0
.end method

.method public isMuted()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->muted:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->running:Z

    return v0
.end method

.method public mute()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->muted:Z

    .line 98
    return-void
.end method

.method public setSampleRate(I)V
    .locals 0
    .param p1, "sampleRate"    # I

    .prologue
    .line 157
    iput p1, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->sampleRate:I

    .line 158
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/pedro/encoder/input/audio/MicrophoneManager;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/pedro/encoder/input/audio/MicrophoneManager;->init()V

    .line 67
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/pedro/encoder/input/audio/MicrophoneManager$1;

    invoke-direct {v1, p0}, Lcom/pedro/encoder/input/audio/MicrophoneManager$1;-><init>(Lcom/pedro/encoder/input/audio/MicrophoneManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 79
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    const-string v0, "MicrophoneManager"

    const-string v1, "Microphone no created, MicrophoneManager not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->running:Z

    .line 129
    iput-boolean v0, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->created:Z

    .line 130
    iget-object v0, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0, v1}, Landroid/media/AudioRecord;->setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;)V

    .line 132
    iget-object v0, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 133
    iget-object v0, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 134
    iput-object v1, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->audioRecord:Landroid/media/AudioRecord;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->audioPostProcessEffect:Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->audioPostProcessEffect:Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;->releaseEchoCanceler()V

    .line 138
    iget-object v0, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->audioPostProcessEffect:Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;->releaseNoiseSuppressor()V

    .line 140
    :cond_1
    const-string v0, "MicrophoneManager"

    const-string v1, "Microphone stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void
.end method

.method public unMute()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pedro/encoder/input/audio/MicrophoneManager;->muted:Z

    .line 102
    return-void
.end method
