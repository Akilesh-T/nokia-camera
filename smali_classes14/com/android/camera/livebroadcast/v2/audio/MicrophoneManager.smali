.class public Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;
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

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "MicrophoneManager"

    iput-object v0, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->TAG:Ljava/lang/String;

    .line 24
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->pcmBuffer:[B

    .line 25
    const/16 v0, 0xb

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->pcmBufferMuted:[B

    .line 26
    iput-boolean v1, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->running:Z

    .line 27
    iput-boolean v1, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->created:Z

    .line 30
    const v0, 0xac44

    iput v0, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->sampleRate:I

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->audioFormat:I

    .line 32
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->channel:I

    .line 33
    iput-boolean v1, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->muted:Z

    .line 37
    iput-object p1, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->getMicrophoneData:Lcom/pedro/encoder/input/audio/GetMicrophoneData;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->running:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->running:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;)Lcom/pedro/encoder/audio/DataTaken;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->read()Lcom/pedro/encoder/audio/DataTaken;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;)Lcom/pedro/encoder/input/audio/GetMicrophoneData;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->getMicrophoneData:Lcom/pedro/encoder/input/audio/GetMicrophoneData;

    return-object v0
.end method

.method private getPcmBufferSize()I
    .locals 4

    .prologue
    .line 168
    iget v1, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->sampleRate:I

    iget v2, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->channel:I

    const/4 v3, 0x2

    .line 169
    invoke-static {v1, v2, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    .line 170
    .local v0, "pcmBufSize":I
    return v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->running:Z

    .line 110
    const-string v0, "MicrophoneManager"

    const-string v1, "Microphone started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_0
    return-void

    .line 112
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

    .line 134
    iget-boolean v1, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->muted:Z

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->audioRecord:Landroid/media/AudioRecord;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->pcmBufferMuted:[B

    iget-object v3, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->pcmBufferMuted:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v4, v3}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    .line 139
    .local v0, "size":I
    :goto_0
    if-gtz v0, :cond_1

    .line 140
    const/4 v1, 0x0

    .line 142
    :goto_1
    return-object v1

    .line 137
    .end local v0    # "size":I
    :cond_0
    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->audioRecord:Landroid/media/AudioRecord;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->pcmBuffer:[B

    iget-object v3, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->pcmBuffer:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v4, v3}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    .restart local v0    # "size":I
    goto :goto_0

    .line 142
    :cond_1
    new-instance v1, Lcom/pedro/encoder/audio/DataTaken;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->pcmBuffer:[B

    invoke-direct {v1, v2, v0}, Lcom/pedro/encoder/audio/DataTaken;-><init>([BI)V

    goto :goto_1
.end method


# virtual methods
.method public checkIfMicrophoneIsReady()Z
    .locals 12

    .prologue
    .line 198
    const/4 v6, 0x0

    .line 199
    .local v6, "audio":Landroid/media/AudioRecord;
    const/4 v10, 0x1

    .line 201
    .local v10, "ready":Z
    const v2, 0xac44

    .line 202
    .local v2, "baseSampleRate":I
    const/16 v3, 0x10

    .line 203
    .local v3, "channel":I
    const/4 v4, 0x2

    .line 204
    .local v4, "format":I
    :try_start_0
    invoke-static {v2, v3, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    .line 205
    .local v5, "buffSize":I
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    .end local v6    # "audio":Landroid/media/AudioRecord;
    .local v0, "audio":Landroid/media/AudioRecord;
    :try_start_1
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 207
    new-array v8, v5, [S

    .line 208
    .local v8, "buffer":[S
    const/4 v1, 0x0

    invoke-virtual {v0, v8, v1, v5}, Landroid/media/AudioRecord;->read([SII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    .line 209
    .local v7, "audioStatus":I
    const/4 v1, -0x3

    if-eq v7, v1, :cond_0

    if-nez v7, :cond_1

    .line 210
    :cond_0
    const/4 v10, 0x0

    .line 217
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 221
    .end local v5    # "buffSize":I
    .end local v7    # "audioStatus":I
    .end local v8    # "buffer":[S
    :goto_0
    return v10

    .line 212
    .end local v0    # "audio":Landroid/media/AudioRecord;
    .restart local v6    # "audio":Landroid/media/AudioRecord;
    :catch_0
    move-exception v9

    move-object v0, v6

    .line 213
    .end local v6    # "audio":Landroid/media/AudioRecord;
    .restart local v0    # "audio":Landroid/media/AudioRecord;
    .local v9, "e":Ljava/lang/Exception;
    :goto_1
    const/4 v10, 0x0

    .line 217
    :try_start_3
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 219
    :catch_1
    move-exception v1

    goto :goto_0

    .line 216
    .end local v0    # "audio":Landroid/media/AudioRecord;
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v6    # "audio":Landroid/media/AudioRecord;
    :catchall_0
    move-exception v1

    move-object v0, v6

    .line 217
    .end local v6    # "audio":Landroid/media/AudioRecord;
    .restart local v0    # "audio":Landroid/media/AudioRecord;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 219
    :goto_3
    throw v1

    .restart local v5    # "buffSize":I
    .restart local v7    # "audioStatus":I
    .restart local v8    # "buffer":[S
    :catch_2
    move-exception v1

    goto :goto_0

    .end local v5    # "buffSize":I
    .end local v7    # "audioStatus":I
    .end local v8    # "buffer":[S
    :catch_3
    move-exception v11

    goto :goto_3

    .line 216
    .restart local v5    # "buffSize":I
    :catchall_1
    move-exception v1

    goto :goto_2

    .line 212
    :catch_4
    move-exception v9

    goto :goto_1
.end method

.method public createMicrophone()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 44
    iget v1, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->sampleRate:I

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->createMicrophone(IZZZLcom/android/camera/OZO/OZOSettings;)V

    .line 45
    const-string v0, "MicrophoneManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Microphone created, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->sampleRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "hz, Stereo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method

.method public createMicrophone(IZZZLcom/android/camera/OZO/OZOSettings;)V
    .locals 7
    .param p1, "sampleRate"    # I
    .param p2, "isStereo"    # Z
    .param p3, "echoCanceler"    # Z
    .param p4, "noiseSuppressor"    # Z
    .param p5, "ozoSettings"    # Lcom/android/camera/OZO/OZOSettings;

    .prologue
    .line 53
    iput p1, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->sampleRate:I

    .line 54
    if-nez p2, :cond_0

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->channel:I

    .line 55
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->getPcmBufferSize()I

    move-result v5

    .line 57
    .local v5, "size":I
    if-eqz p5, :cond_5

    .line 59
    invoke-virtual {p5}, Lcom/android/camera/OZO/OZOSettings;->getChannelCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 60
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->channel:I

    .line 65
    :cond_1
    :goto_0
    new-instance v0, Landroid/media/AudioRecord;

    const/16 v1, 0x66

    sget v2, Lcom/android/camera/OZO/OZOConst$AudioParam;->SAMPLE_RATE:I

    iget v3, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->channel:I

    iget v4, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->audioFormat:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->audioRecord:Landroid/media/AudioRecord;

    .line 73
    :goto_1
    new-array v0, v5, [B

    iput-object v0, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->pcmBuffer:[B

    .line 74
    new-instance v0, Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->audioPostProcessEffect:Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;

    .line 75
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->audioPostProcessEffect:Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;->enableEchoCanceler()V

    .line 76
    :cond_2
    if-eqz p4, :cond_3

    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->audioPostProcessEffect:Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;->enableNoiseSuppressor()V

    .line 77
    :cond_3
    if-eqz p2, :cond_6

    const-string v6, "Stereo"

    .line 78
    .local v6, "chl":Ljava/lang/String;
    :goto_2
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

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->created:Z

    .line 80
    return-void

    .line 61
    .end local v6    # "chl":Ljava/lang/String;
    :cond_4
    invoke-virtual {p5}, Lcom/android/camera/OZO/OZOSettings;->getChannelCount()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 62
    const/16 v0, 0x2c

    iput v0, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->channel:I

    goto :goto_0

    .line 68
    :cond_5
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x0

    iget v3, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->channel:I

    iget v4, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->audioFormat:I

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->audioRecord:Landroid/media/AudioRecord;

    goto :goto_1

    .line 77
    :cond_6
    const-string v6, "Mono"

    goto :goto_2
.end method

.method public getAudioFormat()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->audioFormat:I

    return v0
.end method

.method public getChannel()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->channel:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->sampleRate:I

    return v0
.end method

.method public isCreated()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->created:Z

    return v0
.end method

.method public isMuted()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->muted:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->running:Z

    return v0
.end method

.method public mute()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->muted:Z

    .line 119
    return-void
.end method

.method public setSampleRate(I)V
    .locals 0
    .param p1, "sampleRate"    # I

    .prologue
    .line 178
    iput p1, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->sampleRate:I

    .line 179
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->init()V

    .line 88
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager$1;

    invoke-direct {v1, p0}, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager$1;-><init>(Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 100
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 104
    :goto_0
    return-void

    .line 102
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

    .line 149
    iput-boolean v0, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->running:Z

    .line 150
    iput-boolean v0, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->created:Z

    .line 151
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0, v1}, Landroid/media/AudioRecord;->setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;)V

    .line 153
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 154
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 155
    iput-object v1, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->audioRecord:Landroid/media/AudioRecord;

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->audioPostProcessEffect:Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->audioPostProcessEffect:Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;->releaseEchoCanceler()V

    .line 159
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->audioPostProcessEffect:Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/audio/AudioPostProcessEffect;->releaseNoiseSuppressor()V

    .line 161
    :cond_1
    const-string v0, "MicrophoneManager"

    const-string v1, "Microphone stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method

.method public unMute()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->muted:Z

    .line 123
    return-void
.end method
