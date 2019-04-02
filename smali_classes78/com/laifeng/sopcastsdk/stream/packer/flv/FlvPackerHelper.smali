.class public Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;
.super Ljava/lang/Object;
.source "FlvPackerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper$FlvMetaValueType;,
        Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper$FlvAvcNaluType;,
        Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper$FlvMessageType;,
        Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper$FlvAudioSampleType;,
        Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper$FlvAudioSampleSize;,
        Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper$FlvAudioSampleRate;,
        Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper$FlvAacProfile;,
        Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper$FlvAacObjectType;,
        Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper$FlvAudio;,
        Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper$FlvVideoCodecID;,
        Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper$FlvTag;,
        Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper$FlvAudioAACPacketType;,
        Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper$FlvVideoAVCPacketType;,
        Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper$FlvVideoFrameType;
    }
.end annotation


# static fields
.field public static final AUDIO_HEADER_SIZE:I = 0x2

.field public static final AUDIO_SPECIFIC_CONFIG_SIZE:I = 0x2

.field public static final FLV_HEAD_SIZE:I = 0x9

.field public static final FLV_TAG_HEADER_SIZE:I = 0xb

.field public static final PRE_SIZE:I = 0x4

.field public static final VIDEO_HEADER_SIZE:I = 0x5

.field public static final VIDEO_SPECIFIC_CONFIG_EXTEND_SIZE:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAudioSimpleRateIndex(I)I
    .locals 1
    .param p0, "audioSampleRate"    # I

    .prologue
    .line 262
    sparse-switch p0, :sswitch_data_0

    .line 303
    const/16 v0, 0xf

    .line 305
    .local v0, "simpleRateIndex":I
    :goto_0
    return v0

    .line 264
    .end local v0    # "simpleRateIndex":I
    :sswitch_0
    const/4 v0, 0x0

    .line 265
    .restart local v0    # "simpleRateIndex":I
    goto :goto_0

    .line 267
    .end local v0    # "simpleRateIndex":I
    :sswitch_1
    const/4 v0, 0x1

    .line 268
    .restart local v0    # "simpleRateIndex":I
    goto :goto_0

    .line 270
    .end local v0    # "simpleRateIndex":I
    :sswitch_2
    const/4 v0, 0x2

    .line 271
    .restart local v0    # "simpleRateIndex":I
    goto :goto_0

    .line 273
    .end local v0    # "simpleRateIndex":I
    :sswitch_3
    const/4 v0, 0x3

    .line 274
    .restart local v0    # "simpleRateIndex":I
    goto :goto_0

    .line 276
    .end local v0    # "simpleRateIndex":I
    :sswitch_4
    const/4 v0, 0x4

    .line 277
    .restart local v0    # "simpleRateIndex":I
    goto :goto_0

    .line 279
    .end local v0    # "simpleRateIndex":I
    :sswitch_5
    const/4 v0, 0x5

    .line 280
    .restart local v0    # "simpleRateIndex":I
    goto :goto_0

    .line 282
    .end local v0    # "simpleRateIndex":I
    :sswitch_6
    const/4 v0, 0x6

    .line 283
    .restart local v0    # "simpleRateIndex":I
    goto :goto_0

    .line 285
    .end local v0    # "simpleRateIndex":I
    :sswitch_7
    const/4 v0, 0x7

    .line 286
    .restart local v0    # "simpleRateIndex":I
    goto :goto_0

    .line 288
    .end local v0    # "simpleRateIndex":I
    :sswitch_8
    const/16 v0, 0x8

    .line 289
    .restart local v0    # "simpleRateIndex":I
    goto :goto_0

    .line 291
    .end local v0    # "simpleRateIndex":I
    :sswitch_9
    const/16 v0, 0x9

    .line 292
    .restart local v0    # "simpleRateIndex":I
    goto :goto_0

    .line 294
    .end local v0    # "simpleRateIndex":I
    :sswitch_a
    const/16 v0, 0xa

    .line 295
    .restart local v0    # "simpleRateIndex":I
    goto :goto_0

    .line 297
    .end local v0    # "simpleRateIndex":I
    :sswitch_b
    const/16 v0, 0xb

    .line 298
    .restart local v0    # "simpleRateIndex":I
    goto :goto_0

    .line 300
    .end local v0    # "simpleRateIndex":I
    :sswitch_c
    const/16 v0, 0xc

    .line 301
    .restart local v0    # "simpleRateIndex":I
    goto :goto_0

    .line 262
    nop

    :sswitch_data_0
    .sparse-switch
        0x1cb6 -> :sswitch_c
        0x1f40 -> :sswitch_b
        0x2b11 -> :sswitch_a
        0x2ee0 -> :sswitch_9
        0x3e80 -> :sswitch_8
        0x5622 -> :sswitch_7
        0x5dc0 -> :sswitch_6
        0x7d00 -> :sswitch_5
        0xac44 -> :sswitch_4
        0xbb80 -> :sswitch_3
        0xfa00 -> :sswitch_2
        0x15888 -> :sswitch_1
        0x17700 -> :sswitch_0
    .end sparse-switch
.end method

.method public static writeAudioHeader(Ljava/nio/ByteBuffer;ZI)V
    .locals 10
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "isFirst"    # Z
    .param p2, "audioSize"    # I

    .prologue
    const/4 v9, 0x1

    .line 230
    const/16 v2, 0xa

    .line 233
    .local v2, "soundFormat":I
    const/4 v3, 0x3

    .line 235
    .local v3, "soundRateIndex":I
    const/4 v4, 0x1

    .line 236
    .local v4, "soundSize":I
    const/16 v6, 0x8

    if-ne p2, v6, :cond_0

    .line 237
    const/4 v4, 0x0

    .line 241
    :cond_0
    const/4 v5, 0x1

    .line 243
    .local v5, "soundType":I
    const/4 v0, 0x1

    .line 244
    .local v0, "AACPacketType":I
    if-eqz p1, :cond_1

    .line 245
    const/4 v0, 0x0

    .line 248
    :cond_1
    const/4 v6, 0x2

    new-array v1, v6, [B

    .line 249
    .local v1, "header":[B
    const/4 v6, 0x0

    const/16 v7, 0xa

    int-to-byte v7, v7

    shl-int/lit8 v7, v7, 0x4

    const/4 v8, 0x3

    int-to-byte v8, v8

    shl-int/lit8 v8, v8, 0x2

    or-int/2addr v7, v8

    and-int/lit8 v8, v4, 0x1

    int-to-byte v8, v8

    shl-int/lit8 v8, v8, 0x1

    or-int/2addr v7, v8

    int-to-byte v8, v9

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    .line 250
    int-to-byte v6, v0

    aput-byte v6, v1, v9

    .line 251
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 252
    return-void
.end method

.method public static writeAudioTag(Ljava/nio/ByteBuffer;[BZI)V
    .locals 0
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "audioInfo"    # [B
    .param p2, "isFirst"    # Z
    .param p3, "audioSize"    # I

    .prologue
    .line 214
    invoke-static {p0, p2, p3}, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;->writeAudioHeader(Ljava/nio/ByteBuffer;ZI)V

    .line 217
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 218
    return-void
.end method

.method public static writeFirstAudioTag(Ljava/nio/ByteBuffer;IZI)V
    .locals 6
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "audioRate"    # I
    .param p2, "isStereo"    # Z
    .param p3, "audioSize"    # I

    .prologue
    const/4 v5, 0x1

    .line 200
    const/4 v3, 0x2

    new-array v0, v3, [B

    .line 201
    .local v0, "audioInfo":[B
    invoke-static {p1}, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;->getAudioSimpleRateIndex(I)I

    move-result v2

    .line 202
    .local v2, "soundRateIndex":I
    const/4 v1, 0x1

    .line 203
    .local v1, "channelCount":I
    if-eqz p2, :cond_0

    .line 204
    const/4 v1, 0x2

    .line 206
    :cond_0
    const/4 v3, 0x0

    shr-int/lit8 v4, v2, 0x1

    and-int/lit8 v4, v4, 0x7

    or-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 207
    and-int/lit8 v3, v2, 0x1

    shl-int/lit8 v3, v3, 0x7

    and-int/lit8 v4, v1, 0xf

    shl-int/lit8 v4, v4, 0x3

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    .line 208
    invoke-static {p0, v0, v5, p3}, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;->writeAudioTag(Ljava/nio/ByteBuffer;[BZI)V

    .line 209
    return-void
.end method

.method public static writeFirstVideoTag(Ljava/nio/ByteBuffer;[B[B)V
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "sps"    # [B
    .param p2, "pps"    # [B

    .prologue
    const/4 v2, 0x1

    .line 137
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;->writeVideoHeader(Ljava/nio/ByteBuffer;III)V

    .line 139
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 140
    aget-byte v0, p1, v2

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 141
    const/4 v0, 0x2

    aget-byte v0, p1, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 142
    const/4 v0, 0x3

    aget-byte v0, p1, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 143
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 145
    const/16 v0, -0x1f

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 146
    array-length v0, p1

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 147
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 149
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 150
    array-length v0, p2

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 151
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 152
    return-void
.end method

.method public static writeFlvHeader(Ljava/nio/ByteBuffer;ZZ)V
    .locals 8
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "hasVideo"    # Z
    .param p2, "hasAudio"    # Z

    .prologue
    const/4 v6, 0x4

    const/4 v0, 0x0

    .line 45
    const/4 v7, 0x3

    new-array v3, v7, [B

    fill-array-data v3, :array_0

    .line 46
    .local v3, "signature":[B
    const/4 v4, 0x1

    .line 47
    .local v4, "version":B
    if-eqz p1, :cond_1

    const/4 v5, 0x1

    .line 48
    .local v5, "videoFlag":B
    :goto_0
    if-eqz p2, :cond_0

    move v0, v6

    .line 49
    .local v0, "audioFlag":B
    :cond_0
    or-int v7, v5, v0

    int-to-byte v1, v7

    .line 50
    .local v1, "flags":B
    new-array v2, v6, [B

    fill-array-data v2, :array_1

    .line 52
    .local v2, "offset":[B
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 53
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 54
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 55
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 56
    return-void

    .end local v0    # "audioFlag":B
    .end local v1    # "flags":B
    .end local v2    # "offset":[B
    .end local v5    # "videoFlag":B
    :cond_1
    move v5, v0

    .line 47
    goto :goto_0

    .line 45
    :array_0
    .array-data 1
        0x46t
        0x4ct
        0x56t
    .end array-data

    .line 50
    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x9t
    .end array-data
.end method

.method public static writeFlvMetaData(IIIIIZ)[B
    .locals 7
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "fps"    # I
    .param p3, "audioRate"    # I
    .param p4, "audioSize"    # I
    .param p5, "isStereo"    # Z

    .prologue
    const/4 v6, 0x0

    .line 95
    new-instance v2, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;

    const-string v4, "onMetaData"

    invoke-direct {v2, v4, v6}, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;-><init>(Ljava/lang/String;Z)V

    .line 96
    .local v2, "metaDataHeader":Lcom/laifeng/sopcastsdk/stream/amf/AmfString;
    new-instance v1, Lcom/laifeng/sopcastsdk/stream/amf/AmfMap;

    invoke-direct {v1}, Lcom/laifeng/sopcastsdk/stream/amf/AmfMap;-><init>()V

    .line 97
    .local v1, "amfMap":Lcom/laifeng/sopcastsdk/stream/amf/AmfMap;
    const-string v4, "width"

    invoke-virtual {v1, v4, p0}, Lcom/laifeng/sopcastsdk/stream/amf/AmfMap;->setProperty(Ljava/lang/String;I)V

    .line 98
    const-string v4, "height"

    invoke-virtual {v1, v4, p1}, Lcom/laifeng/sopcastsdk/stream/amf/AmfMap;->setProperty(Ljava/lang/String;I)V

    .line 99
    const-string v4, "framerate"

    invoke-virtual {v1, v4, p2}, Lcom/laifeng/sopcastsdk/stream/amf/AmfMap;->setProperty(Ljava/lang/String;I)V

    .line 100
    const-string v4, "videocodecid"

    const/4 v5, 0x7

    invoke-virtual {v1, v4, v5}, Lcom/laifeng/sopcastsdk/stream/amf/AmfMap;->setProperty(Ljava/lang/String;I)V

    .line 101
    const-string v4, "audiosamplerate"

    invoke-virtual {v1, v4, p3}, Lcom/laifeng/sopcastsdk/stream/amf/AmfMap;->setProperty(Ljava/lang/String;I)V

    .line 102
    const-string v4, "audiosamplesize"

    invoke-virtual {v1, v4, p4}, Lcom/laifeng/sopcastsdk/stream/amf/AmfMap;->setProperty(Ljava/lang/String;I)V

    .line 103
    if-eqz p5, :cond_0

    .line 104
    const-string v4, "stereo"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lcom/laifeng/sopcastsdk/stream/amf/AmfMap;->setProperty(Ljava/lang/String;Z)V

    .line 108
    :goto_0
    const-string v4, "audiocodecid"

    const/16 v5, 0xa

    invoke-virtual {v1, v4, v5}, Lcom/laifeng/sopcastsdk/stream/amf/AmfMap;->setProperty(Ljava/lang/String;I)V

    .line 110
    invoke-virtual {v1}, Lcom/laifeng/sopcastsdk/stream/amf/AmfMap;->getSize()I

    move-result v4

    invoke-virtual {v2}, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;->getSize()I

    move-result v5

    add-int v3, v4, v5

    .line 111
    .local v3, "size":I
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 112
    .local v0, "amfBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Lcom/laifeng/sopcastsdk/stream/amf/AmfString;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 113
    invoke-virtual {v1}, Lcom/laifeng/sopcastsdk/stream/amf/AmfMap;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 114
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    return-object v4

    .line 106
    .end local v0    # "amfBuffer":Ljava/nio/ByteBuffer;
    .end local v3    # "size":I
    :cond_0
    const-string v4, "stereo"

    invoke-virtual {v1, v4, v6}, Lcom/laifeng/sopcastsdk/stream/amf/AmfMap;->setProperty(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static writeFlvTagHeader(Ljava/nio/ByteBuffer;III)V
    .locals 5
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "type"    # I
    .param p2, "dataSize"    # I
    .param p3, "timestamp"    # I

    .prologue
    const/4 v4, 0x0

    .line 75
    const v2, 0xffffff

    and-int/2addr v2, p2

    and-int/lit8 v3, p1, 0x1f

    shl-int/lit8 v3, v3, 0x18

    or-int v0, v2, v3

    .line 76
    .local v0, "sizeAndType":I
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 77
    shl-int/lit8 v2, p3, 0x8

    and-int/lit16 v2, v2, -0x100

    shr-int/lit8 v3, p3, 0x18

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 78
    .local v1, "time":I
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 79
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 80
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 81
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 82
    return-void
.end method

.method public static writeH264Packet(Ljava/nio/ByteBuffer;[BZ)V
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "data"    # [B
    .param p2, "isKeyFrame"    # Z

    .prologue
    .line 183
    const/4 v0, 0x2

    .line 184
    .local v0, "flvVideoFrameType":I
    if-eqz p2, :cond_0

    .line 185
    const/4 v0, 0x1

    .line 187
    :cond_0
    const/4 v1, 0x7

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/laifeng/sopcastsdk/stream/packer/flv/FlvPackerHelper;->writeVideoHeader(Ljava/nio/ByteBuffer;III)V

    .line 190
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 191
    return-void
.end method

.method public static writeVideoHeader(Ljava/nio/ByteBuffer;III)V
    .locals 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "flvVideoFrameType"    # I
    .param p2, "codecID"    # I
    .param p3, "AVCPacketType"    # I

    .prologue
    const/4 v3, 0x0

    .line 166
    and-int/lit8 v1, p1, 0xf

    shl-int/lit8 v1, v1, 0x4

    and-int/lit8 v2, p2, 0xf

    or-int/2addr v1, v2

    int-to-byte v0, v1

    .line 167
    .local v0, "first":B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 169
    int-to-byte v1, p3

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 170
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 171
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 172
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 173
    return-void
.end method
