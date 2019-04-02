.class public Lcom/android/camera/one/v2/initialization/Camera2ThumbnailSizeSelector;
.super Ljava/lang/Object;
.source "Camera2ThumbnailSizeSelector.java"

# interfaces
.implements Lcom/android/camera/one/ThumbnailSizeSelector;


# instance fields
.field private final mSupportedThumbnailSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p1, "supportedThumbnailSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/initialization/Camera2ThumbnailSizeSelector;->mSupportedThumbnailSizes:Ljava/util/List;

    .line 15
    return-void
.end method


# virtual methods
.method public pickSmallestThumbnailSize()Lcom/android/camera/util/Size;
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/Camera2ThumbnailSizeSelector;->mSupportedThumbnailSizes:Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/one/v2/initialization/Camera2ThumbnailSizeSelector;->mSupportedThumbnailSizes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/camera/util/Size;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/util/Size;

    invoke-static {v0}, Lcom/android/camera/CaptureModuleUtil;->getSmallestThumbnialize([Lcom/android/camera/util/Size;)Lcom/android/camera/util/Size;

    move-result-object v0

    return-object v0
.end method
