.class public Lcom/android/camera/captureintent/CaptureVideoInfo;
.super Ljava/lang/Object;
.source "CaptureVideoInfo.java"


# instance fields
.field private final mMimeType:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mOrientation:I

.field private final mPath:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoBitmap:Landroid/graphics/Bitmap;

.field private final mVideoUri:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;ILcom/google/common/base/Optional;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;)V
    .locals 0
    .param p1, "videoBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "I",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p3, "videoUri":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Landroid/net/Uri;>;"
    .local p4, "path":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    .local p5, "mimeType":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/camera/captureintent/CaptureVideoInfo;->mVideoBitmap:Landroid/graphics/Bitmap;

    .line 22
    iput p2, p0, Lcom/android/camera/captureintent/CaptureVideoInfo;->mOrientation:I

    .line 23
    iput-object p3, p0, Lcom/android/camera/captureintent/CaptureVideoInfo;->mVideoUri:Lcom/google/common/base/Optional;

    .line 24
    iput-object p4, p0, Lcom/android/camera/captureintent/CaptureVideoInfo;->mPath:Lcom/google/common/base/Optional;

    .line 25
    iput-object p5, p0, Lcom/android/camera/captureintent/CaptureVideoInfo;->mMimeType:Lcom/google/common/base/Optional;

    .line 26
    return-void
.end method


# virtual methods
.method public getMimeType()Lcom/google/common/base/Optional;
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
    .line 45
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureVideoInfo;->mMimeType:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/android/camera/captureintent/CaptureVideoInfo;->mOrientation:I

    return v0
.end method

.method public getPath()Lcom/google/common/base/Optional;
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
    .line 41
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureVideoInfo;->mPath:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method public getVideoBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureVideoInfo;->mVideoBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getVideoUri()Lcom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/captureintent/CaptureVideoInfo;->mVideoUri:Lcom/google/common/base/Optional;

    return-object v0
.end method
