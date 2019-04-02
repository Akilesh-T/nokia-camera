.class public abstract Lcom/android/camera/one/v2/camera2proxy/ForwardingImageProxy;
.super Ljava/lang/Object;
.source "ForwardingImageProxy.java"

# interfaces
.implements Lcom/android/camera/one/v2/camera2proxy/ImageProxy;


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final mImpl:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)V
    .locals 0
    .param p1, "proxy"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageProxy;->mImpl:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .line 37
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageProxy;->mImpl:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    .line 101
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 114
    if-nez p1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v1

    .line 117
    :cond_1
    instance-of v2, p1, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 120
    check-cast v0, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .line 121
    .local v0, "otherImage":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getFormat()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageProxy;->getFormat()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 122
    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageProxy;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 123
    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageProxy;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 124
    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageProxy;->getTimestamp()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageProxy;->mImpl:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getFormat()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageProxy;->mImpl:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getFormat()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageProxy;->mImpl:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getHeight()I

    move-result v0

    return v0
.end method

.method public getOriginImage()Landroid/media/Image;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageProxy;->mImpl:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getOriginImage()Landroid/media/Image;

    move-result-object v0

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
    .line 76
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageProxy;->mImpl:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getPlanes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageProxy;->mImpl:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageProxy;->mImpl:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getWidth()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 129
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageProxy;->getFormat()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageProxy;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageProxy;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageProxy;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setCropRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "cropRect"    # Landroid/graphics/Rect;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageProxy;->mImpl:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v0, p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->setCropRect(Landroid/graphics/Rect;)V

    .line 53
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 105
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "timestamp"

    .line 106
    invoke-virtual {p0}, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageProxy;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "width"

    .line 107
    invoke-virtual {p0}, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageProxy;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "height"

    .line 108
    invoke-virtual {p0}, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageProxy;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    return-object v0
.end method
