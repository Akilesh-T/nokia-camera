.class public final Lcom/android/camera/util/AspectRatio;
.super Ljava/lang/Object;
.source "AspectRatio.java"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field private static final ASPECT_RATIO_16x9:Lcom/android/camera/util/AspectRatio;

.field private static final ASPECT_RATIO_4x3:Lcom/android/camera/util/AspectRatio;


# instance fields
.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x4

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/camera/util/AspectRatio;->of(II)Lcom/android/camera/util/AspectRatio;

    move-result-object v0

    sput-object v0, Lcom/android/camera/util/AspectRatio;->ASPECT_RATIO_4x3:Lcom/android/camera/util/AspectRatio;

    .line 34
    const/16 v0, 0x10

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/android/camera/util/AspectRatio;->of(II)Lcom/android/camera/util/AspectRatio;

    move-result-object v0

    sput-object v0, Lcom/android/camera/util/AspectRatio;->ASPECT_RATIO_16x9:Lcom/android/camera/util/AspectRatio;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/android/camera/util/AspectRatio;->mWidth:I

    .line 45
    iput p2, p0, Lcom/android/camera/util/AspectRatio;->mHeight:I

    .line 46
    return-void
.end method

.method private isLandscape()Z
    .locals 2

    .prologue
    .line 199
    iget v0, p0, Lcom/android/camera/util/AspectRatio;->mWidth:I

    iget v1, p0, Lcom/android/camera/util/AspectRatio;->mHeight:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPortrait()Z
    .locals 2

    .prologue
    .line 207
    iget v0, p0, Lcom/android/camera/util/AspectRatio;->mWidth:I

    iget v1, p0, Lcom/android/camera/util/AspectRatio;->mHeight:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static of(II)Lcom/android/camera/util/AspectRatio;
    .locals 6
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 49
    int-to-long v4, p0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    int-to-long v4, p1

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 50
    .local v0, "gcd":I
    div-int v2, p0, v0

    .line 51
    .local v2, "simplifiedWidth":I
    div-int v1, p1, v0

    .line 52
    .local v1, "simplifiedHeight":I
    new-instance v3, Lcom/android/camera/util/AspectRatio;

    invoke-direct {v3, v2, v1}, Lcom/android/camera/util/AspectRatio;-><init>(II)V

    return-object v3
.end method

.method public static of(Lcom/android/camera/util/Size;)Lcom/android/camera/util/AspectRatio;
    .locals 2
    .param p0, "size"    # Lcom/android/camera/util/Size;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/camera/util/Size;->width()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/util/Size;->height()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/util/AspectRatio;->of(II)Lcom/android/camera/util/AspectRatio;

    move-result-object v0

    return-object v0
.end method

.method public static of16x9()Lcom/android/camera/util/AspectRatio;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/camera/util/AspectRatio;->ASPECT_RATIO_16x9:Lcom/android/camera/util/AspectRatio;

    return-object v0
.end method

.method public static of4x3()Lcom/android/camera/util/AspectRatio;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/camera/util/AspectRatio;->ASPECT_RATIO_4x3:Lcom/android/camera/util/AspectRatio;

    return-object v0
.end method


# virtual methods
.method public asLandscape()Lcom/android/camera/util/AspectRatio;
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/camera/util/AspectRatio;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    .end local p0    # "this":Lcom/android/camera/util/AspectRatio;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/android/camera/util/AspectRatio;
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/util/AspectRatio;->transpose()Lcom/android/camera/util/AspectRatio;

    move-result-object p0

    goto :goto_0
.end method

.method public asPortrait()Lcom/android/camera/util/AspectRatio;
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/camera/util/AspectRatio;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    .end local p0    # "this":Lcom/android/camera/util/AspectRatio;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/android/camera/util/AspectRatio;
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/util/AspectRatio;->transpose()Lcom/android/camera/util/AspectRatio;

    move-result-object p0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 81
    if-ne p0, p1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v1

    .line 83
    :cond_1
    instance-of v3, p1, Lcom/android/camera/util/AspectRatio;

    if-nez v3, :cond_2

    move v1, v2

    .line 84
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 86
    check-cast v0, Lcom/android/camera/util/AspectRatio;

    .line 88
    .local v0, "that":Lcom/android/camera/util/AspectRatio;
    iget v3, p0, Lcom/android/camera/util/AspectRatio;->mHeight:I

    iget v4, v0, Lcom/android/camera/util/AspectRatio;->mHeight:I

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 89
    goto :goto_0

    .line 90
    :cond_3
    iget v3, p0, Lcom/android/camera/util/AspectRatio;->mWidth:I

    iget v4, v0, Lcom/android/camera/util/AspectRatio;->mWidth:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 91
    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/android/camera/util/AspectRatio;->mHeight:I

    return v0
.end method

.method public getLargestCenterCrop(Lcom/android/camera/util/Size;)Landroid/graphics/Rect;
    .locals 9
    .param p1, "area"    # Lcom/android/camera/util/Size;

    .prologue
    .line 173
    invoke-static {p1}, Lcom/android/camera/util/AspectRatio;->of(Lcom/android/camera/util/Size;)Lcom/android/camera/util/AspectRatio;

    move-result-object v6

    .line 175
    .local v6, "original":Lcom/android/camera/util/AspectRatio;
    invoke-virtual {p0, v6}, Lcom/android/camera/util/AspectRatio;->isWiderThan(Lcom/android/camera/util/AspectRatio;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 177
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->width()I

    move-result v7

    iget v8, p0, Lcom/android/camera/util/AspectRatio;->mHeight:I

    mul-int/2addr v7, v8

    iget v8, p0, Lcom/android/camera/util/AspectRatio;->mWidth:I

    div-int v1, v7, v8

    .line 178
    .local v1, "cropHeight":I
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->height()I

    move-result v7

    sub-int/2addr v7, v1

    div-int/lit8 v4, v7, 0x2

    .line 179
    .local v4, "cropTop":I
    add-int v0, v4, v1

    .line 180
    .local v0, "cropBottom":I
    const/4 v2, 0x0

    .line 181
    .local v2, "cropLeft":I
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->width()I

    move-result v3

    .line 182
    .local v3, "cropRight":I
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v2, v4, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 190
    .end local v1    # "cropHeight":I
    :goto_0
    return-object v7

    .line 185
    .end local v0    # "cropBottom":I
    .end local v2    # "cropLeft":I
    .end local v3    # "cropRight":I
    .end local v4    # "cropTop":I
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->height()I

    move-result v7

    iget v8, p0, Lcom/android/camera/util/AspectRatio;->mWidth:I

    mul-int/2addr v7, v8

    iget v8, p0, Lcom/android/camera/util/AspectRatio;->mHeight:I

    div-int v5, v7, v8

    .line 186
    .local v5, "cropWidth":I
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->width()I

    move-result v7

    sub-int/2addr v7, v5

    div-int/lit8 v2, v7, 0x2

    .line 187
    .restart local v2    # "cropLeft":I
    add-int v3, v2, v5

    .line 188
    .restart local v3    # "cropRight":I
    const/4 v4, 0x0

    .line 189
    .restart local v4    # "cropTop":I
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->height()I

    move-result v0

    .line 190
    .restart local v0    # "cropBottom":I
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v2, v4, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/android/camera/util/AspectRatio;->mWidth:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 98
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/camera/util/AspectRatio;->mWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/camera/util/AspectRatio;->mHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isTallerThan(Lcom/android/camera/util/AspectRatio;)Z
    .locals 3
    .param p1, "other"    # Lcom/android/camera/util/AspectRatio;

    .prologue
    .line 164
    iget v0, p0, Lcom/android/camera/util/AspectRatio;->mWidth:I

    iget v1, p1, Lcom/android/camera/util/AspectRatio;->mHeight:I

    mul-int/2addr v0, v1

    iget v1, p1, Lcom/android/camera/util/AspectRatio;->mWidth:I

    iget v2, p0, Lcom/android/camera/util/AspectRatio;->mHeight:I

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWiderThan(Lcom/android/camera/util/AspectRatio;)Z
    .locals 3
    .param p1, "other"    # Lcom/android/camera/util/AspectRatio;

    .prologue
    .line 154
    iget v0, p0, Lcom/android/camera/util/AspectRatio;->mWidth:I

    iget v1, p1, Lcom/android/camera/util/AspectRatio;->mHeight:I

    mul-int/2addr v0, v1

    iget v1, p1, Lcom/android/camera/util/AspectRatio;->mWidth:I

    iget v2, p0, Lcom/android/camera/util/AspectRatio;->mHeight:I

    mul-int/2addr v1, v2

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toFloat()F
    .locals 2

    .prologue
    .line 76
    iget v0, p0, Lcom/android/camera/util/AspectRatio;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/util/AspectRatio;->mHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 103
    const-string v0, "AspectRatio[%d:%d]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/camera/util/AspectRatio;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/camera/util/AspectRatio;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transpose()Lcom/android/camera/util/AspectRatio;
    .locals 2

    .prologue
    .line 110
    iget v0, p0, Lcom/android/camera/util/AspectRatio;->mHeight:I

    iget v1, p0, Lcom/android/camera/util/AspectRatio;->mWidth:I

    invoke-static {v0, v1}, Lcom/android/camera/util/AspectRatio;->of(II)Lcom/android/camera/util/AspectRatio;

    move-result-object v0

    return-object v0
.end method

.method public withOrientationOf(Lcom/android/camera/util/AspectRatio;)Lcom/android/camera/util/AspectRatio;
    .locals 1
    .param p1, "other"    # Lcom/android/camera/util/AspectRatio;

    .prologue
    .line 140
    invoke-direct {p1}, Lcom/android/camera/util/AspectRatio;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/android/camera/util/AspectRatio;->asPortrait()Lcom/android/camera/util/AspectRatio;

    move-result-object v0

    .line 143
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/util/AspectRatio;->asLandscape()Lcom/android/camera/util/AspectRatio;

    move-result-object v0

    goto :goto_0
.end method
