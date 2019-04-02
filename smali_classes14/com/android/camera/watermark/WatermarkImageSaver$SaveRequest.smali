.class Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;
.super Ljava/lang/Object;
.source "WatermarkImageSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/watermark/WatermarkImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveRequest"
.end annotation


# instance fields
.field callback:Lcom/android/camera/watermark/WatermarkImageSaver$WatermarkImageSavedCallback;

.field cameraServices:Lcom/android/camera/app/CameraServices;

.field captureStartTime:J

.field date:J

.field exif:Lcom/android/camera/exif/ExifInterface;

.field hwRotateSupport:Z

.field location:Landroid/location/Location;

.field mediaSavedListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

.field private orientation:I

.field srcImage:[B

.field title:Ljava/lang/String;

.field watermarkViewData:Lcom/android/camera/watermark/WatermarkViewData;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/watermark/WatermarkImageSaver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/watermark/WatermarkImageSaver$1;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;

    .prologue
    .line 43
    iget v0, p0, Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;->orientation:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/android/camera/watermark/WatermarkImageSaver$SaveRequest;->orientation:I

    return p1
.end method
