.class public Lcom/android/camera/data/VideoRotationMetadataLoader;
.super Ljava/lang/Object;
.source "VideoRotationMetadataLoader.java"


# static fields
.field private static final ROTATE_270:Ljava/lang/String; = "270"

.field private static final ROTATE_90:Ljava/lang/String; = "90"

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "VidRotDataLoader"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/data/VideoRotationMetadataLoader;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isRotated(Lcom/android/camera/data/FilmstripItem;)Z
    .locals 2
    .param p0, "filmstripItem"    # Lcom/android/camera/data/FilmstripItem;

    .prologue
    .line 30
    invoke-interface {p0}, Lcom/android/camera/data/FilmstripItem;->getMetadata()Lcom/android/camera/data/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/Metadata;->getVideoOrientation()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "rotation":Ljava/lang/String;
    const-string v1, "90"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "270"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static loadRotationMetadata(Lcom/android/camera/data/FilmstripItem;)Z
    .locals 6
    .param p0, "data"    # Lcom/android/camera/data/FilmstripItem;

    .prologue
    .line 35
    invoke-interface {p0}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/FilmstripItemData;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "path":Ljava/lang/String;
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 38
    .local v2, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 39
    invoke-interface {p0}, Lcom/android/camera/data/FilmstripItem;->getMetadata()Lcom/android/camera/data/Metadata;

    move-result-object v4

    const/16 v5, 0x18

    invoke-virtual {v2, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/data/Metadata;->setVideoOrientation(Ljava/lang/String;)V

    .line 42
    const/16 v4, 0x12

    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, "val":Ljava/lang/String;
    invoke-interface {p0}, Lcom/android/camera/data/FilmstripItem;->getMetadata()Lcom/android/camera/data/Metadata;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/camera/data/Metadata;->setVideoWidth(I)V

    .line 47
    const/16 v4, 0x13

    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-interface {p0}, Lcom/android/camera/data/FilmstripItem;->getMetadata()Lcom/android/camera/data/Metadata;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/camera/data/Metadata;->setVideoHeight(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v3    # "val":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 51
    :catch_0
    move-exception v0

    .line 54
    .local v0, "ex":Ljava/lang/RuntimeException;
    sget-object v4, Lcom/android/camera/data/VideoRotationMetadataLoader;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "MediaMetdataRetriever.setDataSource() fail"

    invoke-static {v4, v5, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
