.class public Lcom/pedro/encoder/utils/PCMUtil;
.super Ljava/lang/Object;
.source "PCMUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mixPCM([B[B)[B
    .locals 12
    .param p0, "pcm1"    # [B
    .param p1, "pcm2"    # [B

    .prologue
    .line 11
    array-length v1, p0

    .line 12
    .local v1, "len1":I
    array-length v2, p1

    .line 17
    .local v2, "len2":I
    if-le v2, v1, :cond_2

    .line 18
    move v3, v1

    .line 19
    .local v3, "lenL":I
    move-object v5, p0

    .line 20
    .local v5, "pcmL":[B
    move v4, v2

    .line 21
    .local v4, "lenS":I
    move-object v6, p1

    .line 28
    .local v6, "pcmS":[B
    :goto_0
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_1
    if-ge v0, v3, :cond_4

    .line 30
    if-lt v0, v4, :cond_3

    .line 31
    aget-byte v7, v5, v0

    .line 35
    .local v7, "sample":I
    :goto_2
    int-to-double v8, v7

    const-wide v10, 0x3fe6b851eb851eb8L    # 0.71

    mul-double/2addr v8, v10

    double-to-int v7, v8

    .line 36
    const/16 v8, 0x7f

    if-le v7, v8, :cond_0

    const/16 v7, 0x7f

    .line 37
    :cond_0
    const/16 v8, -0x80

    if-ge v7, v8, :cond_1

    const/16 v7, -0x80

    .line 38
    :cond_1
    int-to-byte v8, v7

    aput-byte v8, v5, v0

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 23
    .end local v0    # "idx":I
    .end local v3    # "lenL":I
    .end local v4    # "lenS":I
    .end local v5    # "pcmL":[B
    .end local v6    # "pcmS":[B
    .end local v7    # "sample":I
    :cond_2
    move v3, v2

    .line 24
    .restart local v3    # "lenL":I
    move-object v5, p1

    .line 25
    .restart local v5    # "pcmL":[B
    move v4, v1

    .line 26
    .restart local v4    # "lenS":I
    move-object v6, p0

    .restart local v6    # "pcmS":[B
    goto :goto_0

    .line 33
    .restart local v0    # "idx":I
    :cond_3
    aget-byte v8, v5, v0

    aget-byte v9, v6, v0

    add-int v7, v8, v9

    .restart local v7    # "sample":I
    goto :goto_2

    .line 40
    .end local v7    # "sample":I
    :cond_4
    return-object v5
.end method
