.class public Lcom/android/camera/captureintent/event/EventFastPictureBitmapAvailable;
.super Ljava/lang/Object;
.source "EventFastPictureBitmapAvailable.java"

# interfaces
.implements Lcom/android/camera/captureintent/stateful/Event;


# instance fields
.field private final mThumbnailBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "thumbnailBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/camera/captureintent/event/EventFastPictureBitmapAvailable;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 28
    return-void
.end method


# virtual methods
.method public getThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/captureintent/event/EventFastPictureBitmapAvailable;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method
