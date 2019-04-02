.class public Lcom/laifeng/sopcastsdk/mediacodec/AudioMediaCodec;
.super Ljava/lang/Object;
.source "AudioMediaCodec.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAudioMediaCodec(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;)Landroid/media/MediaCodec;
    .locals 7
    .param p0, "configuration"    # Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;

    .prologue
    .line 26
    iget-object v4, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->mime:Ljava/lang/String;

    iget v5, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->frequency:I

    iget v6, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->channelCount:I

    invoke-static {v4, v5, v6}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    .line 27
    .local v1, "format":Landroid/media/MediaFormat;
    iget-object v4, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->mime:Ljava/lang/String;

    const-string v5, "audio/mp4a-latm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 28
    const-string v4, "aac-profile"

    iget v5, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->aacProfile:I

    invoke-virtual {v1, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 30
    :cond_0
    const-string v4, "bitrate"

    iget v5, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->maxBps:I

    mul-int/lit16 v5, v5, 0x400

    invoke-virtual {v1, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 31
    const-string v4, "sample-rate"

    iget v5, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->frequency:I

    invoke-virtual {v1, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 32
    invoke-static {p0}, Lcom/laifeng/sopcastsdk/audio/AudioUtils;->getRecordBufferSize(Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;)I

    move-result v2

    .line 33
    .local v2, "maxInputSize":I
    const-string v4, "max-input-size"

    invoke-virtual {v1, v4, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 34
    const-string v4, "channel-count"

    iget v5, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->channelCount:I

    invoke-virtual {v1, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 36
    const/4 v3, 0x0

    .line 38
    .local v3, "mediaCodec":Landroid/media/MediaCodec;
    :try_start_0
    iget-object v4, p0, Lcom/laifeng/sopcastsdk/configuration/AudioConfiguration;->mime:Ljava/lang/String;

    invoke-static {v4}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    .line 39
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :cond_1
    :goto_0
    return-object v3

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    if-eqz v3, :cond_1

    .line 43
    invoke-virtual {v3}, Landroid/media/MediaCodec;->stop()V

    .line 44
    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    .line 45
    const/4 v3, 0x0

    goto :goto_0
.end method
