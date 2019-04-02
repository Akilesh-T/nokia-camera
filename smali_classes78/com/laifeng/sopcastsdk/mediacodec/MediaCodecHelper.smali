.class public Lcom/laifeng/sopcastsdk/mediacodec/MediaCodecHelper;
.super Ljava/lang/Object;
.source "MediaCodecHelper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 6
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v3

    .line 26
    .local v3, "numCodecs":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 27
    invoke-static {v1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 28
    .local v0, "codecInfo":Landroid/media/MediaCodecInfo;
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-nez v5, :cond_1

    .line 26
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    .line 32
    .local v4, "types":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_0

    .line 33
    aget-object v5, v4, v2

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 38
    .end local v0    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v2    # "j":I
    .end local v4    # "types":[Ljava/lang/String;
    :goto_2
    return-object v0

    .line 32
    .restart local v0    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v2    # "j":I
    .restart local v4    # "types":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 38
    .end local v0    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v2    # "j":I
    .end local v4    # "types":[Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method
