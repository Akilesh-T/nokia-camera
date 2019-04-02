.class public Lcom/android/camera/captureintent/CapturePhotoInfo;
.super Ljava/lang/Object;
.source "CapturePhotoInfo.java"


# instance fields
.field private final mJpegData:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<[B>;"
        }
    .end annotation
.end field

.field private final mOrientation:I

.field private final mPhotoBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;ILcom/google/common/base/Optional;)V
    .locals 0
    .param p1, "photoBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "I",
            "Lcom/google/common/base/Optional",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p3, "jpegData":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/camera/captureintent/CapturePhotoInfo;->mPhotoBitmap:Landroid/graphics/Bitmap;

    .line 19
    iput p2, p0, Lcom/android/camera/captureintent/CapturePhotoInfo;->mOrientation:I

    .line 20
    iput-object p3, p0, Lcom/android/camera/captureintent/CapturePhotoInfo;->mJpegData:Lcom/google/common/base/Optional;

    .line 21
    return-void
.end method


# virtual methods
.method public getJpegData()Lcom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/captureintent/CapturePhotoInfo;->mJpegData:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/android/camera/captureintent/CapturePhotoInfo;->mOrientation:I

    return v0
.end method

.method public getPhotoBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/camera/captureintent/CapturePhotoInfo;->mPhotoBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method
