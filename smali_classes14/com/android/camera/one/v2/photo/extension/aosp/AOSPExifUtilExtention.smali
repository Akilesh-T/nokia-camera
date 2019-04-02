.class public Lcom/android/camera/one/v2/photo/extension/aosp/AOSPExifUtilExtention;
.super Lcom/android/camera/one/v2/photo/extension/ExifUtilExtention;
.source "AOSPExifUtilExtention.java"


# instance fields
.field private final mExif:Lcom/android/camera/exif/ExifInterface;


# direct methods
.method public constructor <init>(Lcom/android/camera/exif/ExifInterface;)V
    .locals 0
    .param p1, "exif"    # Lcom/android/camera/exif/ExifInterface;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/camera/one/v2/photo/extension/ExifUtilExtention;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/extension/aosp/AOSPExifUtilExtention;->mExif:Lcom/android/camera/exif/ExifInterface;

    .line 17
    return-void
.end method

.method private addExifTag(ILjava/lang/Object;)V
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 25
    if-eqz p2, :cond_0

    .line 26
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/aosp/AOSPExifUtilExtention;->mExif:Lcom/android/camera/exif/ExifInterface;

    iget-object v1, p0, Lcom/android/camera/one/v2/photo/extension/aosp/AOSPExifUtilExtention;->mExif:Lcom/android/camera/exif/ExifInterface;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public appendExifInfo(Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;)V
    .locals 0
    .param p1, "result"    # Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 22
    return-void
.end method
