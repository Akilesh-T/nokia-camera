.class public Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;
.super Ljava/lang/Object;
.source "MostRecentImageSaver.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagesaver/ImageSaver;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# instance fields
.field private final mFullSizeImages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/camera/one/v2/imagesaver/MetadataImage;",
            ">;"
        }
    .end annotation
.end field

.field private final mRawImages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/camera/one/v2/imagesaver/MetadataImage;",
            ">;"
        }
    .end annotation
.end field

.field private final mSingleImageSaver:Lcom/android/camera/one/v2/imagesaver/SingleImageSaver;

.field private final mThumbnails:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "MostRtctImgSaver"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/one/v2/imagesaver/SingleImageSaver;)V
    .locals 1
    .param p1, "singleImageSaver"    # Lcom/android/camera/one/v2/imagesaver/SingleImageSaver;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->mSingleImageSaver:Lcom/android/camera/one/v2/imagesaver/SingleImageSaver;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->mThumbnails:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->mFullSizeImages:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->mRawImages:Ljava/util/Map;

    .line 53
    return-void
.end method

.method private closeAllImages()V
    .locals 3

    .prologue
    .line 139
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->mThumbnails:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .line 140
    .local v0, "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    goto :goto_0

    .line 143
    .end local v0    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    :cond_0
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->mRawImages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .line 144
    .restart local v0    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    goto :goto_1

    .line 147
    .end local v0    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    :cond_1
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->mFullSizeImages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .line 148
    .restart local v0    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    goto :goto_2

    .line 150
    .end local v0    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    :cond_2
    return-void
.end method

.method private closeOlderImages()V
    .locals 4

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->getMostRecentFullSizeImageTimestamp()Lcom/google/common/base/Optional;

    move-result-object v0

    .line 167
    .local v0, "timestampThreshold":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/Long;>;"
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->mFullSizeImages:Ljava/util/Map;

    invoke-direct {p0, v2, v3, v1}, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->closeOlderImages(JLjava/util/Map;)V

    .line 169
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->mThumbnails:Ljava/util/Map;

    invoke-direct {p0, v2, v3, v1}, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->closeOlderImages(JLjava/util/Map;)V

    .line 170
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->mRawImages:Ljava/util/Map;

    invoke-direct {p0, v2, v3, v1}, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->closeOlderImages(JLjava/util/Map;)V

    .line 172
    :cond_0
    return-void
.end method

.method private closeOlderImages(JLjava/util/Map;)V
    .locals 7
    .param p1, "threshold"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "+",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p3, "imageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;+Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v3, "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 155
    .local v0, "imageTimestamp":J
    cmp-long v4, v0, p1

    if-gez v4, :cond_0

    .line 156
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v4}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    .line 157
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    .end local v0    # "imageTimestamp":J
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 161
    .local v2, "timestamp":Ljava/lang/Long;
    invoke-interface {p3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 163
    .end local v2    # "timestamp":Ljava/lang/Long;
    :cond_2
    return-void
.end method

.method private getLastImage()Lcom/android/camera/one/v2/imagesaver/MetadataImage;
    .locals 8
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 196
    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->mFullSizeImages:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 197
    const/4 v1, 0x0

    .line 205
    :cond_0
    return-object v1

    .line 199
    :cond_1
    const/4 v1, 0x0

    .line 200
    .local v1, "lastImage":Lcom/android/camera/one/v2/imagesaver/MetadataImage;
    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->mFullSizeImages:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagesaver/MetadataImage;

    .line 201
    .local v0, "image":Lcom/android/camera/one/v2/imagesaver/MetadataImage;
    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagesaver/MetadataImage;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/android/camera/one/v2/imagesaver/MetadataImage;->getTimestamp()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 202
    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method private getLastRawImage()Lcom/android/camera/one/v2/imagesaver/MetadataImage;
    .locals 8
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 210
    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->mRawImages:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    const/4 v1, 0x0

    .line 219
    :cond_0
    return-object v1

    .line 213
    :cond_1
    const/4 v1, 0x0

    .line 214
    .local v1, "lastRawImage":Lcom/android/camera/one/v2/imagesaver/MetadataImage;
    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->mRawImages:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagesaver/MetadataImage;

    .line 215
    .local v0, "image":Lcom/android/camera/one/v2/imagesaver/MetadataImage;
    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagesaver/MetadataImage;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/android/camera/one/v2/imagesaver/MetadataImage;->getTimestamp()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 216
    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method private getMostRecentFullSizeImageTimestamp()Lcom/google/common/base/Optional;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v6, p0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->mFullSizeImages:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 176
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v6

    .line 190
    :goto_0
    return-object v6

    .line 178
    :cond_0
    const/4 v1, 0x0

    .line 179
    .local v1, "pairFound":Z
    const-wide/16 v2, 0x0

    .line 180
    .local v2, "oldestTimestamp":J
    iget-object v6, p0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->mFullSizeImages:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .line 181
    .local v0, "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getTimestamp()J

    move-result-wide v4

    .line 182
    .local v4, "timestamp":J
    if-eqz v1, :cond_2

    cmp-long v7, v4, v2

    if-lez v7, :cond_1

    .line 183
    :cond_2
    move-wide v2, v4

    .line 184
    const/4 v1, 0x1

    goto :goto_1

    .line 187
    .end local v0    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .end local v4    # "timestamp":J
    :cond_3
    if-nez v1, :cond_4

    .line 188
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v6

    goto :goto_0

    .line 190
    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v6

    goto :goto_0
.end method

.method private getThumbnail(J)Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .locals 3
    .param p1, "timestamp"    # J
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->mThumbnails:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    return-object v0
.end method


# virtual methods
.method public addFastThumbnail(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)Z
    .locals 1
    .param p1, "imageProxy"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 69
    .local p2, "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->mSingleImageSaver:Lcom/android/camera/one/v2/imagesaver/SingleImageSaver;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/one/v2/imagesaver/SingleImageSaver;->addFastThumbnail(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)Z

    move-result v0

    return v0
.end method

.method public addFullSizeImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;Z)V
    .locals 1
    .param p1, "imageProxy"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .param p3, "isNeedThumbnail"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p2, "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->addFullSizeImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;ZLcom/google/common/base/Optional;)V

    .line 76
    return-void
.end method

.method public addFullSizeImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;ZLcom/google/common/base/Optional;)V
    .locals 4
    .param p1, "imageProxy"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .param p3, "isNeedThumbnail"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;Z",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p2, "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    .local p4, "imgName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->mFullSizeImages:Ljava/util/Map;

    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/android/camera/one/v2/imagesaver/MetadataImage;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/android/camera/one/v2/imagesaver/MetadataImage;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;ZLcom/google/common/base/Optional;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-direct {p0}, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->closeOlderImages()V

    .line 82
    return-void
.end method

.method public addRawImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 5
    .param p1, "imageProxy"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p2, "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->mRawImages:Ljava/util/Map;

    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/android/camera/one/v2/imagesaver/MetadataImage;

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v4

    invoke-direct {v2, p1, p2, v3, v4}, Lcom/android/camera/one/v2/imagesaver/MetadataImage;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;ZLcom/google/common/base/Optional;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-direct {p0}, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->closeOlderImages()V

    .line 65
    return-void
.end method

.method public addThumbnail(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)V
    .locals 4
    .param p1, "imageProxy"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->mThumbnails:Ljava/util/Map;

    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-direct {p0}, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->closeOlderImages()V

    .line 59
    return-void
.end method

.method public close()V
    .locals 7

    .prologue
    .line 92
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->getLastImage()Lcom/android/camera/one/v2/imagesaver/MetadataImage;

    move-result-object v0

    .line 93
    .local v0, "fullSize":Lcom/android/camera/one/v2/imagesaver/MetadataImage;
    if-eqz v0, :cond_2

    .line 96
    iget-object v3, p0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->mFullSizeImages:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagesaver/MetadataImage;->getTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagesaver/MetadataImage;->getTimestamp()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->getThumbnail(J)Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-result-object v2

    .line 104
    .local v2, "thumbnail":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    if-eqz v2, :cond_0

    .line 107
    iget-object v3, p0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->mThumbnails:Ljava/util/Map;

    invoke-interface {v2}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_0
    iget-object v3, p0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->mSingleImageSaver:Lcom/android/camera/one/v2/imagesaver/SingleImageSaver;

    invoke-static {v2}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v4

    .line 111
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagesaver/MetadataImage;->getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagesaver/MetadataImage;->isNeedThumbnail()Z

    move-result v6

    .line 110
    invoke-interface {v3, v0, v4, v5, v6}, Lcom/android/camera/one/v2/imagesaver/SingleImageSaver;->saveAndCloseImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/base/Optional;Lcom/google/common/util/concurrent/ListenableFuture;Z)V

    .line 113
    invoke-direct {p0}, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->getLastRawImage()Lcom/android/camera/one/v2/imagesaver/MetadataImage;

    move-result-object v1

    .line 114
    .local v1, "rawImage":Lcom/android/camera/one/v2/imagesaver/MetadataImage;
    if-eqz v1, :cond_1

    .line 115
    iget-object v3, p0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->mRawImages:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/android/camera/one/v2/imagesaver/MetadataImage;->getTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v3, p0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->mSingleImageSaver:Lcom/android/camera/one/v2/imagesaver/SingleImageSaver;

    invoke-virtual {v1}, Lcom/android/camera/one/v2/imagesaver/MetadataImage;->getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/android/camera/one/v2/imagesaver/SingleImageSaver;->saveAndCloseRawImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->closeAllImages()V

    .line 121
    .end local v1    # "rawImage":Lcom/android/camera/one/v2/imagesaver/MetadataImage;
    .end local v2    # "thumbnail":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    :goto_0
    return-void

    .line 98
    :cond_2
    :try_start_1
    sget-object v3, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v4, "No any image received, cancel session."

    invoke-static {v3, v4}, Lcom/android/ex/camera2/portability/debug/Log;->w(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 99
    iget-object v3, p0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->mSingleImageSaver:Lcom/android/camera/one/v2/imagesaver/SingleImageSaver;

    invoke-interface {v3}, Lcom/android/camera/one/v2/imagesaver/SingleImageSaver;->getCaptureSession()Lcom/android/camera/session/CaptureSession;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/session/CaptureSession;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    invoke-direct {p0}, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->closeAllImages()V

    goto :goto_0

    .end local v0    # "fullSize":Lcom/android/camera/one/v2/imagesaver/MetadataImage;
    :catchall_0
    move-exception v3

    invoke-direct {p0}, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->closeAllImages()V

    throw v3
.end method

.method public getCaptureSession()Lcom/android/camera/session/CaptureSession;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->mSingleImageSaver:Lcom/android/camera/one/v2/imagesaver/SingleImageSaver;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagesaver/SingleImageSaver;->getCaptureSession()Lcom/android/camera/session/CaptureSession;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->mSingleImageSaver:Lcom/android/camera/one/v2/imagesaver/SingleImageSaver;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagesaver/SingleImageSaver;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v0

    return-object v0
.end method

.method public getImageProcessorListener()Lcom/android/camera/processing/imagebackend/ImageProcessorListener;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/MostRecentImageSaver;->mSingleImageSaver:Lcom/android/camera/one/v2/imagesaver/SingleImageSaver;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagesaver/SingleImageSaver;->getImageProcessorListener()Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    move-result-object v0

    return-object v0
.end method

.method public prepareImgName()Lcom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method
