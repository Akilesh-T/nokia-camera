.class public Lcom/laifeng/sopcastsdk/audio/AudioUtils;
.super Ljava/lang/Object;
.source "AudioUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkMicSupport(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;)Z
    .locals 6
    .param p0, "audioConfiguration"    # Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    .prologue
    const/4 v5, 0x0

    .line 22
    invoke-static {p0}, Lcom/laifeng/sopcastsdk/audio/AudioUtils;->getRecordBufferSize(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;)I

    move-result v4

    .line 23
    .local v4, "recordBufferSize":I
    new-array v2, v4, [B

    .line 24
    .local v2, "mRecordBuffer":[B
    invoke-static {p0}, Lcom/laifeng/sopcastsdk/audio/AudioUtils;->getAudioRecord(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;)Landroid/media/AudioRecord;

    move-result-object v0

    .line 26
    .local v0, "audioRecord":Landroid/media/AudioRecord;
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    invoke-virtual {v0, v2, v5, v4}, Landroid/media/AudioRecord;->read([BII)I

    move-result v3

    .line 31
    .local v3, "readLen":I
    if-ltz v3, :cond_0

    const/4 v5, 0x1

    .line 33
    .local v5, "result":Z
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 37
    :goto_1
    return v5

    .line 27
    .end local v3    # "readLen":I
    .end local v5    # "result":Z
    :catch_0
    move-exception v1

    .line 28
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 34
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "readLen":I
    .restart local v5    # "result":Z
    :catch_1
    move-exception v1

    .line 35
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getAudioRecord(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;)Landroid/media/AudioRecord;
    .locals 7
    .param p0, "audioConfiguration"    # Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 53
    iget v2, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->frequency:I

    .line 54
    .local v2, "frequency":I
    iget v4, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->encoding:I

    .line 55
    .local v4, "audioEncoding":I
    const/4 v3, 0x2

    .line 56
    .local v3, "channelConfiguration":I
    iget v5, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->channelCount:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 57
    const/4 v3, 0x3

    .line 59
    :cond_0
    const/4 v1, 0x1

    .line 60
    .local v1, "audioSource":I
    iget-boolean v5, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->aec:Z

    if-eqz v5, :cond_1

    .line 61
    const/4 v1, 0x7

    .line 63
    :cond_1
    new-instance v0, Landroid/media/AudioRecord;

    .line 64
    invoke-static {p0}, Lcom/laifeng/sopcastsdk/audio/AudioUtils;->getRecordBufferSize(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 65
    .local v0, "audioRecord":Landroid/media/AudioRecord;
    return-object v0
.end method

.method public static getRecordBufferSize(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;)I
    .locals 6
    .param p0, "audioConfiguration"    # Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    .prologue
    .line 41
    iget v2, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->frequency:I

    .line 42
    .local v2, "frequency":I
    iget v0, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->encoding:I

    .line 43
    .local v0, "audioEncoding":I
    const/4 v1, 0x2

    .line 44
    .local v1, "channelConfiguration":I
    iget v4, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->channelCount:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 45
    const/4 v1, 0x3

    .line 47
    :cond_0
    invoke-static {v2, v1, v0}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v3

    .line 48
    .local v3, "size":I
    return v3
.end method
