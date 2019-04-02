.class Lcom/android/camera/ManualModule$Memento;
.super Ljava/lang/Object;
.source "ManualModule.java"

# interfaces
.implements Lcom/android/camera/watermark/WatermarkImageSaver$WatermarkImageSavedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ManualModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Memento"
.end annotation


# instance fields
.field private cameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

.field private cameraId:I

.field private cameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

.field private captureStartTime:J

.field private compassTagEnabled:Z

.field private date:J

.field private detectedISO:I

.field private frontFlashTriggered:Z

.field private future:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private headingSensor:Lcom/android/camera/hardware/HeadingSensor;

.field private isFakeGenerated:Z

.field private isImageCaptureIntent:Z

.field private isIsoAuto:Z

.field private isManualExposure:Z

.field private jpegRotation:I

.field private lastCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

.field private location:Landroid/location/Location;

.field private mirror:Z

.field private onMediaSavedListener:Lcom/android/camera/ManualModule$MediaSaveListener;

.field private parameters:Landroid/hardware/Camera$Parameters;

.field private pictureCallbackFactory:Lcom/android/camera/ManualModule$PictureCallbackFactoryBase;

.field private quickCapture:Z

.field private saveCb:Lcom/android/camera/ManualModule$SavePictureCallback;

.field private shouldResizeTo16x9:Z

.field final synthetic this$0:Lcom/android/camera/ManualModule;

.field private title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/camera/ManualModule;)V
    .locals 1

    .prologue
    .line 3408
    iput-object p1, p0, Lcom/android/camera/ManualModule$Memento;->this$0:Lcom/android/camera/ManualModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3409
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ManualModule$Memento;->future:Lcom/google/common/util/concurrent/SettableFuture;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ManualModule;Lcom/android/camera/ManualModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/ManualModule;
    .param p2, "x1"    # Lcom/android/camera/ManualModule$1;

    .prologue
    .line 3408
    invoke-direct {p0, p1}, Lcom/android/camera/ManualModule$Memento;-><init>(Lcom/android/camera/ManualModule;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/camera/ManualModule$Memento;[BLcom/android/camera/ManualModule$SavePictureCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualModule$Memento;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Lcom/android/camera/ManualModule$SavePictureCallback;

    .prologue
    .line 3408
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ManualModule$Memento;->saveJpegData([BLcom/android/camera/ManualModule$SavePictureCallback;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/camera/ManualModule$Memento;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule$Memento;

    .prologue
    .line 3408
    iget-object v0, p0, Lcom/android/camera/ManualModule$Memento;->title:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/camera/ManualModule$Memento;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualModule$Memento;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 3408
    iput-object p1, p0, Lcom/android/camera/ManualModule$Memento;->title:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/camera/ManualModule$Memento;)Lcom/google/common/util/concurrent/SettableFuture;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule$Memento;

    .prologue
    .line 3408
    iget-object v0, p0, Lcom/android/camera/ManualModule$Memento;->future:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/camera/ManualModule$Memento;)Lcom/android/camera/ManualModule$PictureCallbackFactoryBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule$Memento;

    .prologue
    .line 3408
    iget-object v0, p0, Lcom/android/camera/ManualModule$Memento;->pictureCallbackFactory:Lcom/android/camera/ManualModule$PictureCallbackFactoryBase;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/camera/ManualModule$Memento;Lcom/android/camera/ManualModule$PictureCallbackFactoryBase;)Lcom/android/camera/ManualModule$PictureCallbackFactoryBase;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualModule$Memento;
    .param p1, "x1"    # Lcom/android/camera/ManualModule$PictureCallbackFactoryBase;

    .prologue
    .line 3408
    iput-object p1, p0, Lcom/android/camera/ManualModule$Memento;->pictureCallbackFactory:Lcom/android/camera/ManualModule$PictureCallbackFactoryBase;

    return-object p1
.end method

.method static synthetic access$5900(Lcom/android/camera/ManualModule$Memento;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule$Memento;

    .prologue
    .line 3408
    iget-boolean v0, p0, Lcom/android/camera/ManualModule$Memento;->mirror:Z

    return v0
.end method

.method static synthetic access$5902(Lcom/android/camera/ManualModule$Memento;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualModule$Memento;
    .param p1, "x1"    # Z

    .prologue
    .line 3408
    iput-boolean p1, p0, Lcom/android/camera/ManualModule$Memento;->mirror:Z

    return p1
.end method

.method static synthetic access$6000(Lcom/android/camera/ManualModule$Memento;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule$Memento;

    .prologue
    .line 3408
    iget v0, p0, Lcom/android/camera/ManualModule$Memento;->cameraId:I

    return v0
.end method

.method static synthetic access$6002(Lcom/android/camera/ManualModule$Memento;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualModule$Memento;
    .param p1, "x1"    # I

    .prologue
    .line 3408
    iput p1, p0, Lcom/android/camera/ManualModule$Memento;->cameraId:I

    return p1
.end method

.method static synthetic access$6100(Lcom/android/camera/ManualModule$Memento;)Lcom/android/ex/camera2/portability/CameraCapabilities;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule$Memento;

    .prologue
    .line 3408
    iget-object v0, p0, Lcom/android/camera/ManualModule$Memento;->cameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    return-object v0
.end method

.method static synthetic access$6102(Lcom/android/camera/ManualModule$Memento;Lcom/android/ex/camera2/portability/CameraCapabilities;)Lcom/android/ex/camera2/portability/CameraCapabilities;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualModule$Memento;
    .param p1, "x1"    # Lcom/android/ex/camera2/portability/CameraCapabilities;

    .prologue
    .line 3408
    iput-object p1, p0, Lcom/android/camera/ManualModule$Memento;->cameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    return-object p1
.end method

.method static synthetic access$6500(Lcom/android/camera/ManualModule$Memento;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule$Memento;

    .prologue
    .line 3408
    iget v0, p0, Lcom/android/camera/ManualModule$Memento;->jpegRotation:I

    return v0
.end method

.method static synthetic access$6502(Lcom/android/camera/ManualModule$Memento;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualModule$Memento;
    .param p1, "x1"    # I

    .prologue
    .line 3408
    iput p1, p0, Lcom/android/camera/ManualModule$Memento;->jpegRotation:I

    return p1
.end method

.method static synthetic access$6800(Lcom/android/camera/ManualModule$Memento;[BLcom/android/camera/exif/ExifInterface;ZILcom/android/camera/watermark/WatermarkViewData;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualModule$Memento;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Lcom/android/camera/exif/ExifInterface;
    .param p3, "x3"    # Z
    .param p4, "x4"    # I
    .param p5, "x5"    # Lcom/android/camera/watermark/WatermarkViewData;
    .param p6, "x6"    # Z

    .prologue
    .line 3408
    invoke-direct/range {p0 .. p6}, Lcom/android/camera/ManualModule$Memento;->updateThumbnailAndSave([BLcom/android/camera/exif/ExifInterface;ZILcom/android/camera/watermark/WatermarkViewData;Z)V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/camera/ManualModule$Memento;[BLcom/android/camera/exif/ExifInterface;ZZLcom/android/camera/watermark/WatermarkViewData;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualModule$Memento;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Lcom/android/camera/exif/ExifInterface;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .param p5, "x5"    # Lcom/android/camera/watermark/WatermarkViewData;
    .param p6, "x6"    # Z

    .prologue
    .line 3408
    invoke-direct/range {p0 .. p6}, Lcom/android/camera/ManualModule$Memento;->saveFinalPhoto([BLcom/android/camera/exif/ExifInterface;ZZLcom/android/camera/watermark/WatermarkViewData;Z)V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/camera/ManualModule$Memento;)Lcom/android/camera/ManualModule$MediaSaveListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule$Memento;

    .prologue
    .line 3408
    iget-object v0, p0, Lcom/android/camera/ManualModule$Memento;->onMediaSavedListener:Lcom/android/camera/ManualModule$MediaSaveListener;

    return-object v0
.end method

.method static synthetic access$7202(Lcom/android/camera/ManualModule$Memento;Lcom/android/camera/ManualModule$MediaSaveListener;)Lcom/android/camera/ManualModule$MediaSaveListener;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualModule$Memento;
    .param p1, "x1"    # Lcom/android/camera/ManualModule$MediaSaveListener;

    .prologue
    .line 3408
    iput-object p1, p0, Lcom/android/camera/ManualModule$Memento;->onMediaSavedListener:Lcom/android/camera/ManualModule$MediaSaveListener;

    return-object p1
.end method

.method static synthetic access$7300(Lcom/android/camera/ManualModule$Memento;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/ManualModule$Memento;

    .prologue
    .line 3408
    iget-wide v0, p0, Lcom/android/camera/ManualModule$Memento;->date:J

    return-wide v0
.end method

.method static synthetic access$7302(Lcom/android/camera/ManualModule$Memento;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule$Memento;
    .param p1, "x1"    # J

    .prologue
    .line 3408
    iput-wide p1, p0, Lcom/android/camera/ManualModule$Memento;->date:J

    return-wide p1
.end method

.method static synthetic access$7400(Lcom/android/camera/ManualModule$Memento;)Landroid/location/Location;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule$Memento;

    .prologue
    .line 3408
    iget-object v0, p0, Lcom/android/camera/ManualModule$Memento;->location:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$7402(Lcom/android/camera/ManualModule$Memento;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualModule$Memento;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 3408
    iput-object p1, p0, Lcom/android/camera/ManualModule$Memento;->location:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$7602(Lcom/android/camera/ManualModule$Memento;Lcom/android/ex/camera2/portability/CaptureIntent;)Lcom/android/ex/camera2/portability/CaptureIntent;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualModule$Memento;
    .param p1, "x1"    # Lcom/android/ex/camera2/portability/CaptureIntent;

    .prologue
    .line 3408
    iput-object p1, p0, Lcom/android/camera/ManualModule$Memento;->lastCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    return-object p1
.end method

.method static synthetic access$7702(Lcom/android/camera/ManualModule$Memento;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualModule$Memento;
    .param p1, "x1"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 3408
    iput-object p1, p0, Lcom/android/camera/ManualModule$Memento;->parameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$7802(Lcom/android/camera/ManualModule$Memento;Lcom/android/ex/camera2/portability/CameraSettings;)Lcom/android/ex/camera2/portability/CameraSettings;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualModule$Memento;
    .param p1, "x1"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    .line 3408
    iput-object p1, p0, Lcom/android/camera/ManualModule$Memento;->cameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    return-object p1
.end method

.method static synthetic access$7902(Lcom/android/camera/ManualModule$Memento;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualModule$Memento;
    .param p1, "x1"    # Z

    .prologue
    .line 3408
    iput-boolean p1, p0, Lcom/android/camera/ManualModule$Memento;->isImageCaptureIntent:Z

    return p1
.end method

.method static synthetic access$8002(Lcom/android/camera/ManualModule$Memento;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualModule$Memento;
    .param p1, "x1"    # Z

    .prologue
    .line 3408
    iput-boolean p1, p0, Lcom/android/camera/ManualModule$Memento;->shouldResizeTo16x9:Z

    return p1
.end method

.method static synthetic access$8102(Lcom/android/camera/ManualModule$Memento;Lcom/android/camera/hardware/HeadingSensor;)Lcom/android/camera/hardware/HeadingSensor;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualModule$Memento;
    .param p1, "x1"    # Lcom/android/camera/hardware/HeadingSensor;

    .prologue
    .line 3408
    iput-object p1, p0, Lcom/android/camera/ManualModule$Memento;->headingSensor:Lcom/android/camera/hardware/HeadingSensor;

    return-object p1
.end method

.method static synthetic access$8202(Lcom/android/camera/ManualModule$Memento;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule$Memento;
    .param p1, "x1"    # J

    .prologue
    .line 3408
    iput-wide p1, p0, Lcom/android/camera/ManualModule$Memento;->captureStartTime:J

    return-wide p1
.end method

.method static synthetic access$8302(Lcom/android/camera/ManualModule$Memento;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualModule$Memento;
    .param p1, "x1"    # Z

    .prologue
    .line 3408
    iput-boolean p1, p0, Lcom/android/camera/ManualModule$Memento;->compassTagEnabled:Z

    return p1
.end method

.method static synthetic access$8402(Lcom/android/camera/ManualModule$Memento;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualModule$Memento;
    .param p1, "x1"    # Z

    .prologue
    .line 3408
    iput-boolean p1, p0, Lcom/android/camera/ManualModule$Memento;->quickCapture:Z

    return p1
.end method

.method static synthetic access$8502(Lcom/android/camera/ManualModule$Memento;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualModule$Memento;
    .param p1, "x1"    # Z

    .prologue
    .line 3408
    iput-boolean p1, p0, Lcom/android/camera/ManualModule$Memento;->frontFlashTriggered:Z

    return p1
.end method

.method static synthetic access$8602(Lcom/android/camera/ManualModule$Memento;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualModule$Memento;
    .param p1, "x1"    # Z

    .prologue
    .line 3408
    iput-boolean p1, p0, Lcom/android/camera/ManualModule$Memento;->isFakeGenerated:Z

    return p1
.end method

.method static synthetic access$8702(Lcom/android/camera/ManualModule$Memento;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualModule$Memento;
    .param p1, "x1"    # Z

    .prologue
    .line 3408
    iput-boolean p1, p0, Lcom/android/camera/ManualModule$Memento;->isManualExposure:Z

    return p1
.end method

.method static synthetic access$8802(Lcom/android/camera/ManualModule$Memento;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualModule$Memento;
    .param p1, "x1"    # Z

    .prologue
    .line 3408
    iput-boolean p1, p0, Lcom/android/camera/ManualModule$Memento;->isIsoAuto:Z

    return p1
.end method

.method static synthetic access$9002(Lcom/android/camera/ManualModule$Memento;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualModule$Memento;
    .param p1, "x1"    # I

    .prologue
    .line 3408
    iput p1, p0, Lcom/android/camera/ManualModule$Memento;->detectedISO:I

    return p1
.end method

.method private addThumbnail([BLcom/android/camera/exif/ExifInterface;ZILcom/android/camera/watermark/WatermarkViewData;Z)V
    .locals 9
    .param p1, "originalJpegData"    # [B
    .param p2, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p3, "overrideExif"    # Z
    .param p4, "rotation"    # I
    .param p5, "watermarkViewData"    # Lcom/android/camera/watermark/WatermarkViewData;
    .param p6, "fakeImage"    # Z

    .prologue
    .line 3511
    new-instance v8, Lcom/android/camera/ManualModule$AddThumbnailBundle;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lcom/android/camera/ManualModule$AddThumbnailBundle;-><init>(Lcom/android/camera/ManualModule$1;)V

    .line 3512
    .local v8, "dataBundle":Lcom/android/camera/ManualModule$AddThumbnailBundle;
    iput-object p1, v8, Lcom/android/camera/ManualModule$AddThumbnailBundle;->jpegData:[B

    .line 3513
    iput-object p2, v8, Lcom/android/camera/ManualModule$AddThumbnailBundle;->exif:Lcom/android/camera/exif/ExifInterface;

    .line 3514
    new-instance v0, Lcom/android/camera/ManualModule$Memento$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ManualModule$Memento$2;-><init>(Lcom/android/camera/ManualModule$Memento;[BLcom/android/camera/exif/ExifInterface;ZILcom/android/camera/watermark/WatermarkViewData;Z)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/camera/ManualModule$AddThumbnailBundle;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    .line 3529
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ManualModule$Memento$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3530
    return-void
.end method

.method private calculateImageHeight(Lcom/android/camera/exif/ExifInterface;I)I
    .locals 4
    .param p1, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p2, "orientation"    # I

    .prologue
    .line 3718
    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    invoke-virtual {p1, v3}, Lcom/android/camera/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3720
    .local v0, "exifHeight":Ljava/lang/Integer;
    iget-boolean v3, p0, Lcom/android/camera/ManualModule$Memento;->shouldResizeTo16x9:Z

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 3721
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3731
    .local v1, "height":I
    :goto_0
    return v1

    .line 3723
    .end local v1    # "height":I
    :cond_0
    new-instance v2, Lcom/android/camera/util/Size;

    iget-object v3, p0, Lcom/android/camera/ManualModule$Memento;->cameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPhotoSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/camera/util/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    .line 3724
    .local v2, "s":Lcom/android/camera/util/Size;
    iget v3, p0, Lcom/android/camera/ManualModule$Memento;->jpegRotation:I

    add-int/2addr v3, p2

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_1

    .line 3725
    invoke-virtual {v2}, Lcom/android/camera/util/Size;->height()I

    move-result v1

    .restart local v1    # "height":I
    goto :goto_0

    .line 3727
    .end local v1    # "height":I
    :cond_1
    invoke-virtual {v2}, Lcom/android/camera/util/Size;->width()I

    move-result v1

    .restart local v1    # "height":I
    goto :goto_0
.end method

.method private calculateImageWidth(Lcom/android/camera/exif/ExifInterface;I)I
    .locals 4
    .param p1, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p2, "orientation"    # I

    .prologue
    .line 3701
    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    invoke-virtual {p1, v3}, Lcom/android/camera/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3703
    .local v0, "exifWidth":Ljava/lang/Integer;
    iget-boolean v3, p0, Lcom/android/camera/ManualModule$Memento;->shouldResizeTo16x9:Z

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 3704
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3714
    .local v2, "width":I
    :goto_0
    return v2

    .line 3706
    .end local v2    # "width":I
    :cond_0
    new-instance v1, Lcom/android/camera/util/Size;

    iget-object v3, p0, Lcom/android/camera/ManualModule$Memento;->cameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPhotoSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/camera/util/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    .line 3707
    .local v1, "s":Lcom/android/camera/util/Size;
    iget v3, p0, Lcom/android/camera/ManualModule$Memento;->jpegRotation:I

    add-int/2addr v3, p2

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_1

    .line 3708
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->width()I

    move-result v2

    .restart local v2    # "width":I
    goto :goto_0

    .line 3710
    .end local v2    # "width":I
    :cond_1
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->height()I

    move-result v2

    .restart local v2    # "width":I
    goto :goto_0
.end method

.method private isPostProcessing(Lcom/android/ex/camera2/portability/CaptureIntent;)Z
    .locals 1
    .param p1, "capture"    # Lcom/android/ex/camera2/portability/CaptureIntent;

    .prologue
    .line 3468
    sget-object v0, Lcom/android/ex/camera2/portability/CaptureIntent;->DENOISE:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/ex/camera2/portability/CaptureIntent;->HDR:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/ex/camera2/portability/CaptureIntent;->LOWLIGHT:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resizeAndSave([BLcom/android/camera/exif/ExifInterface;ZZLcom/android/camera/watermark/WatermarkViewData;Z)V
    .locals 7
    .param p1, "originalJpegData"    # [B
    .param p2, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p3, "needThumbnail"    # Z
    .param p4, "overrideExif"    # Z
    .param p5, "watermarkViewData"    # Lcom/android/camera/watermark/WatermarkViewData;
    .param p6, "fakeImage"    # Z

    .prologue
    .line 3566
    new-instance v6, Lcom/android/camera/ManualModule$ResizeBundle;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/android/camera/ManualModule$ResizeBundle;-><init>(Lcom/android/camera/ManualModule$1;)V

    .line 3567
    .local v6, "dataBundle":Lcom/android/camera/ManualModule$ResizeBundle;
    iput-object p1, v6, Lcom/android/camera/ManualModule$ResizeBundle;->jpegData:[B

    .line 3568
    const v0, 0x3fe38e39

    iput v0, v6, Lcom/android/camera/ManualModule$ResizeBundle;->targetAspectRatio:F

    .line 3569
    iput-object p2, v6, Lcom/android/camera/ManualModule$ResizeBundle;->exif:Lcom/android/camera/exif/ExifInterface;

    .line 3570
    new-instance v0, Lcom/android/camera/ManualModule$Memento$3;

    move-object v1, p0

    move v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ManualModule$Memento$3;-><init>(Lcom/android/camera/ManualModule$Memento;ZZLcom/android/camera/watermark/WatermarkViewData;Z)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/camera/ManualModule$ResizeBundle;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    .line 3581
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ManualModule$Memento$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3582
    return-void
.end method

.method private saveFinalPhoto([BLcom/android/camera/exif/ExifInterface;ZZLcom/android/camera/watermark/WatermarkViewData;Z)V
    .locals 2
    .param p1, "jpegData"    # [B
    .param p2, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p3, "needThumbnail"    # Z
    .param p4, "needOverrideRotation"    # Z
    .param p5, "watermarkViewData"    # Lcom/android/camera/watermark/WatermarkViewData;
    .param p6, "fakeImage"    # Z

    .prologue
    .line 3585
    iget-boolean v0, p0, Lcom/android/camera/ManualModule$Memento;->isImageCaptureIntent:Z

    if-nez v0, :cond_0

    .line 3586
    invoke-direct/range {p0 .. p6}, Lcom/android/camera/ManualModule$Memento;->savePhotoForNonImageCaptureIntent([BLcom/android/camera/exif/ExifInterface;ZZLcom/android/camera/watermark/WatermarkViewData;Z)V

    .line 3589
    :cond_0
    if-nez p5, :cond_1

    iget-object v0, p0, Lcom/android/camera/ManualModule$Memento;->saveCb:Lcom/android/camera/ManualModule$SavePictureCallback;

    invoke-interface {v0}, Lcom/android/camera/ManualModule$SavePictureCallback;->isNotifyRemoteShutterListner()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3592
    iget-object v0, p0, Lcom/android/camera/ManualModule$Memento;->this$0:Lcom/android/camera/ManualModule;

    invoke-virtual {v0}, Lcom/android/camera/ManualModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/remote/RemoteShutterListener;->onPictureTaken([B)V

    .line 3599
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ManualModule$Memento;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$1000(Lcom/android/camera/ManualModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V

    .line 3600
    return-void
.end method

.method private saveJpegData([BLcom/android/camera/ManualModule$SavePictureCallback;)V
    .locals 15
    .param p1, "originalJpegData"    # [B
    .param p2, "saveCb"    # Lcom/android/camera/ManualModule$SavePictureCallback;

    .prologue
    .line 3472
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/camera/ManualModule$Memento;->saveCb:Lcom/android/camera/ManualModule$SavePictureCallback;

    .line 3474
    invoke-static/range {p1 .. p1}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v9

    .line 3475
    .local v9, "exif":Lcom/android/camera/exif/ExifInterface;
    invoke-static {v9}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v14

    .line 3476
    .local v14, "rotation":I
    iget-object v2, p0, Lcom/android/camera/ManualModule$Memento;->cameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->HW_ROTATE:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v11

    .line 3477
    .local v11, "hw_rotate_support":Z
    if-nez v11, :cond_3

    invoke-static {}, Lcom/android/camera/product_utils/ProductUtil;->isSupportedLib2DRotate()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ManualModule$Memento;->lastCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    sget-object v3, Lcom/android/ex/camera2/portability/CaptureIntent;->Normal:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-eq v2, v3, :cond_3

    :cond_0
    const/4 v13, 0x1

    .line 3478
    .local v13, "overrideRotate":Z
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ManualModule$Memento;->lastCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    sget-object v3, Lcom/android/ex/camera2/portability/CaptureIntent;->Normal:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-eq v2, v3, :cond_4

    const/4 v12, 0x1

    .line 3480
    .local v12, "overrideExif":Z
    :goto_1
    invoke-static {}, Lcom/android/camera/ManualModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exif.getOrientation(exif) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3481
    invoke-static {}, Lcom/android/camera/ManualModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mLastCaptureIntent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ManualModule$Memento;->lastCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3482
    invoke-static {}, Lcom/android/camera/ManualModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HW_ROTATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3483
    invoke-static {}, Lcom/android/camera/ManualModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needOverrideRotation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", overrideExif = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3485
    if-eqz v13, :cond_1

    .line 3486
    iget v14, p0, Lcom/android/camera/ManualModule$Memento;->jpegRotation:I

    .line 3489
    :cond_1
    if-eqz v12, :cond_2

    .line 3490
    new-instance v1, Lcom/android/camera/util/ExifUtil$CaptureMetaData;

    iget-object v2, p0, Lcom/android/camera/ManualModule$Memento;->lastCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    iget-object v3, p0, Lcom/android/camera/ManualModule$Memento;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v3}, Lcom/android/camera/ManualModule;->access$4000(Lcom/android/camera/ManualModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ManualModule$Memento;->this$0:Lcom/android/camera/ManualModule;

    .line 3491
    invoke-static {v4}, Lcom/android/camera/ManualModule;->access$2900(Lcom/android/camera/ManualModule;)Lcom/android/camera/FocusOverlayManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/FocusOverlayManager;->getFocusState()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/ManualModule$Memento;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v5}, Lcom/android/camera/ManualModule;->access$6600(Lcom/android/camera/ManualModule;)Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/camera/ManualModule$Memento;->isManualExposure:Z

    iget-boolean v7, p0, Lcom/android/camera/ManualModule$Memento;->isIsoAuto:Z

    iget v8, p0, Lcom/android/camera/ManualModule$Memento;->detectedISO:I

    invoke-direct/range {v1 .. v8}, Lcom/android/camera/util/ExifUtil$CaptureMetaData;-><init>(Lcom/android/ex/camera2/portability/CaptureIntent;Lcom/android/camera/async/LockableConcurrentState;ILcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;ZZI)V

    .line 3493
    .local v1, "metaData":Lcom/android/camera/util/ExifUtil$CaptureMetaData;
    iget-object v2, p0, Lcom/android/camera/ManualModule$Memento;->cameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getCameraCapabilitiesExtension()Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ManualModule$Memento;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v9, v3, v1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->buildExifInfo(Lcom/android/camera/exif/ExifInterface;Landroid/hardware/Camera$Parameters;Lcom/android/camera/util/ExifUtil$CaptureMetaData;)V

    .line 3496
    .end local v1    # "metaData":Lcom/android/camera/util/ExifUtil$CaptureMetaData;
    :cond_2
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/ManualModule$SavePictureCallback;->isUseWaterMark()Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v7, 0x0

    .line 3502
    .local v7, "watermarkViewData":Lcom/android/camera/watermark/WatermarkViewData;
    :goto_2
    invoke-virtual {v9}, Lcom/android/camera/exif/ExifInterface;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    .line 3503
    .local v10, "exifThumbnail":Landroid/graphics/Bitmap;
    if-nez v10, :cond_7

    if-nez v7, :cond_7

    .line 3504
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/ManualModule$SavePictureCallback;->isFakeImage()Z

    move-result v8

    move-object v2, p0

    move-object/from16 v3, p1

    move-object v4, v9

    move v5, v13

    move v6, v14

    invoke-direct/range {v2 .. v8}, Lcom/android/camera/ManualModule$Memento;->addThumbnail([BLcom/android/camera/exif/ExifInterface;ZILcom/android/camera/watermark/WatermarkViewData;Z)V

    .line 3508
    :goto_3
    return-void

    .line 3477
    .end local v7    # "watermarkViewData":Lcom/android/camera/watermark/WatermarkViewData;
    .end local v10    # "exifThumbnail":Landroid/graphics/Bitmap;
    .end local v12    # "overrideExif":Z
    .end local v13    # "overrideRotate":Z
    :cond_3
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 3478
    .restart local v13    # "overrideRotate":Z
    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 3496
    .restart local v12    # "overrideExif":Z
    :cond_5
    iget-object v2, p0, Lcom/android/camera/ManualModule$Memento;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v2}, Lcom/android/camera/ManualModule;->access$1000(Lcom/android/camera/ManualModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getWatermarkManager()Lcom/android/camera/WatermarkManager;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/camera/ManualModule$Memento;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v2}, Lcom/android/camera/ManualModule;->access$1000(Lcom/android/camera/ManualModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getWatermarkManager()Lcom/android/camera/WatermarkManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ManualModule$Memento;->cameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPhotoSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ManualModule$Memento;->cameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPhotoSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/WatermarkManager;->getData(II)Lcom/android/camera/watermark/WatermarkViewData;

    move-result-object v7

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    goto :goto_2

    .line 3506
    .restart local v7    # "watermarkViewData":Lcom/android/camera/watermark/WatermarkViewData;
    .restart local v10    # "exifThumbnail":Landroid/graphics/Bitmap;
    :cond_7
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/ManualModule$SavePictureCallback;->isFakeImage()Z

    move-result v8

    move-object v2, p0

    move-object/from16 v3, p1

    move-object v4, v9

    move v5, v13

    move v6, v14

    invoke-direct/range {v2 .. v8}, Lcom/android/camera/ManualModule$Memento;->updateThumbnailAndSave([BLcom/android/camera/exif/ExifInterface;ZILcom/android/camera/watermark/WatermarkViewData;Z)V

    goto :goto_3
.end method

.method private saveOrUpdateImage([BIILcom/android/camera/exif/ExifInterface;ZIZ)V
    .locals 25
    .param p1, "jpegData"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p5, "needThumbnail"    # Z
    .param p6, "orientation"    # I
    .param p7, "isFakeImage"    # Z

    .prologue
    .line 3658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ManualModule$Memento;->pictureCallbackFactory:Lcom/android/camera/ManualModule$PictureCallbackFactoryBase;

    invoke-virtual {v2}, Lcom/android/camera/ManualModule$PictureCallbackFactoryBase;->needFakeImage()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p7, :cond_0

    .line 3659
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ManualModule$Memento;->onMediaSavedListener:Lcom/android/camera/ManualModule$MediaSaveListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ManualModule$Memento;->saveCb:Lcom/android/camera/ManualModule$SavePictureCallback;

    move-object/from16 v0, p0

    invoke-interface {v3, v0}, Lcom/android/camera/ManualModule$SavePictureCallback;->getTitle(Lcom/android/camera/ManualModule$Memento;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/camera/ManualModule$Memento;->date:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/ManualModule$Memento;->location:Landroid/location/Location;

    move/from16 v7, p6

    move-object/from16 v8, p4

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-virtual/range {v2 .. v11}, Lcom/android/camera/ManualModule$MediaSaveListener;->updateImage(Ljava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BII)V

    .line 3697
    :goto_0
    return-void

    .line 3662
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ManualModule$Memento;->pictureCallbackFactory:Lcom/android/camera/ManualModule$PictureCallbackFactoryBase;

    invoke-virtual {v2}, Lcom/android/camera/ManualModule$PictureCallbackFactoryBase;->needFakeImage()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p7, :cond_2

    const/4 v12, 0x1

    .line 3663
    .local v12, "isFake":Z
    :goto_1
    if-eqz v12, :cond_3

    const-string v11, "image/fake"

    .line 3665
    .local v11, "mime":Ljava/lang/String;
    :goto_2
    if-eqz v12, :cond_1

    .line 3666
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/ManualModule$Memento;->isFakeGenerated:Z

    .line 3668
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ManualModule$Memento;->saveCb:Lcom/android/camera/ManualModule$SavePictureCallback;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/android/camera/ManualModule$SavePictureCallback;->getTitle(Lcom/android/camera/ManualModule$Memento;)Ljava/lang/String;

    move-result-object v6

    .line 3671
    .local v6, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ManualModule$Memento;->future:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v2}, Lcom/google/common/util/concurrent/SettableFuture;->isDone()Z

    move-result v2

    if-nez v2, :cond_4

    .line 3672
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ManualModule$Memento;->future:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v2, Lcom/android/camera/ManualModule$Memento$4;

    move-object/from16 v3, p0

    move/from16 v4, p5

    move-object/from16 v5, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p6

    move-object/from16 v10, p4

    invoke-direct/range {v2 .. v11}, Lcom/android/camera/ManualModule$Memento$4;-><init>(Lcom/android/camera/ManualModule$Memento;Z[BLjava/lang/String;IIILcom/android/camera/exif/ExifInterface;Ljava/lang/String;)V

    .line 3688
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v3

    .line 3672
    invoke-virtual {v13, v2, v3}, Lcom/google/common/util/concurrent/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    .line 3662
    .end local v6    # "title":Ljava/lang/String;
    .end local v11    # "mime":Ljava/lang/String;
    .end local v12    # "isFake":Z
    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    .line 3663
    .restart local v12    # "isFake":Z
    :cond_3
    const-string v11, "image/jpeg"

    goto :goto_2

    .line 3690
    .restart local v6    # "title":Ljava/lang/String;
    .restart local v11    # "mime":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/android/camera/ManualModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "save fake image for post process normal case"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3691
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ManualModule$Memento;->onMediaSavedListener:Lcom/android/camera/ManualModule$MediaSaveListener;

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Lcom/android/camera/ManualModule$MediaSaveListener;->setNeedThumbnail(Z)V

    .line 3692
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ManualModule$Memento;->this$0:Lcom/android/camera/ManualModule;

    invoke-virtual {v2}, Lcom/android/camera/ManualModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/CameraServices;->getMediaSaver()Lcom/android/camera/app/MediaSaver;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/ManualModule$Memento;->date:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ManualModule$Memento;->location:Landroid/location/Location;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ManualModule$Memento;->onMediaSavedListener:Lcom/android/camera/ManualModule$MediaSaveListener;

    move-object/from16 v23, v0

    move-object/from16 v14, p1

    move-object v15, v6

    move/from16 v19, p2

    move/from16 v20, p3

    move/from16 v21, p6

    move-object/from16 v22, p4

    move-object/from16 v24, v11

    invoke-interface/range {v13 .. v24}, Lcom/android/camera/app/MediaSaver;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private savePhotoForNonImageCaptureIntent([BLcom/android/camera/exif/ExifInterface;ZZLcom/android/camera/watermark/WatermarkViewData;Z)V
    .locals 27
    .param p1, "jpegData"    # [B
    .param p2, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p3, "needThumbnail"    # Z
    .param p4, "needOverrideRotation"    # Z
    .param p5, "watermarkViewData"    # Lcom/android/camera/watermark/WatermarkViewData;
    .param p6, "fakeImage"    # Z

    .prologue
    .line 3603
    invoke-static/range {p2 .. p2}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v7

    .line 3605
    .local v7, "orientation":I
    if-eqz p4, :cond_0

    .line 3606
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/camera/ManualModule$Memento;->jpegRotation:I

    .line 3609
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ManualModule$Memento;->saveCb:Lcom/android/camera/ManualModule$SavePictureCallback;

    move-object/from16 v0, p0

    invoke-interface {v4, v0}, Lcom/android/camera/ManualModule$SavePictureCallback;->getTitle(Lcom/android/camera/ManualModule$Memento;)Ljava/lang/String;

    move-result-object v9

    .line 3610
    .local v9, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/camera/ManualModule$Memento;->date:J

    const-wide/16 v12, 0x0

    cmp-long v4, v4, v12

    if-nez v4, :cond_1

    const-wide/16 v10, -0x1

    .line 3611
    .local v10, "date":J
    :goto_0
    invoke-static {}, Lcom/android/camera/ManualModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveFinalPhoto title = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", date = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " watermarkViewData "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3613
    if-eqz p5, :cond_2

    .line 3614
    invoke-static {}, Lcom/android/camera/ManualModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v5, "addWatermarkImage"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3615
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ManualModule$Memento;->cameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->HW_ROTATE:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v4, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v18

    .line 3616
    .local v18, "hw_rotate_support":Z
    invoke-static {}, Lcom/android/camera/watermark/WatermarkImageSaver;->getInstance()Lcom/android/camera/watermark/WatermarkImageSaver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ManualModule$Memento;->this$0:Lcom/android/camera/ManualModule;

    invoke-virtual {v5}, Lcom/android/camera/ManualModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ManualModule$Memento;->location:Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ManualModule$Memento;->onMediaSavedListener:Lcom/android/camera/ManualModule$MediaSaveListener;

    move-object/from16 v5, p1

    move-object/from16 v6, p5

    move-object/from16 v8, p0

    move-wide v15, v10

    move-object/from16 v17, p2

    invoke-virtual/range {v4 .. v18}, Lcom/android/camera/watermark/WatermarkImageSaver;->addWatermarkImage([BLcom/android/camera/watermark/WatermarkViewData;ILcom/android/camera/watermark/WatermarkImageSaver$WatermarkImageSavedCallback;Ljava/lang/String;JLcom/android/camera/app/CameraServices;Landroid/location/Location;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;JLcom/android/camera/exif/ExifInterface;Z)V

    .line 3625
    .end local v18    # "hw_rotate_support":Z
    :goto_1
    return-void

    .line 3610
    .end local v10    # "date":J
    :cond_1
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/camera/ManualModule$Memento;->date:J

    goto :goto_0

    .line 3619
    .restart local v10    # "date":J
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/android/camera/ManualModule$Memento;->setExifTag(Lcom/android/camera/exif/ExifInterface;Z)V

    .line 3621
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v7}, Lcom/android/camera/ManualModule$Memento;->calculateImageWidth(Lcom/android/camera/exif/ExifInterface;I)I

    move-result v21

    .line 3622
    .local v21, "width":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v7}, Lcom/android/camera/ManualModule$Memento;->calculateImageHeight(Lcom/android/camera/exif/ExifInterface;I)I

    move-result v22

    .local v22, "height":I
    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v23, p2

    move/from16 v24, p3

    move/from16 v25, v7

    move/from16 v26, p6

    .line 3623
    invoke-direct/range {v19 .. v26}, Lcom/android/camera/ManualModule$Memento;->saveOrUpdateImage([BIILcom/android/camera/exif/ExifInterface;ZIZ)V

    goto :goto_1
.end method

.method private setExifTag(Lcom/android/camera/exif/ExifInterface;Z)V
    .locals 14
    .param p1, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p2, "needOverrideRotation"    # Z

    .prologue
    .line 3628
    invoke-static {p1}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v5

    .line 3630
    .local v5, "orientation":I
    if-eqz p2, :cond_0

    .line 3631
    iget v5, p0, Lcom/android/camera/ManualModule$Memento;->jpegRotation:I

    .line 3634
    :cond_0
    iget-object v7, p0, Lcom/android/camera/ManualModule$Memento;->headingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v7}, Lcom/android/camera/hardware/HeadingSensor;->getCurrentHeading()I

    move-result v4

    .line 3635
    .local v4, "heading":I
    iget-boolean v7, p0, Lcom/android/camera/ManualModule$Memento;->compassTagEnabled:Z

    if-nez v7, :cond_4

    const/4 v2, 0x0

    .line 3636
    .local v2, "enabled":Z
    :goto_0
    const/4 v7, -0x1

    if-eq v4, v7, :cond_1

    .line 3638
    if-eqz v2, :cond_1

    .line 3639
    sget v7, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    const-string v8, "M"

    invoke-virtual {p1, v7, v8}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    .line 3640
    .local v0, "directionRefTag":Lcom/android/camera/exif/ExifTag;
    sget v7, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    new-instance v8, Lcom/android/camera/exif/Rational;

    int-to-long v10, v4

    const-wide/16 v12, 0x1

    invoke-direct {v8, v10, v11, v12, v13}, Lcom/android/camera/exif/Rational;-><init>(JJ)V

    invoke-virtual {p1, v7, v8}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    .line 3641
    .local v1, "directionTag":Lcom/android/camera/exif/ExifTag;
    invoke-virtual {p1, v0}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 3642
    invoke-virtual {p1, v1}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 3646
    .end local v0    # "directionRefTag":Lcom/android/camera/exif/ExifTag;
    .end local v1    # "directionTag":Lcom/android/camera/exif/ExifTag;
    :cond_1
    iget-boolean v7, p0, Lcom/android/camera/ManualModule$Memento;->frontFlashTriggered:Z

    if-eqz v7, :cond_2

    .line 3647
    sget v7, Lcom/android/camera/exif/ExifInterface;->TAG_FLASH:I

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v3

    .line 3648
    .local v3, "flashTag":Lcom/android/camera/exif/ExifTag;
    invoke-virtual {p1, v3}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 3651
    .end local v3    # "flashTag":Lcom/android/camera/exif/ExifTag;
    :cond_2
    if-eqz p2, :cond_3

    .line 3652
    sget v7, Lcom/android/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-static {v5}, Lcom/android/camera/exif/ExifInterface;->getOrientationValueForRotation(I)S

    move-result v8

    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v6

    .line 3653
    .local v6, "rotationTag":Lcom/android/camera/exif/ExifTag;
    invoke-virtual {p1, v6}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 3655
    .end local v6    # "rotationTag":Lcom/android/camera/exif/ExifTag;
    :cond_3
    return-void

    .line 3635
    .end local v2    # "enabled":Z
    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private updateThumbnailAndSave([BLcom/android/camera/exif/ExifInterface;ZILcom/android/camera/watermark/WatermarkViewData;Z)V
    .locals 8
    .param p1, "originalJpegData"    # [B
    .param p2, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p3, "overrideExif"    # Z
    .param p4, "rotation"    # I
    .param p5, "watermarkViewData"    # Lcom/android/camera/watermark/WatermarkViewData;
    .param p6, "fakeImage"    # Z

    .prologue
    .line 3534
    iget-boolean v0, p0, Lcom/android/camera/ManualModule$Memento;->isImageCaptureIntent:Z

    if-nez v0, :cond_3

    if-nez p5, :cond_3

    .line 3535
    invoke-virtual {p2}, Lcom/android/camera/exif/ExifInterface;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 3536
    .local v7, "thumbnail":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_2

    .line 3537
    invoke-static {}, Lcom/android/camera/ManualModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "exif.getThumbnailBitmap available"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3538
    invoke-static {}, Lcom/android/camera/ManualModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveCb.isUpdateThumbnail() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ManualModule$Memento;->saveCb:Lcom/android/camera/ManualModule$SavePictureCallback;

    invoke-interface {v2}, Lcom/android/camera/ManualModule$SavePictureCallback;->isUpdateThumbnail()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3539
    iget-object v0, p0, Lcom/android/camera/ManualModule$Memento;->saveCb:Lcom/android/camera/ManualModule$SavePictureCallback;

    invoke-interface {v0}, Lcom/android/camera/ManualModule$SavePictureCallback;->isUpdateThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3540
    iget-object v0, p0, Lcom/android/camera/ManualModule$Memento;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$600(Lcom/android/camera/ManualModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ManualModule$Memento;->this$0:Lcom/android/camera/ManualModule;

    invoke-virtual {v1}, Lcom/android/camera/ManualModule;->getPeekAccessibilityString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/app/CameraAppUI;->startCaptureIndicatorRevealAnimation(Ljava/lang/String;Z)V

    .line 3541
    iget-object v0, p0, Lcom/android/camera/ManualModule$Memento;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$600(Lcom/android/camera/ManualModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v7, p4}, Lcom/android/camera/app/CameraAppUI;->updateCaptureIndicatorThumbnail(Landroid/graphics/Bitmap;I)V

    .line 3542
    const/4 v0, 0x7

    invoke-static {v0}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 3544
    :cond_0
    const/4 v3, 0x0

    .line 3551
    .end local v7    # "thumbnail":Landroid/graphics/Bitmap;
    .local v3, "needThumbnail":Z
    :goto_0
    invoke-static {}, Lcom/android/camera/ManualModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needThumbnail : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3553
    iget-object v0, p0, Lcom/android/camera/ManualModule$Memento;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$2000(Lcom/android/camera/ManualModule;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3554
    iget-object v0, p0, Lcom/android/camera/ManualModule$Memento;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$2000(Lcom/android/camera/ManualModule;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 3555
    iget-object v0, p0, Lcom/android/camera/ManualModule$Memento;->this$0:Lcom/android/camera/ManualModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ManualModule;->access$2002(Lcom/android/camera/ManualModule;Lcom/android/camera/stats/profiler/Profile;)Lcom/android/camera/stats/profiler/Profile;

    .line 3558
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ManualModule$Memento;->shouldResizeTo16x9:Z

    if-eqz v0, :cond_4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p5

    move v6, p6

    .line 3559
    invoke-direct/range {v0 .. v6}, Lcom/android/camera/ManualModule$Memento;->resizeAndSave([BLcom/android/camera/exif/ExifInterface;ZZLcom/android/camera/watermark/WatermarkViewData;Z)V

    .line 3563
    :goto_1
    return-void

    .line 3546
    .end local v3    # "needThumbnail":Z
    .restart local v7    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_2
    const/4 v3, 0x1

    .restart local v3    # "needThumbnail":Z
    goto :goto_0

    .line 3549
    .end local v3    # "needThumbnail":Z
    .end local v7    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "needThumbnail":Z
    goto :goto_0

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p5

    move v6, p6

    .line 3561
    invoke-direct/range {v0 .. v6}, Lcom/android/camera/ManualModule$Memento;->saveFinalPhoto([BLcom/android/camera/exif/ExifInterface;ZZLcom/android/camera/watermark/WatermarkViewData;Z)V

    goto :goto_1
.end method


# virtual methods
.method public onPictureSave([BIILcom/android/camera/exif/ExifInterface;ZI)Z
    .locals 8
    .param p1, "jpeg"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p5, "needThumbnail"    # Z
    .param p6, "orientation"    # I

    .prologue
    .line 3449
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ManualModule$Memento;->saveOrUpdateImage([BIILcom/android/camera/exif/ExifInterface;ZIZ)V

    .line 3451
    const/4 v0, 0x1

    return v0
.end method

.method public onPictureSaveFinished([B)V
    .locals 2
    .param p1, "jpeg"    # [B

    .prologue
    .line 3458
    iget-object v0, p0, Lcom/android/camera/ManualModule$Memento;->this$0:Lcom/android/camera/ManualModule;

    invoke-virtual {v0}, Lcom/android/camera/ManualModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/remote/RemoteShutterListener;->onPictureTaken([B)V

    .line 3464
    iget-object v0, p0, Lcom/android/camera/ManualModule$Memento;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$1000(Lcom/android/camera/ManualModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V

    .line 3465
    return-void
.end method

.method public onThumbnailUpdate(ILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 3437
    iget-object v0, p0, Lcom/android/camera/ManualModule$Memento;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$3500(Lcom/android/camera/ManualModule;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/ManualModule$Memento$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/camera/ManualModule$Memento$1;-><init>(Lcom/android/camera/ManualModule$Memento;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3445
    return-void
.end method
