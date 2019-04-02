.class public Lcom/laifeng/sopcastsdk/audio/AudioProcessor;
.super Ljava/lang/Thread;
.source "AudioProcessor.java"


# instance fields
.field private mAudioEncoder:Lcom/laifeng/sopcastsdk/audio/AudioEncoder;

.field private mAudioRecord:Landroid/media/AudioRecord;

.field private volatile mMute:Z

.field private volatile mPauseFlag:Z

.field private mRecordBuffer:[B

.field private mRecordBufferSize:I

.field private volatile mStopFlag:Z


# direct methods
.method public constructor <init>(Landroid/media/AudioRecord;Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;)V
    .locals 1
    .param p1, "audioRecord"    # Landroid/media/AudioRecord;
    .param p2, "audioConfiguration"    # Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 31
    invoke-static {p2}, Lcom/laifeng/sopcastsdk/audio/AudioUtils;->getRecordBufferSize(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/laifeng/sopcastsdk/audio/AudioProcessor;->mRecordBufferSize:I

    .line 32
    iget v0, p0, Lcom/laifeng/sopcastsdk/audio/AudioProcessor;->mRecordBufferSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/audio/AudioProcessor;->mRecordBuffer:[B

    .line 33
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/audio/AudioProcessor;->mAudioRecord:Landroid/media/AudioRecord;

    .line 34
    new-instance v0, Lcom/laifeng/sopcastsdk/audio/AudioEncoder;

    invoke-direct {v0, p2}, Lcom/laifeng/sopcastsdk/audio/AudioEncoder;-><init>(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;)V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/audio/AudioProcessor;->mAudioEncoder:Lcom/laifeng/sopcastsdk/audio/AudioEncoder;

    .line 35
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/audio/AudioProcessor;->mAudioEncoder:Lcom/laifeng/sopcastsdk/audio/AudioEncoder;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/audio/AudioEncoder;->prepareEncoder()V

    .line 36
    return-void
.end method


# virtual methods
.method public pauseEncode(Z)V
    .locals 0
    .param p1, "pause"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/laifeng/sopcastsdk/audio/AudioProcessor;->mPauseFlag:Z

    .line 52
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    .line 59
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/laifeng/sopcastsdk/audio/AudioProcessor;->mStopFlag:Z

    if-nez v3, :cond_3

    .line 60
    :goto_1
    iget-boolean v3, p0, Lcom/laifeng/sopcastsdk/audio/AudioProcessor;->mPauseFlag:Z

    if-eqz v3, :cond_1

    .line 62
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 67
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    iget-object v3, p0, Lcom/laifeng/sopcastsdk/audio/AudioProcessor;->mAudioRecord:Landroid/media/AudioRecord;

    iget-object v4, p0, Lcom/laifeng/sopcastsdk/audio/AudioProcessor;->mRecordBuffer:[B

    const/4 v5, 0x0

    iget v6, p0, Lcom/laifeng/sopcastsdk/audio/AudioProcessor;->mRecordBufferSize:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/AudioRecord;->read([BII)I

    move-result v2

    .line 68
    .local v2, "readLen":I
    if-lez v2, :cond_0

    .line 69
    iget-boolean v3, p0, Lcom/laifeng/sopcastsdk/audio/AudioProcessor;->mMute:Z

    if-eqz v3, :cond_2

    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, "clearM":B
    iget-object v3, p0, Lcom/laifeng/sopcastsdk/audio/AudioProcessor;->mRecordBuffer:[B

    invoke-static {v3, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 73
    .end local v0    # "clearM":B
    :cond_2
    iget-object v3, p0, Lcom/laifeng/sopcastsdk/audio/AudioProcessor;->mAudioEncoder:Lcom/laifeng/sopcastsdk/audio/AudioEncoder;

    if-eqz v3, :cond_0

    .line 74
    iget-object v3, p0, Lcom/laifeng/sopcastsdk/audio/AudioProcessor;->mAudioEncoder:Lcom/laifeng/sopcastsdk/audio/AudioEncoder;

    iget-object v4, p0, Lcom/laifeng/sopcastsdk/audio/AudioProcessor;->mRecordBuffer:[B

    invoke-virtual {v3, v4}, Lcom/laifeng/sopcastsdk/audio/AudioEncoder;->offerEncoder([B)V

    goto :goto_0

    .line 78
    .end local v2    # "readLen":I
    :cond_3
    return-void
.end method

.method public setAudioHEncodeListener(Lcom/laifeng/sopcastsdk/audio/OnAudioEncodeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/laifeng/sopcastsdk/audio/OnAudioEncodeListener;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/audio/AudioProcessor;->mAudioEncoder:Lcom/laifeng/sopcastsdk/audio/AudioEncoder;

    invoke-virtual {v0, p1}, Lcom/laifeng/sopcastsdk/audio/AudioEncoder;->setOnAudioEncodeListener(Lcom/laifeng/sopcastsdk/audio/OnAudioEncodeListener;)V

    .line 40
    return-void
.end method

.method public setMute(Z)V
    .locals 0
    .param p1, "mute"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/laifeng/sopcastsdk/audio/AudioProcessor;->mMute:Z

    .line 56
    return-void
.end method

.method public stopEncode()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/laifeng/sopcastsdk/audio/AudioProcessor;->mStopFlag:Z

    .line 44
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/audio/AudioProcessor;->mAudioEncoder:Lcom/laifeng/sopcastsdk/audio/AudioEncoder;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/audio/AudioProcessor;->mAudioEncoder:Lcom/laifeng/sopcastsdk/audio/AudioEncoder;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/audio/AudioEncoder;->stop()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/audio/AudioProcessor;->mAudioEncoder:Lcom/laifeng/sopcastsdk/audio/AudioEncoder;

    .line 48
    :cond_0
    return-void
.end method
