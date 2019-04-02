.class public Lcom/android/camera/captureintent/event/EventVideoAvailable;
.super Ljava/lang/Object;
.source "EventVideoAvailable.java"

# interfaces
.implements Lcom/android/camera/captureintent/stateful/Event;


# instance fields
.field private final mMimeType:Ljava/lang/String;

.field private final mOrientation:I

.field private final mPath:Ljava/lang/String;

.field private final mThumbnail:Landroid/graphics/Bitmap;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p5, "orientation"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/camera/captureintent/event/EventVideoAvailable;->mUri:Landroid/net/Uri;

    .line 33
    iput-object p2, p0, Lcom/android/camera/captureintent/event/EventVideoAvailable;->mPath:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/android/camera/captureintent/event/EventVideoAvailable;->mMimeType:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/android/camera/captureintent/event/EventVideoAvailable;->mThumbnail:Landroid/graphics/Bitmap;

    .line 36
    iput p5, p0, Lcom/android/camera/captureintent/event/EventVideoAvailable;->mOrientation:I

    .line 37
    return-void
.end method


# virtual methods
.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/captureintent/event/EventVideoAvailable;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/android/camera/captureintent/event/EventVideoAvailable;->mOrientation:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/captureintent/event/EventVideoAvailable;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/captureintent/event/EventVideoAvailable;->mThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/captureintent/event/EventVideoAvailable;->mUri:Landroid/net/Uri;

    return-object v0
.end method
