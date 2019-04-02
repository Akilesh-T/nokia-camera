.class Lcom/android/camera/BeautyModule$AddThumbnailBundle;
.super Ljava/lang/Object;
.source "BeautyModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BeautyModule;
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
    .line 2746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/BeautyModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/BeautyModule$1;

    .prologue
    .line 2746
    invoke-direct {p0}, Lcom/android/camera/BeautyModule$AddThumbnailBundle;-><init>()V

    return-void
.end method
