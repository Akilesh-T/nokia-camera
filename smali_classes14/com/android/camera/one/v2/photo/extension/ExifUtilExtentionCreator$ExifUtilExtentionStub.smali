.class public Lcom/android/camera/one/v2/photo/extension/ExifUtilExtentionCreator$ExifUtilExtentionStub;
.super Lcom/android/camera/one/v2/photo/extension/ExifUtilExtention;
.source "ExifUtilExtentionCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/photo/extension/ExifUtilExtentionCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExifUtilExtentionStub"
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/camera/exif/ExifInterface;)V
    .locals 0
    .param p1, "exif"    # Lcom/android/camera/exif/ExifInterface;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/camera/one/v2/photo/extension/ExifUtilExtention;-><init>()V

    .line 35
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
    .line 40
    return-void
.end method
