.class Lcom/android/camera/BokehModule$ResizeBundle;
.super Ljava/lang/Object;
.source "BokehModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BokehModule;
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
    .line 1078
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/BokehModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/BokehModule$1;

    .prologue
    .line 1078
    invoke-direct {p0}, Lcom/android/camera/BokehModule$ResizeBundle;-><init>()V

    return-void
.end method
