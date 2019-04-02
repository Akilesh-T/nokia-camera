.class public Lcom/android/camera/opengl/effect/sticker/util/UV420Scaler;
.super Ljava/lang/Object;
.source "UV420Scaler.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public scaleFactor:I

.field public scaledHeight:I

.field public scaledImage:[B

.field public scaledWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/android/camera/opengl/effect/sticker/util/UV420Scaler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/camera/opengl/effect/sticker/util/UV420Scaler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>([BII)V
    .locals 10
    .param p1, "rawImage"    # [B
    .param p2, "originalWidth"    # I
    .param p3, "originalHeight"    # I

    .prologue
    const/4 v9, 0x1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    if-le p2, p3, :cond_2

    move v3, p2

    .line 10
    .local v3, "longLength":I
    :goto_0
    const/16 v8, 0xbb8

    if-le v3, v8, :cond_3

    const/4 v8, 0x4

    :goto_1
    iput v8, p0, Lcom/android/camera/opengl/effect/sticker/util/UV420Scaler;->scaleFactor:I

    .line 14
    iget v8, p0, Lcom/android/camera/opengl/effect/sticker/util/UV420Scaler;->scaleFactor:I

    div-int v6, p2, v8

    .line 15
    .local v6, "w":I
    iget v8, p0, Lcom/android/camera/opengl/effect/sticker/util/UV420Scaler;->scaleFactor:I

    div-int v0, p3, v8

    .line 17
    .local v0, "h":I
    rem-int/lit8 v8, v6, 0x2

    if-ne v8, v9, :cond_0

    .line 18
    add-int/lit8 v6, v6, 0x1

    .line 20
    :cond_0
    rem-int/lit8 v8, v0, 0x2

    if-ne v8, v9, :cond_1

    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 23
    :cond_1
    iput v6, p0, Lcom/android/camera/opengl/effect/sticker/util/UV420Scaler;->scaledWidth:I

    .line 24
    iput v0, p0, Lcom/android/camera/opengl/effect/sticker/util/UV420Scaler;->scaledHeight:I

    .line 25
    mul-int v8, v6, v0

    mul-int v9, v6, v0

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    new-array v7, v8, [B

    .line 26
    .local v7, "yuv":[B
    const/4 v1, 0x0

    .line 27
    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_2
    if-ge v2, p3, :cond_6

    .line 28
    const/4 v4, 0x0

    .local v4, "m":I
    :goto_3
    if-ge v4, p2, :cond_5

    .line 29
    mul-int v8, v2, p2

    add-int/2addr v8, v4

    aget-byte v8, p1, v8

    aput-byte v8, v7, v1

    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 28
    iget v8, p0, Lcom/android/camera/opengl/effect/sticker/util/UV420Scaler;->scaleFactor:I

    add-int/2addr v4, v8

    goto :goto_3

    .end local v0    # "h":I
    .end local v1    # "i":I
    .end local v2    # "k":I
    .end local v3    # "longLength":I
    .end local v4    # "m":I
    .end local v6    # "w":I
    .end local v7    # "yuv":[B
    :cond_2
    move v3, p3

    .line 8
    goto :goto_0

    .line 10
    .restart local v3    # "longLength":I
    :cond_3
    const/16 v8, 0x3e8

    if-le v3, v8, :cond_4

    const/4 v8, 0x2

    goto :goto_1

    :cond_4
    move v8, v9

    goto :goto_1

    .line 27
    .restart local v0    # "h":I
    .restart local v1    # "i":I
    .restart local v2    # "k":I
    .restart local v4    # "m":I
    .restart local v6    # "w":I
    .restart local v7    # "yuv":[B
    :cond_5
    iget v8, p0, Lcom/android/camera/opengl/effect/sticker/util/UV420Scaler;->scaleFactor:I

    add-int/2addr v2, v8

    goto :goto_2

    .line 33
    .end local v4    # "m":I
    :cond_6
    mul-int v5, p2, p3

    .line 34
    .local v5, "size":I
    mul-int v1, v6, v0

    .line 35
    const/4 v2, 0x0

    :goto_4
    div-int/lit8 v8, p3, 0x2

    if-ge v2, v8, :cond_a

    .line 36
    const/4 v4, 0x0

    .restart local v4    # "m":I
    :goto_5
    if-ge v4, p2, :cond_9

    .line 37
    array-length v8, v7

    if-ge v1, v8, :cond_7

    .line 38
    mul-int v8, v2, p2

    add-int/2addr v8, v5

    add-int/2addr v8, v4

    aget-byte v8, p1, v8

    aput-byte v8, v7, v1

    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 41
    :cond_7
    array-length v8, v7

    if-ge v1, v8, :cond_8

    .line 42
    mul-int v8, v2, p2

    add-int/2addr v8, v5

    add-int/2addr v8, v4

    add-int/lit8 v8, v8, 0x1

    aget-byte v8, p1, v8

    aput-byte v8, v7, v1

    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 36
    :cond_8
    iget v8, p0, Lcom/android/camera/opengl/effect/sticker/util/UV420Scaler;->scaleFactor:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v4, v8

    goto :goto_5

    .line 35
    :cond_9
    iget v8, p0, Lcom/android/camera/opengl/effect/sticker/util/UV420Scaler;->scaleFactor:I

    add-int/2addr v2, v8

    goto :goto_4

    .line 47
    .end local v4    # "m":I
    :cond_a
    sget-boolean v8, Lcom/android/camera/opengl/effect/sticker/util/UV420Scaler;->$assertionsDisabled:Z

    if-nez v8, :cond_b

    div-int/lit8 v8, v5, 0x2

    add-int/2addr v8, v5

    if-eq v1, v8, :cond_b

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 48
    :cond_b
    iput-object v7, p0, Lcom/android/camera/opengl/effect/sticker/util/UV420Scaler;->scaledImage:[B

    .line 49
    return-void
.end method
