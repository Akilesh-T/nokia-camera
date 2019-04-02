.class public Lcom/android/camera/data/RgbzMetadataLoader;
.super Ljava/lang/Object;
.source "RgbzMetadataLoader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadRgbzMetadata(Landroid/content/Context;Landroid/net/Uri;Lcom/android/camera/data/Metadata;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "metadata"    # Lcom/android/camera/data/Metadata;

    .prologue
    const/4 v0, 0x1

    .line 36
    invoke-static {p0, p1}, Lcom/android/camera/util/RefocusHelper;->isRGBZ(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {p2, v0}, Lcom/android/camera/data/Metadata;->setHasRgbzData(Z)V

    .line 40
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
