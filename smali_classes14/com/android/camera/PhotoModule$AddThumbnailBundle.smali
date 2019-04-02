.class Lcom/android/camera/PhotoModule$AddThumbnailBundle;
.super Ljava/lang/Object;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AddThumbnailBundle"
.end annotation


# instance fields
.field exif:Lcom/android/camera/exif/ExifInterface;

.field jpegData:[B


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2059
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PhotoModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/PhotoModule$1;

    .prologue
    .line 2059
    invoke-direct {p0}, Lcom/android/camera/PhotoModule$AddThumbnailBundle;-><init>()V

    return-void
.end method
