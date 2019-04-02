.class public Lcom/android/camera/captureintent/event/EventPictureDecoded;
.super Ljava/lang/Object;
.source "EventPictureDecoded.java"

# interfaces
.implements Lcom/android/camera/captureintent/stateful/Event;


# instance fields
.field private final mPictureBitmap:Landroid/graphics/Bitmap;

.field private final mPictureData:[B


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;[B)V
    .locals 0
    .param p1, "pictureBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "pictureData"    # [B

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/camera/captureintent/event/EventPictureDecoded;->mPictureBitmap:Landroid/graphics/Bitmap;

    .line 29
    iput-object p2, p0, Lcom/android/camera/captureintent/event/EventPictureDecoded;->mPictureData:[B

    .line 30
    return-void
.end method


# virtual methods
.method public getPictureBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/captureintent/event/EventPictureDecoded;->mPictureBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPictureData()[B
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/captureintent/event/EventPictureDecoded;->mPictureData:[B

    return-object v0
.end method
