.class Lcom/android/camera/TemplatePhotoModule$ResizeBundle;
.super Ljava/lang/Object;
.source "TemplatePhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/TemplatePhotoModule;
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
    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/TemplatePhotoModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/TemplatePhotoModule$1;

    .prologue
    .line 699
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule$ResizeBundle;-><init>()V

    return-void
.end method
