.class Lcom/android/camera/PIPPhotoModule$ResizeBundle;
.super Ljava/lang/Object;
.source "PIPPhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PIPPhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResizeBundle"
.end annotation


# instance fields
.field exif:Lcom/android/camera/exif/ExifInterface;

.field jpegData:[B

.field targetAspectRatio:F


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
