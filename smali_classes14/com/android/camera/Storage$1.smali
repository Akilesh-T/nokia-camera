.class final Lcom/android/camera/Storage$1;
.super Landroid/util/LruCache;
.source "Storage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Storage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Landroid/net/Uri;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 113
    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected sizeOf(Landroid/net/Uri;Landroid/graphics/Bitmap;)I
    .locals 1
    .param p1, "key"    # Landroid/net/Uri;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    .prologue
    .line 116
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    return v0
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 113
    check-cast p1, Landroid/net/Uri;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/Storage$1;->sizeOf(Landroid/net/Uri;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method
