.class public final Lcom/android/camera/one/v2/common/PictureSizeCalculator$Configuration;
.super Ljava/lang/Object;
.source "PictureSizeCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/common/PictureSizeCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Configuration"
.end annotation


# instance fields
.field private final mPostCrop:Landroid/graphics/Rect;

.field private final mSize:Lcom/android/camera/util/Size;


# direct methods
.method private constructor <init>(Lcom/android/camera/util/Size;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "size"    # Lcom/android/camera/util/Size;
    .param p2, "postCrop"    # Landroid/graphics/Rect;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/camera/one/v2/common/PictureSizeCalculator$Configuration;->mSize:Lcom/android/camera/util/Size;

    .line 61
    iput-object p2, p0, Lcom/android/camera/one/v2/common/PictureSizeCalculator$Configuration;->mPostCrop:Landroid/graphics/Rect;

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/util/Size;Landroid/graphics/Rect;Lcom/android/camera/one/v2/common/PictureSizeCalculator$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/util/Size;
    .param p2, "x1"    # Landroid/graphics/Rect;
    .param p3, "x2"    # Lcom/android/camera/one/v2/common/PictureSizeCalculator$1;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/camera/one/v2/common/PictureSizeCalculator$Configuration;-><init>(Lcom/android/camera/util/Size;Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    if-ne p0, p1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v1

    .line 91
    :cond_1
    instance-of v3, p1, Lcom/android/camera/one/v2/common/PictureSizeCalculator$Configuration;

    if-nez v3, :cond_2

    move v1, v2

    .line 92
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 95
    check-cast v0, Lcom/android/camera/one/v2/common/PictureSizeCalculator$Configuration;

    .line 97
    .local v0, "that":Lcom/android/camera/one/v2/common/PictureSizeCalculator$Configuration;
    iget-object v3, p0, Lcom/android/camera/one/v2/common/PictureSizeCalculator$Configuration;->mPostCrop:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/camera/one/v2/common/PictureSizeCalculator$Configuration;->mPostCrop:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    .line 98
    goto :goto_0

    .line 99
    :cond_3
    iget-object v3, p0, Lcom/android/camera/one/v2/common/PictureSizeCalculator$Configuration;->mSize:Lcom/android/camera/util/Size;

    iget-object v4, v0, Lcom/android/camera/one/v2/common/PictureSizeCalculator$Configuration;->mSize:Lcom/android/camera/util/Size;

    invoke-virtual {v3, v4}, Lcom/android/camera/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 100
    goto :goto_0
.end method

.method public getNativeOutputSize()Lcom/android/camera/util/Size;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/camera/one/v2/common/PictureSizeCalculator$Configuration;->mSize:Lcom/android/camera/util/Size;

    return-object v0
.end method

.method public getPostCaptureCrop()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/one/v2/common/PictureSizeCalculator$Configuration;->mPostCrop:Landroid/graphics/Rect;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 108
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/one/v2/common/PictureSizeCalculator$Configuration;->mSize:Lcom/android/camera/util/Size;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/camera/one/v2/common/PictureSizeCalculator$Configuration;->mPostCrop:Landroid/graphics/Rect;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 81
    const-string v0, "PictureSizeCalculator.Configuration"

    invoke-static {v0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/String;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "native size"

    iget-object v2, p0, Lcom/android/camera/one/v2/common/PictureSizeCalculator$Configuration;->mSize:Lcom/android/camera/util/Size;

    .line 82
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "crop"

    iget-object v2, p0, Lcom/android/camera/one/v2/common/PictureSizeCalculator$Configuration;->mPostCrop:Landroid/graphics/Rect;

    .line 83
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    return-object v0
.end method
