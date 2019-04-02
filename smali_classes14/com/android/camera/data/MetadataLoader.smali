.class public Lcom/android/camera/data/MetadataLoader;
.super Ljava/lang/Object;
.source "MetadataLoader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadMetadata(Landroid/content/Context;Lcom/android/camera/data/FilmstripItem;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Lcom/android/camera/data/FilmstripItem;

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, "metadataAdded":Z
    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getAttributes()Lcom/android/camera/data/FilmstripItemAttributes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemAttributes;->isImage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getMetadata()Lcom/android/camera/data/Metadata;

    move-result-object v2

    .line 42
    invoke-static {p0, v1, v2}, Lcom/android/camera/data/RgbzMetadataLoader;->loadRgbzMetadata(Landroid/content/Context;Landroid/net/Uri;Lcom/android/camera/data/Metadata;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 47
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getMetadata()Lcom/android/camera/data/Metadata;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/data/Metadata;->setLoaded(Z)V

    .line 48
    return v0

    .line 44
    :cond_1
    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getAttributes()Lcom/android/camera/data/FilmstripItemAttributes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemAttributes;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-static {p1}, Lcom/android/camera/data/VideoRotationMetadataLoader;->loadRotationMetadata(Lcom/android/camera/data/FilmstripItem;)Z

    move-result v0

    goto :goto_0
.end method
