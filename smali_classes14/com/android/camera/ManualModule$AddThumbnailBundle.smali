.class Lcom/android/camera/ManualModule$AddThumbnailBundle;
.super Ljava/lang/Object;
.source "ManualModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ManualModule;
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
    .line 3386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ManualModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/ManualModule$1;

    .prologue
    .line 3386
    invoke-direct {p0}, Lcom/android/camera/ManualModule$AddThumbnailBundle;-><init>()V

    return-void
.end method
