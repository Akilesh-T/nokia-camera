.class public final Lcom/android/camera/one/v2/common/PictureSizeCalculator;
.super Ljava/lang/Object;
.source "PictureSizeCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/common/PictureSizeCalculator$Configuration;
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "PicSizeCal"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/common/PictureSizeCalculator;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/one/OneCameraCharacteristics;)V
    .locals 0
    .param p1, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/camera/one/v2/common/PictureSizeCalculator;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 53
    return-void
.end method

.method private getLargestSupportedSize(Ljava/util/List;)Lcom/android/camera/util/Size;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;)",
            "Lcom/android/camera/util/Size;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .local p1, "supported":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    const/4 v7, 0x0

    .line 171
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x1

    :goto_0
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 172
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/util/Size;

    .line 173
    .local v3, "largestSize":Lcom/android/camera/util/Size;
    invoke-virtual {v3}, Lcom/android/camera/util/Size;->area()J

    move-result-wide v4

    .line 174
    .local v4, "largestArea":J
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/util/Size;

    .line 175
    .local v2, "candidate":Lcom/android/camera/util/Size;
    invoke-virtual {v2}, Lcom/android/camera/util/Size;->area()J

    move-result-wide v0

    .line 176
    .local v0, "area":J
    cmp-long v7, v0, v4

    if-lez v7, :cond_0

    .line 177
    move-object v3, v2

    goto :goto_1

    .end local v0    # "area":J
    .end local v2    # "candidate":Lcom/android/camera/util/Size;
    .end local v3    # "largestSize":Lcom/android/camera/util/Size;
    .end local v4    # "largestArea":J
    :cond_1
    move v6, v7

    .line 171
    goto :goto_0

    .line 180
    .restart local v3    # "largestSize":Lcom/android/camera/util/Size;
    .restart local v4    # "largestArea":J
    :cond_2
    return-object v3
.end method

.method private getPostCrop(Lcom/android/camera/util/AspectRatio;Lcom/android/camera/util/Size;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "targetAspect"    # Lcom/android/camera/util/AspectRatio;
    .param p2, "actualSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 184
    invoke-virtual {p1, p2}, Lcom/android/camera/util/AspectRatio;->getLargestCenterCrop(Lcom/android/camera/util/Size;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private getSmallestSupportedSizeContainingTarget(Ljava/util/List;Lcom/android/camera/util/Size;)Lcom/android/camera/util/Size;
    .locals 9
    .param p2, "target"    # Lcom/android/camera/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;",
            "Lcom/android/camera/util/Size;",
            ")",
            "Lcom/android/camera/util/Size;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 114
    .local p1, "supported":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x1

    :goto_0
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "best":Lcom/android/camera/util/Size;
    const-wide v2, 0x7fffffffffffffffL

    .line 117
    .local v2, "bestArea":J
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/util/Size;

    .line 118
    .local v1, "candidate":Lcom/android/camera/util/Size;
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->area()J

    move-result-wide v4

    .line 119
    .local v4, "pixels":J
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {p2}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v8

    if-lt v7, v8, :cond_0

    .line 120
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v7

    invoke-virtual {p2}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v8

    if-lt v7, v8, :cond_0

    cmp-long v7, v4, v2

    if-gez v7, :cond_0

    .line 122
    move-object v0, v1

    .line 123
    move-wide v2, v4

    goto :goto_1

    .line 114
    .end local v0    # "best":Lcom/android/camera/util/Size;
    .end local v1    # "candidate":Lcom/android/camera/util/Size;
    .end local v2    # "bestArea":J
    .end local v4    # "pixels":J
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 127
    .restart local v0    # "best":Lcom/android/camera/util/Size;
    .restart local v2    # "bestArea":J
    :cond_2
    if-nez v0, :cond_3

    .line 130
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/common/PictureSizeCalculator;->getLargestSupportedSize(Ljava/util/List;)Lcom/android/camera/util/Size;

    move-result-object v0

    .line 133
    :cond_3
    return-object v0
.end method


# virtual methods
.method public computeConfiguration(Lcom/android/camera/util/Size;I)Lcom/android/camera/one/v2/common/PictureSizeCalculator$Configuration;
    .locals 6
    .param p1, "targetSize"    # Lcom/android/camera/util/Size;
    .param p2, "imageFormat"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/one/OneCameraAccessException;
        }
    .end annotation

    .prologue
    .line 149
    sget-object v3, Lcom/android/camera/one/v2/common/PictureSizeCalculator;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "computeConfiguration targetSize "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 150
    const/4 v2, 0x0

    .line 151
    .local v2, "supportedPictureSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    iget-object v3, p0, Lcom/android/camera/one/v2/common/PictureSizeCalculator;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v3, p1, p2}, Lcom/android/camera/one/OneCameraCharacteristics;->isHighResolutionOutputSizes(Lcom/android/camera/util/Size;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    sget-object v3, Lcom/android/camera/one/v2/common/PictureSizeCalculator;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isHighResolutionOutputSizes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 153
    iget-object v3, p0, Lcom/android/camera/one/v2/common/PictureSizeCalculator;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 154
    invoke-interface {v3, p2}, Lcom/android/camera/one/OneCameraCharacteristics;->getHighResolutionOutputSizes(I)Ljava/util/List;

    move-result-object v2

    .line 159
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 160
    new-instance v3, Lcom/android/camera/one/OneCameraAccessException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No picture sizes supported for format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/camera/one/OneCameraAccessException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 156
    :cond_0
    iget-object v3, p0, Lcom/android/camera/one/v2/common/PictureSizeCalculator;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 157
    invoke-interface {v3, p2}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedPictureSizes(I)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 163
    :cond_1
    invoke-direct {p0, v2, p1}, Lcom/android/camera/one/v2/common/PictureSizeCalculator;->getSmallestSupportedSizeContainingTarget(Ljava/util/List;Lcom/android/camera/util/Size;)Lcom/android/camera/util/Size;

    move-result-object v1

    .line 164
    .local v1, "size":Lcom/android/camera/util/Size;
    sget-object v3, Lcom/android/camera/one/v2/common/PictureSizeCalculator;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SmallestSupportedSizeContainingTarget: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 165
    invoke-static {p1}, Lcom/android/camera/util/AspectRatio;->of(Lcom/android/camera/util/Size;)Lcom/android/camera/util/AspectRatio;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/android/camera/one/v2/common/PictureSizeCalculator;->getPostCrop(Lcom/android/camera/util/AspectRatio;Lcom/android/camera/util/Size;)Landroid/graphics/Rect;

    move-result-object v0

    .line 166
    .local v0, "cropRegion":Landroid/graphics/Rect;
    new-instance v3, Lcom/android/camera/one/v2/common/PictureSizeCalculator$Configuration;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v0, v4}, Lcom/android/camera/one/v2/common/PictureSizeCalculator$Configuration;-><init>(Lcom/android/camera/util/Size;Landroid/graphics/Rect;Lcom/android/camera/one/v2/common/PictureSizeCalculator$1;)V

    return-object v3
.end method
