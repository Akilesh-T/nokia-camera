.class public Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;
.super Ljava/lang/Object;
.source "AndroidImageProxy.java"

# interfaces
.implements Lcom/android/camera/one/v2/camera2proxy/ImageProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy$Plane;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private mCropRect:Landroid/graphics/Rect;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mFormat:I

.field private final mHeight:I

.field private final mImage:Landroid/media/Image;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mPlanes:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimestamp:J

.field private final mWidth:I


# direct methods
.method public constructor <init>(Landroid/media/Image;)V
    .locals 6
    .param p1, "image"    # Landroid/media/Image;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->mLock:Ljava/lang/Object;

    .line 100
    iput-object p1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->mImage:Landroid/media/Image;

    .line 105
    iget-object v3, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->mImage:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->getFormat()I

    move-result v3

    iput v3, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->mFormat:I

    .line 106
    iget-object v3, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->mImage:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->mWidth:I

    .line 107
    iget-object v3, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->mImage:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->mHeight:I

    .line 108
    iget-object v3, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->mImage:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->mTimestamp:J

    .line 111
    iget-object v3, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->mImage:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    .line 112
    .local v1, "planes":[Landroid/media/Image$Plane;
    if-nez v1, :cond_0

    .line 113
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->mPlanes:Lcom/google/common/collect/ImmutableList;

    .line 121
    :goto_0
    return-void

    .line 115
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    .local v2, "wrappedPlanes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 117
    new-instance v3, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy$Plane;

    aget-object v4, v1, v0

    invoke-direct {v3, p0, v4}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy$Plane;-><init>(Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;Landroid/media/Image$Plane;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 119
    :cond_1
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->mPlanes:Lcom/google/common/collect/ImmutableList;

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 199
    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->mImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 201
    monitor-exit v1

    .line 202
    return-void

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 216
    if-nez p1, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v1

    .line 219
    :cond_1
    instance-of v2, p1, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 222
    check-cast v0, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .line 223
    .local v0, "otherImage":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getFormat()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->getFormat()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 224
    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 225
    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 226
    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->getTimestamp()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 3

    .prologue
    .line 128
    iget-object v2, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->mImage:Landroid/media/Image;

    invoke-virtual {v1}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->mCropRect:Landroid/graphics/Rect;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->mCropRect:Landroid/graphics/Rect;

    monitor-exit v2

    :goto_0
    return-object v1

    .line 131
    :catch_0
    move-exception v0

    .line 133
    .local v0, "imageClosedException":Ljava/lang/IllegalStateException;
    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->mCropRect:Landroid/graphics/Rect;

    monitor-exit v2

    goto :goto_0

    .line 136
    .end local v0    # "imageClosedException":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getFormat()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->mFormat:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->mHeight:I

    return v0
.end method

.method public getOriginImage()Landroid/media/Image;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->mImage:Landroid/media/Image;

    return-object v0
.end method

.method public getPlanes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->mPlanes:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 183
    iget-wide v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->mTimestamp:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->mWidth:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 231
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->getFormat()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setCropRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "cropRect"    # Landroid/graphics/Rect;

    .prologue
    .line 144
    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 145
    :try_start_0
    iput-object p1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->mCropRect:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->mImage:Landroid/media/Image;

    invoke-virtual {v0, p1}, Landroid/media/Image;->setCropRect(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 152
    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 148
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 206
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "format"

    .line 207
    invoke-virtual {p0}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->getFormat()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "timestamp"

    .line 208
    invoke-virtual {p0}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "width"

    .line 209
    invoke-virtual {p0}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "height"

    .line 210
    invoke-virtual {p0}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    return-object v0
.end method
