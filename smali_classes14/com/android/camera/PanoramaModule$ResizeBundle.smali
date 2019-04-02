.class Lcom/android/camera/PanoramaModule$ResizeBundle;
.super Ljava/lang/Object;
.source "PanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PanoramaModule;
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
    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PanoramaModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/PanoramaModule$1;

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule$ResizeBundle;-><init>()V

    return-void
.end method
