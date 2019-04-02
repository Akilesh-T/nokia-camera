.class Lcom/android/camera/PhotoModule$Memento;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Lcom/android/camera/watermark/WatermarkImageSaver$WatermarkImageSavedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoModule;
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

.field private jpegRotation:I

.field private lastCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

.field private location:Landroid/location/Location;

.field private mirror:Z

.field private onMediaSavedListener:Lcom/android/camera/PhotoModule$MediaSaveListener;

.field private parameters:Landroid/hardware/Camera$Parameters;

.field private pictureCallbackFactory:Lcom/android/camera/PhotoModule$PictureCallbackFactoryBase;

.field private quickCapture:Z

.field private saveCb:Lcom/android/camera/PhotoModule$SavePictureCallback;

.field private shouldResizeTo16x9:Z

.field final synthetic this$0:Lcom/android/camera/PhotoModule;

.field private title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 1

    .prologue
    .line 1296
    iput-object p1, p0, Lcom/android/camera/PhotoModule$Memento;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1297
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule$Memento;->future:Lcom/google/common/util/concurrent/SettableFuture;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/PhotoModule;
    .param p2, "x1"    # Lcom/android/camera/PhotoModule$1;

    .prologue
    .line 1296
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule$Memento;-><init>(Lcom/android/camera/PhotoModule;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/camera/PhotoModule$Memento;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule$Memento;

    .prologue
    .line 1296
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule$Memento;->mirror:Z

    return v0
.end method

.method static synthetic access$4202(Lcom/android/camera/PhotoModule$Memento;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule$Memento;
    .param p1, "x1"    # Z

    .prologue
    .line 1296
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule$Memento;->mirror:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/android/camera/PhotoModule$Memento;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule$Memento;

    .prologue
    .line 1296
    iget v0, p0, Lcom/android/camera/PhotoModule$Memento;->cameraId:I

    return v0
.end method

.method static synthetic access$4302(Lcom/android/camera/PhotoModule$Memento;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule$Memento;
    .param p1, "x1"    # I

    .prologue
    .line 1296
    iput p1, p0, Lcom/android/camera/PhotoModule$Memento;->cameraId:I

    return p1
.end method

.method static synthetic access$4400(Lcom/android/camera/PhotoModule$Memento;)Lcom/android/ex/camera2/portability/CameraCapabilities;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule$Memento;

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/android/camera/PhotoModule$Memento;->cameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/android/camera/PhotoModule$Memento;Lcom/android/ex/camera2/portability/CameraCapabilities;)Lcom/android/ex/camera2/portability/CameraCapabilities;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule$Memento;
    .param p1, "x1"    # Lcom/android/ex/camera2/portability/CameraCapabilities;

    .prologue
    .line 1296
    iput-object p1, p0, Lcom/android/camera/PhotoModule$Memento;->cameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/android/camera/PhotoModule$Memento;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule$Memento;

    .prologue
    .line 1296
    iget v0, p0, Lcom/android/camera/PhotoModule$Memento;->jpegRotation:I

    return v0
.end method

.method static synthetic access$4802(Lcom/android/camera/PhotoModule$Memento;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule$Memento;
    .param p1, "x1"    # I

    .prologue
    .line 1296
    iput p1, p0, Lcom/android/camera/PhotoModule$Memento;->jpegRotation:I

    return p1
.end method

.method static synthetic access$4900(Lcom/android/camera/PhotoModule$Memento;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule$Memento;

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/android/camera/PhotoModule$Memento;->title:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/android/camera/PhotoModule$Memento;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule$Memento;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1296
    iput-object p1, p0, Lcom/android/camera/PhotoModule$Memento;->title:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5000(Lcom/android/camera/PhotoModule$Memento;[BLcom/android/camera/PhotoModule$SavePictureCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule$Memento;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Lcom/android/camera/PhotoModule$SavePictureCallback;

    .prologue
    .line 1296
    invoke-direct {p0, p1, p2}, Lcom/android/camera/PhotoModule$Memento;->saveJpegData([BLcom/android/camera/PhotoModule$SavePictureCallback;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/camera/PhotoModule$Memento;[BLcom/android/camera/exif/ExifInterface;ZILcom/android/camera/watermark/WatermarkViewData;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule$Memento;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Lcom/android/camera/exif/ExifInterface;
    .param p3, "x3"    # Z
    .param p4, "x4"    # I
    .param p5, "x5"    # Lcom/android/camera/watermark/WatermarkViewData;
    .param p6, "x6"    # Z

    .prologue
    .line 1296
    invoke-direct/range {p0 .. p6}, Lcom/android/camera/PhotoModule$Memento;->updateThumbnailAndSave([BLcom/android/camera/exif/ExifInterface;ZILcom/android/camera/watermark/WatermarkViewData;Z)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/camera/PhotoModule$Memento;[BLcom/android/camera/exif/ExifInterface;ZZLcom/android/camera/watermark/WatermarkViewData;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule$Memento;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Lcom/android/camera/exif/ExifInterface;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .param p5, "x5"    # Lcom/android/camera/watermark/WatermarkViewData;
    .param p6, "x6"    # Z

    .prologue
    .line 1296
    invoke-direct/range {p0 .. p6}, Lcom/android/camera/PhotoModule$Memento;->saveFinalPhoto([BLcom/android/camera/exif/ExifInterface;ZZLcom/android/camera/watermark/WatermarkViewData;Z)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/camera/PhotoModule$Memento;)Lcom/google/common/util/concurrent/SettableFuture;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule$Memento;

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/android/camera/PhotoModule$Memento;->future:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/camera/PhotoModule$Memento;)Lcom/android/camera/PhotoModule$MediaSaveListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule$Memento;

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/android/camera/PhotoModule$Memento;->onMediaSavedListener:Lcom/android/camera/PhotoModule$MediaSaveListener;

    return-object v0
.end method

.method static synthetic access$6002(Lcom/android/camera/PhotoModule$Memento;Lcom/android/camera/PhotoModule$MediaSaveListener;)Lcom/android/camera/PhotoModule$MediaSaveListener;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule$Memento;
    .param p1, "x1"    # Lcom/android/camera/PhotoModule$MediaSaveListener;

    .prologue
    .line 1296
    iput-object p1, p0, Lcom/android/camera/PhotoModule$Memento;->onMediaSavedListener:Lcom/android/camera/PhotoModule$MediaSaveListener;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/android/camera/PhotoModule$Memento;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/PhotoModule$Memento;

    .prologue
    .line 1296
    iget-wide v0, p0, Lcom/android/camera/PhotoModule$Memento;->date:J

    return-wide v0
.end method

.method static synthetic access$6102(Lcom/android/camera/PhotoModule$Memento;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule$Memento;
    .param p1, "x1"    # J

    .prologue
    .line 1296
    iput-wide p1, p0, Lcom/android/camera/PhotoModule$Memento;->date:J

    return-wide p1
.end method

.method static synthetic access$6200(Lcom/android/camera/PhotoModule$Memento;)Landroid/location/Location;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule$Memento;

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/android/camera/PhotoModule$Memento;->location:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$6202(Lcom/android/camera/PhotoModule$Memento;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule$Memento;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 1296
    iput-object p1, p0, Lcom/android/camera/PhotoModule$Memento;->location:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$6600(Lcom/android/camera/PhotoModule$Memento;)Lcom/android/camera/PhotoModule$PictureCallbackFactoryBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule$Memento;

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/android/camera/PhotoModule$Memento;->pictureCallbackFactory:Lcom/android/camera/PhotoModule$PictureCallbackFactoryBase;

    return-object v0
.end method

.method static synthetic access$6602(Lcom/android/camera/PhotoModule$Memento;Lcom/android/camera/PhotoModule$PictureCallbackFactoryBase;)Lcom/android/camera/PhotoModule$PictureCallbackFactoryBase;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule$Memento;
    .param p1, "x1"    # Lcom/android/camera/PhotoModule$PictureCallbackFactoryBase;

    .prologue
    .line 1296
    iput-object p1, p0, Lcom/android/camera/PhotoModule$Memento;->pictureCallbackFactory:Lcom/android/camera/PhotoModule$PictureCallbackFactoryBase;

    return-object p1
.end method

.method static synthetic access$6702(Lcom/android/camera/PhotoModule$Memento;Lcom/android/ex/camera2/portability/CaptureIntent;)Lcom/android/ex/camera2/portability/CaptureIntent;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule$Memento;
    .param p1, "x1"    # Lcom/android/ex/camera2/portability/CaptureIntent;

    .prologue
    .line 1296
    iput-object p1, p0, Lcom/android/camera/PhotoModule$Memento;->lastCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    return-object p1
.end method

.method static synthetic access$6802(Lcom/android/camera/PhotoModule$Memento;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule$Memento;
    .param p1, "x1"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 1296
    iput-object p1, p0, Lcom/android/camera/PhotoModule$Memento;->parameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$6902(Lcom/android/camera/PhotoModule$Memento;Lcom/android/ex/camera2/portability/CameraSettings;)Lcom/android/ex/camera2/portability/CameraSettings;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule$Memento;
    .param p1, "x1"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    .line 1296
    iput-object p1, p0, Lcom/android/camera/PhotoModule$Memento;->cameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    return-object p1
.end method

.method static synthetic access$7002(Lcom/android/camera/PhotoModule$Memento;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule$Memento;
    .param p1, "x1"    # Z

    .prologue
    .line 1296
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule$Memento;->isImageCaptureIntent:Z

    return p1
.end method

.method static synthetic access$7102(Lcom/android/camera/PhotoModule$Memento;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule$Memento;
    .param p1, "x1"    # Z

    .prologue
    .line 1296
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule$Memento;->shouldResizeTo16x9:Z

    return p1
.end method

.method static synthetic access$7202(Lcom/android/camera/PhotoModule$Memento;Lcom/android/camera/hardware/HeadingSensor;)Lcom/android/camera/hardware/HeadingSensor;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule$Memento;
    .param p1, "x1"    # Lcom/android/camera/hardware/HeadingSensor;

    .prologue
    .line 1296
    iput-object p1, p0, Lcom/android/camera/PhotoModule$Memento;->headingSensor:Lcom/android/camera/hardware/HeadingSensor;

    return-object p1
.end method

.method static synthetic access$7302(Lcom/android/camera/PhotoModule$Memento;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule$Memento;
    .param p1, "x1"    # J

    .prologue
    .line 1296
    iput-wide p1, p0, Lcom/android/camera/PhotoModule$Memento;->captureStartTime:J

    return-wide p1
.end method

.method static synthetic access$7402(Lcom/android/camera/PhotoModule$Memento;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule$Memento;
    .param p1, "x1"    # Z

    .prologue
    .line 1296
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule$Memento;->compassTagEnabled:Z

    return p1
.end method

.method static synthetic access$7502(Lcom/android/camera/PhotoModule$Memento;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule$Memento;
    .param p1, "x1"    # Z

    .prologue
    .line 1296
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule$Memento;->quickCapture:Z

    return p1
.end method

.method static synthetic access$7602(Lcom/android/camera/PhotoModule$Memento;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule$Memento;
    .param p1, "x1"    # Z

    .prologue
    .line 1296
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule$Memento;->frontFlashTriggered:Z

    return p1
.end method

.method static synthetic access$7702(Lcom/android/camera/PhotoModule$Memento;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule$Memento;
    .param p1, "x1"    # Z

    .prologue
    .line 1296
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule$Memento;->isFakeGenerated:Z

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
    .line 1395
    new-instance v8, Lcom/android/camera/PhotoModule$AddThumbnailBundle;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lcom/android/camera/PhotoModule$AddThumbnailBundle;-><init>(Lcom/android/camera/PhotoModule$1;)V

    .line 1396
    .local v8, "dataBundle":Lcom/android/camera/PhotoModule$AddThumbnailBundle;
    iput-object p1, v8, Lcom/android/camera/PhotoModule$AddThumbnailBundle;->jpegData:[B

    .line 1397
    iput-object p2, v8, Lcom/android/camera/PhotoModule$AddThumbnailBundle;->exif:Lcom/android/camera/exif/ExifInterface;

    .line 1398
    new-instance v0, Lcom/android/camera/PhotoModule$Memento$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/PhotoModule$Memento$2;-><init>(Lcom/android/camera/PhotoModule$Memento;[BLcom/android/camera/exif/ExifInterface;ZILcom/android/camera/watermark/WatermarkViewData;Z)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/camera/PhotoModule$AddThumbnailBundle;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    .line 1413
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoModule$Memento$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1414
    return-void
.end method

.method private calculateImageHeight(Lcom/android/camera/exif/ExifInterface;I)I
    .locals 4
    .param p1, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p2, "orientation"    # I

    .prologue
    .line 1629
    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    invoke-virtual {p1, v3}, Lcom/android/camera/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1631
    .local v0, "exifHeight":Ljava/lang/Integer;
    iget-boolean v3, p0, Lcom/android/camera/PhotoModule$Memento;->shouldResizeTo16x9:Z

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 1632
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1642
    .local v1, "height":I
    :goto_0
    return v1

    .line 1634
    .end local v1    # "height":I
    :cond_0
    new-instance v2, Lcom/android/camera/util/Size;

    iget-object v3, p0, Lcom/android/camera/PhotoModule$Memento;->cameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPhotoSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/camera/util/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    .line 1635
    .local v2, "s":Lcom/android/camera/util/Size;
    iget v3, p0, Lcom/android/camera/PhotoModule$Memento;->jpegRotation:I

    add-int/2addr v3, p2

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_1

    .line 1636
    invoke-virtual {v2}, Lcom/android/camera/util/Size;->height()I

    move-result v1

    .restart local v1    # "height":I
    goto :goto_0

    .line 1638
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
    .line 1612
    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    invoke-virtual {p1, v3}, Lcom/android/camera/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1614
    .local v0, "exifWidth":Ljava/lang/Integer;
    iget-boolean v3, p0, Lcom/android/camera/PhotoModule$Memento;->shouldResizeTo16x9:Z

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 1615
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1625
    .local v2, "width":I
    :goto_0
    return v2

    .line 1617
    .end local v2    # "width":I
    :cond_0
    new-instance v1, Lcom/android/camera/util/Size;

    iget-object v3, p0, Lcom/android/camera/PhotoModule$Memento;->cameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPhotoSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/camera/util/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    .line 1618
    .local v1, "s":Lcom/android/camera/util/Size;
    iget v3, p0, Lcom/android/camera/PhotoModule$Memento;->jpegRotation:I

    add-int/2addr v3, p2

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_1

    .line 1619
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->width()I

    move-result v2

    .restart local v2    # "width":I
    goto :goto_0

    .line 1621
    .end local v2    # "width":I
    :cond_1
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->height()I

    move-result v2

    .restart local v2    # "width":I
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
    .line 1454
    new-instance v6, Lcom/android/camera/PhotoModule$ResizeBundle;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/android/camera/PhotoModule$ResizeBundle;-><init>(Lcom/android/camera/PhotoModule$1;)V

    .line 1455
    .local v6, "dataBundle":Lcom/android/camera/PhotoModule$ResizeBundle;
    iput-object p1, v6, Lcom/android/camera/PhotoModule$ResizeBundle;->jpegData:[B

    .line 1456
    const v0, 0x3fe38e39

    iput v0, v6, Lcom/android/camera/PhotoModule$ResizeBundle;->targetAspectRatio:F

    .line 1457
    iput-object p2, v6, Lcom/android/camera/PhotoModule$ResizeBundle;->exif:Lcom/android/camera/exif/ExifInterface;

    .line 1458
    new-instance v0, Lcom/android/camera/PhotoModule$Memento$3;

    move-object v1, p0

    move v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/PhotoModule$Memento$3;-><init>(Lcom/android/camera/PhotoModule$Memento;ZZLcom/android/camera/watermark/WatermarkViewData;Z)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/camera/PhotoModule$ResizeBundle;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    .line 1470
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoModule$Memento$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1471
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
    .line 1475
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule$Memento;->isImageCaptureIntent:Z

    if-nez v0, :cond_2

    .line 1476
    invoke-direct/range {p0 .. p6}, Lcom/android/camera/PhotoModule$Memento;->savePhotoForNonImageCaptureIntent([BLcom/android/camera/exif/ExifInterface;ZZLcom/android/camera/watermark/WatermarkViewData;Z)V

    .line 1482
    :cond_0
    :goto_0
    if-nez p5, :cond_1

    iget-object v0, p0, Lcom/android/camera/PhotoModule$Memento;->saveCb:Lcom/android/camera/PhotoModule$SavePictureCallback;

    invoke-interface {v0}, Lcom/android/camera/PhotoModule$SavePictureCallback;->isNotifyRemoteShutterListner()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1485
    iget-object v0, p0, Lcom/android/camera/PhotoModule$Memento;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/remote/RemoteShutterListener;->onPictureTaken([B)V

    .line 1492
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule$Memento;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$1000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V

    .line 1493
    return-void

    .line 1478
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule$Memento;->saveCb:Lcom/android/camera/PhotoModule$SavePictureCallback;

    invoke-interface {v0}, Lcom/android/camera/PhotoModule$SavePictureCallback;->isHandleImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1479
    invoke-direct {p0, p1, p2, p4}, Lcom/android/camera/PhotoModule$Memento;->savePhotoForImageCaptureIntent([BLcom/android/camera/exif/ExifInterface;Z)V

    goto :goto_0
.end method

.method private saveJpegData([BLcom/android/camera/PhotoModule$SavePictureCallback;)V
    .locals 12
    .param p1, "originalJpegData"    # [B
    .param p2, "saveCb"    # Lcom/android/camera/PhotoModule$SavePictureCallback;

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1354
    iput-object p2, p0, Lcom/android/camera/PhotoModule$Memento;->saveCb:Lcom/android/camera/PhotoModule$SavePictureCallback;

    .line 1356
    invoke-static {p1}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v2

    .line 1357
    .local v2, "exif":Lcom/android/camera/exif/ExifInterface;
    invoke-static {v2}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v4

    .line 1358
    .local v4, "rotation":I
    iget-object v6, p0, Lcom/android/camera/PhotoModule$Memento;->cameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v11, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->HW_ROTATE:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v6, v11}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v8

    .line 1359
    .local v8, "hw_rotate_support":Z
    if-nez v8, :cond_4

    invoke-static {}, Lcom/android/camera/product_utils/ProductUtil;->isSupportedLib2DRotate()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/camera/PhotoModule$Memento;->lastCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    sget-object v11, Lcom/android/ex/camera2/portability/CaptureIntent;->Normal:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-eq v6, v11, :cond_4

    :cond_0
    move v3, v0

    .line 1360
    .local v3, "overrideRotate":Z
    :goto_0
    iget-object v6, p0, Lcom/android/camera/PhotoModule$Memento;->lastCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    sget-object v11, Lcom/android/ex/camera2/portability/CaptureIntent;->Normal:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-eq v6, v11, :cond_5

    move v10, v0

    .line 1362
    .local v10, "overrideExif":Z
    :goto_1
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exif.getOrientation(exif) = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1363
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mLastCaptureIntent = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/android/camera/PhotoModule$Memento;->lastCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1364
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HW_ROTATE = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1365
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "needOverrideRotation = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", overrideExif = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1367
    if-eqz v3, :cond_1

    .line 1368
    iget v4, p0, Lcom/android/camera/PhotoModule$Memento;->jpegRotation:I

    .line 1371
    :cond_1
    if-eqz v10, :cond_2

    .line 1372
    new-instance v9, Lcom/android/camera/util/ExifUtil$CaptureMetaData;

    iget-object v0, p0, Lcom/android/camera/PhotoModule$Memento;->lastCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    iget-object v1, p0, Lcom/android/camera/PhotoModule$Memento;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$5100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v1

    iget-object v6, p0, Lcom/android/camera/PhotoModule$Memento;->this$0:Lcom/android/camera/PhotoModule;

    .line 1373
    invoke-static {v6}, Lcom/android/camera/PhotoModule;->access$5200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/FocusOverlayManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/FocusOverlayManager;->getFocusState()I

    move-result v6

    iget-object v11, p0, Lcom/android/camera/PhotoModule$Memento;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v11}, Lcom/android/camera/PhotoModule;->access$5300(Lcom/android/camera/PhotoModule;)Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    move-result-object v11

    invoke-direct {v9, v0, v1, v6, v11}, Lcom/android/camera/util/ExifUtil$CaptureMetaData;-><init>(Lcom/android/ex/camera2/portability/CaptureIntent;Lcom/android/camera/async/LockableConcurrentState;ILcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;)V

    .line 1374
    .local v9, "metaData":Lcom/android/camera/util/ExifUtil$CaptureMetaData;
    iget-object v0, p0, Lcom/android/camera/PhotoModule$Memento;->cameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getCameraCapabilitiesExtension()Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule$Memento;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2, v1, v9}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->buildExifInfo(Lcom/android/camera/exif/ExifInterface;Landroid/hardware/Camera$Parameters;Lcom/android/camera/util/ExifUtil$CaptureMetaData;)V

    .line 1377
    .end local v9    # "metaData":Lcom/android/camera/util/ExifUtil$CaptureMetaData;
    :cond_2
    invoke-interface {p2}, Lcom/android/camera/PhotoModule$SavePictureCallback;->isUseWaterMark()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1384
    .local v5, "watermarkViewData":Lcom/android/camera/watermark/WatermarkViewData;
    :cond_3
    :goto_2
    invoke-virtual {v2}, Lcom/android/camera/exif/ExifInterface;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1385
    .local v7, "exifThumbnail":Landroid/graphics/Bitmap;
    if-nez v7, :cond_7

    if-nez v5, :cond_7

    .line 1386
    invoke-interface {p2}, Lcom/android/camera/PhotoModule$SavePictureCallback;->isFakeImage()Z

    move-result v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/PhotoModule$Memento;->addThumbnail([BLcom/android/camera/exif/ExifInterface;ZILcom/android/camera/watermark/WatermarkViewData;Z)V

    .line 1390
    :goto_3
    return-void

    .end local v3    # "overrideRotate":Z
    .end local v5    # "watermarkViewData":Lcom/android/camera/watermark/WatermarkViewData;
    .end local v7    # "exifThumbnail":Landroid/graphics/Bitmap;
    .end local v10    # "overrideExif":Z
    :cond_4
    move v3, v1

    .line 1359
    goto/16 :goto_0

    .restart local v3    # "overrideRotate":Z
    :cond_5
    move v10, v1

    .line 1360
    goto/16 :goto_1

    .line 1377
    .restart local v10    # "overrideExif":Z
    :cond_6
    iget-object v0, p0, Lcom/android/camera/PhotoModule$Memento;->this$0:Lcom/android/camera/PhotoModule;

    .line 1378
    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$1000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWatermarkManager()Lcom/android/camera/WatermarkManager;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/PhotoModule$Memento;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$1000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWatermarkManager()Lcom/android/camera/WatermarkManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule$Memento;->cameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPhotoSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v1

    iget-object v6, p0, Lcom/android/camera/PhotoModule$Memento;->cameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v6}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPhotoSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v6

    invoke-virtual {v0, v1, v6}, Lcom/android/camera/WatermarkManager;->getData(II)Lcom/android/camera/watermark/WatermarkViewData;

    move-result-object v5

    goto :goto_2

    .line 1388
    .restart local v5    # "watermarkViewData":Lcom/android/camera/watermark/WatermarkViewData;
    .restart local v7    # "exifThumbnail":Landroid/graphics/Bitmap;
    :cond_7
    invoke-interface {p2}, Lcom/android/camera/PhotoModule$SavePictureCallback;->isFakeImage()Z

    move-result v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/PhotoModule$Memento;->updateThumbnailAndSave([BLcom/android/camera/exif/ExifInterface;ZILcom/android/camera/watermark/WatermarkViewData;Z)V

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
    .line 1570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$Memento;->pictureCallbackFactory:Lcom/android/camera/PhotoModule$PictureCallbackFactoryBase;

    invoke-virtual {v2}, Lcom/android/camera/PhotoModule$PictureCallbackFactoryBase;->needFakeImage()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p7, :cond_0

    .line 1571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$Memento;->onMediaSavedListener:Lcom/android/camera/PhotoModule$MediaSaveListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule$Memento;->saveCb:Lcom/android/camera/PhotoModule$SavePictureCallback;

    move-object/from16 v0, p0

    invoke-interface {v3, v0}, Lcom/android/camera/PhotoModule$SavePictureCallback;->getTitle(Lcom/android/camera/PhotoModule$Memento;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/camera/PhotoModule$Memento;->date:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PhotoModule$Memento;->location:Landroid/location/Location;

    move/from16 v7, p6

    move-object/from16 v8, p4

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-virtual/range {v2 .. v11}, Lcom/android/camera/PhotoModule$MediaSaveListener;->updateImage(Ljava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BII)V

    .line 1608
    :goto_0
    return-void

    .line 1574
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$Memento;->pictureCallbackFactory:Lcom/android/camera/PhotoModule$PictureCallbackFactoryBase;

    invoke-virtual {v2}, Lcom/android/camera/PhotoModule$PictureCallbackFactoryBase;->needFakeImage()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p7, :cond_2

    const/4 v12, 0x1

    .line 1575
    .local v12, "isFake":Z
    :goto_1
    if-eqz v12, :cond_3

    const-string v11, "image/fake"

    .line 1577
    .local v11, "mime":Ljava/lang/String;
    :goto_2
    if-eqz v12, :cond_1

    .line 1578
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/PhotoModule$Memento;->isFakeGenerated:Z

    .line 1580
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$Memento;->saveCb:Lcom/android/camera/PhotoModule$SavePictureCallback;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/android/camera/PhotoModule$SavePictureCallback;->getTitle(Lcom/android/camera/PhotoModule$Memento;)Ljava/lang/String;

    move-result-object v6

    .line 1582
    .local v6, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$Memento;->future:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v2}, Lcom/google/common/util/concurrent/SettableFuture;->isDone()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1583
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule$Memento;->future:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v2, Lcom/android/camera/PhotoModule$Memento$4;

    move-object/from16 v3, p0

    move/from16 v4, p5

    move-object/from16 v5, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p6

    move-object/from16 v10, p4

    invoke-direct/range {v2 .. v11}, Lcom/android/camera/PhotoModule$Memento$4;-><init>(Lcom/android/camera/PhotoModule$Memento;Z[BLjava/lang/String;IIILcom/android/camera/exif/ExifInterface;Ljava/lang/String;)V

    .line 1599
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v3

    .line 1583
    invoke-virtual {v13, v2, v3}, Lcom/google/common/util/concurrent/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    .line 1574
    .end local v6    # "title":Ljava/lang/String;
    .end local v11    # "mime":Ljava/lang/String;
    .end local v12    # "isFake":Z
    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    .line 1575
    .restart local v12    # "isFake":Z
    :cond_3
    const-string v11, "image/jpeg"

    goto :goto_2

    .line 1601
    .restart local v6    # "title":Ljava/lang/String;
    .restart local v11    # "mime":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "save fake image for post process normal case"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1602
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$Memento;->onMediaSavedListener:Lcom/android/camera/PhotoModule$MediaSaveListener;

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Lcom/android/camera/PhotoModule$MediaSaveListener;->setNeedThumbnail(Z)V

    .line 1603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/PhotoModule$Memento;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v2}, Lcom/android/camera/PhotoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/CameraServices;->getMediaSaver()Lcom/android/camera/app/MediaSaver;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/PhotoModule$Memento;->date:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule$Memento;->location:Landroid/location/Location;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule$Memento;->onMediaSavedListener:Lcom/android/camera/PhotoModule$MediaSaveListener;

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

.method private savePhotoForImageCaptureIntent([BLcom/android/camera/exif/ExifInterface;Z)V
    .locals 3
    .param p1, "jpegData"    # [B
    .param p2, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p3, "needOverrideRotation"    # Z

    .prologue
    .line 1647
    invoke-static {p2}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v0

    .line 1649
    .local v0, "orientation":I
    if-eqz p3, :cond_0

    .line 1650
    iget-object v1, p0, Lcom/android/camera/PhotoModule$Memento;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$2200(Lcom/android/camera/PhotoModule;)I

    move-result v0

    .line 1653
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule$Memento;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1, p1}, Lcom/android/camera/PhotoModule;->access$6302(Lcom/android/camera/PhotoModule;[B)[B

    .line 1654
    iget-object v1, p0, Lcom/android/camera/PhotoModule$Memento;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$6400(Lcom/android/camera/PhotoModule;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1655
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v2, "showing UI"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1658
    iget-object v1, p0, Lcom/android/camera/PhotoModule$Memento;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/camera/PhotoUI;->showCapturedImageForReview([BIZ)V

    .line 1662
    :goto_0
    return-void

    .line 1660
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule$Memento;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v1}, Lcom/android/camera/PhotoModule;->onCaptureDone()V

    goto :goto_0
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
    .line 1498
    invoke-static/range {p2 .. p2}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v7

    .line 1500
    .local v7, "orientation":I
    if-eqz p4, :cond_0

    .line 1501
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/camera/PhotoModule$Memento;->jpegRotation:I

    .line 1504
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PhotoModule$Memento;->saveCb:Lcom/android/camera/PhotoModule$SavePictureCallback;

    move-object/from16 v0, p0

    invoke-interface {v4, v0}, Lcom/android/camera/PhotoModule$SavePictureCallback;->getTitle(Lcom/android/camera/PhotoModule$Memento;)Ljava/lang/String;

    move-result-object v9

    .line 1505
    .local v9, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/camera/PhotoModule$Memento;->date:J

    const-wide/16 v12, 0x0

    cmp-long v4, v4, v12

    if-nez v4, :cond_2

    const-wide/16 v10, -0x1

    .line 1506
    .local v10, "date":J
    :goto_0
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$400()Lcom/android/camera/debug/Log$Tag;

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

    .line 1508
    if-eqz p5, :cond_3

    .line 1509
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v5, "addWatermarkImage"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1510
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PhotoModule$Memento;->cameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->HW_ROTATE:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v4, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v18

    .line 1511
    .local v18, "hw_rotate_support":Z
    invoke-static {}, Lcom/android/camera/watermark/WatermarkImageSaver;->getInstance()Lcom/android/camera/watermark/WatermarkImageSaver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule$Memento;->this$0:Lcom/android/camera/PhotoModule;

    .line 1512
    invoke-virtual {v5}, Lcom/android/camera/PhotoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule$Memento;->location:Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule$Memento;->onMediaSavedListener:Lcom/android/camera/PhotoModule$MediaSaveListener;

    move-object/from16 v5, p1

    move-object/from16 v6, p5

    move-object/from16 v8, p0

    move-wide v15, v10

    move-object/from16 v17, p2

    .line 1511
    invoke-virtual/range {v4 .. v18}, Lcom/android/camera/watermark/WatermarkImageSaver;->addWatermarkImage([BLcom/android/camera/watermark/WatermarkViewData;ILcom/android/camera/watermark/WatermarkImageSaver$WatermarkImageSavedCallback;Ljava/lang/String;JLcom/android/camera/app/CameraServices;Landroid/location/Location;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;JLcom/android/camera/exif/ExifInterface;Z)V

    .line 1528
    .end local v18    # "hw_rotate_support":Z
    :cond_1
    :goto_1
    return-void

    .line 1505
    .end local v10    # "date":J
    :cond_2
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/camera/PhotoModule$Memento;->date:J

    goto :goto_0

    .line 1516
    .restart local v10    # "date":J
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/android/camera/PhotoModule$Memento;->setExifTag(Lcom/android/camera/exif/ExifInterface;Z)V

    .line 1518
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v7}, Lcom/android/camera/PhotoModule$Memento;->calculateImageWidth(Lcom/android/camera/exif/ExifInterface;I)I

    move-result v21

    .line 1519
    .local v21, "width":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v7}, Lcom/android/camera/PhotoModule$Memento;->calculateImageHeight(Lcom/android/camera/exif/ExifInterface;I)I

    move-result v22

    .local v22, "height":I
    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v23, p2

    move/from16 v24, p3

    move/from16 v25, v7

    move/from16 v26, p6

    .line 1520
    invoke-direct/range {v19 .. v26}, Lcom/android/camera/PhotoModule$Memento;->saveOrUpdateImage([BIILcom/android/camera/exif/ExifInterface;ZIZ)V

    .line 1523
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PhotoModule$Memento;->saveCb:Lcom/android/camera/PhotoModule$SavePictureCallback;

    invoke-interface {v4}, Lcom/android/camera/PhotoModule$SavePictureCallback;->isAnimateCapture()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1526
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PhotoModule$Memento;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v4}, Lcom/android/camera/PhotoModule;->access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/camera/PhotoModule$Memento;->mirror:Z

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v7, v5}, Lcom/android/camera/PhotoUI;->animateCapture([BIZ)V

    goto :goto_1
.end method

.method private setExifTag(Lcom/android/camera/exif/ExifInterface;Z)V
    .locals 14
    .param p1, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p2, "needOverrideRotation"    # Z

    .prologue
    .line 1531
    invoke-static {p1}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v5

    .line 1533
    .local v5, "orientation":I
    if-eqz p2, :cond_0

    .line 1534
    iget v5, p0, Lcom/android/camera/PhotoModule$Memento;->jpegRotation:I

    .line 1537
    :cond_0
    iget-object v7, p0, Lcom/android/camera/PhotoModule$Memento;->headingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v7}, Lcom/android/camera/hardware/HeadingSensor;->getCurrentHeading()I

    move-result v4

    .line 1538
    .local v4, "heading":I
    iget-boolean v7, p0, Lcom/android/camera/PhotoModule$Memento;->compassTagEnabled:Z

    if-nez v7, :cond_4

    const/4 v2, 0x0

    .line 1539
    .local v2, "enabled":Z
    :goto_0
    const/4 v7, -0x1

    if-eq v4, v7, :cond_1

    .line 1541
    if-eqz v2, :cond_1

    .line 1542
    sget v7, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    const-string v8, "M"

    invoke-virtual {p1, v7, v8}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    .line 1545
    .local v0, "directionRefTag":Lcom/android/camera/exif/ExifTag;
    sget v7, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    new-instance v8, Lcom/android/camera/exif/Rational;

    int-to-long v10, v4

    const-wide/16 v12, 0x1

    invoke-direct {v8, v10, v11, v12, v13}, Lcom/android/camera/exif/Rational;-><init>(JJ)V

    invoke-virtual {p1, v7, v8}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    .line 1548
    .local v1, "directionTag":Lcom/android/camera/exif/ExifTag;
    invoke-virtual {p1, v0}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 1549
    invoke-virtual {p1, v1}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 1553
    .end local v0    # "directionRefTag":Lcom/android/camera/exif/ExifTag;
    .end local v1    # "directionTag":Lcom/android/camera/exif/ExifTag;
    :cond_1
    iget-boolean v7, p0, Lcom/android/camera/PhotoModule$Memento;->frontFlashTriggered:Z

    if-eqz v7, :cond_2

    .line 1554
    sget v7, Lcom/android/camera/exif/ExifInterface;->TAG_FLASH:I

    const/4 v8, 0x1

    .line 1556
    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    .line 1554
    invoke-virtual {p1, v7, v8}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v3

    .line 1557
    .local v3, "flashTag":Lcom/android/camera/exif/ExifTag;
    invoke-virtual {p1, v3}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 1560
    .end local v3    # "flashTag":Lcom/android/camera/exif/ExifTag;
    :cond_2
    if-eqz p2, :cond_3

    .line 1561
    sget v7, Lcom/android/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    .line 1562
    invoke-static {v5}, Lcom/android/camera/exif/ExifInterface;->getOrientationValueForRotation(I)S

    move-result v8

    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    .line 1561
    invoke-virtual {p1, v7, v8}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v6

    .line 1563
    .local v6, "rotationTag":Lcom/android/camera/exif/ExifTag;
    invoke-virtual {p1, v6}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 1565
    .end local v6    # "rotationTag":Lcom/android/camera/exif/ExifTag;
    :cond_3
    return-void

    .line 1538
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
    .line 1420
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule$Memento;->isImageCaptureIntent:Z

    if-nez v0, :cond_3

    if-nez p5, :cond_3

    .line 1421
    invoke-virtual {p2}, Lcom/android/camera/exif/ExifInterface;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1422
    .local v7, "thumbnail":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_2

    .line 1423
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "exif.getThumbnailBitmap available"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1424
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveCb.isUpdateThumbnail() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule$Memento;->saveCb:Lcom/android/camera/PhotoModule$SavePictureCallback;

    invoke-interface {v2}, Lcom/android/camera/PhotoModule$SavePictureCallback;->isUpdateThumbnail()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1425
    iget-object v0, p0, Lcom/android/camera/PhotoModule$Memento;->saveCb:Lcom/android/camera/PhotoModule$SavePictureCallback;

    invoke-interface {v0}, Lcom/android/camera/PhotoModule$SavePictureCallback;->isUpdateThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1426
    iget-object v0, p0, Lcom/android/camera/PhotoModule$Memento;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule$Memento;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v1}, Lcom/android/camera/PhotoModule;->getPeekAccessibilityString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/app/CameraAppUI;->startCaptureIndicatorRevealAnimation(Ljava/lang/String;Z)V

    .line 1427
    iget-object v0, p0, Lcom/android/camera/PhotoModule$Memento;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v7, p4}, Lcom/android/camera/app/CameraAppUI;->updateCaptureIndicatorThumbnail(Landroid/graphics/Bitmap;I)V

    .line 1428
    const/4 v0, 0x7

    invoke-static {v0}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 1430
    :cond_0
    const/4 v3, 0x0

    .line 1437
    .end local v7    # "thumbnail":Landroid/graphics/Bitmap;
    .local v3, "needThumbnail":Z
    :goto_0
    invoke-static {}, Lcom/android/camera/PhotoModule;->access$400()Lcom/android/camera/debug/Log$Tag;

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

    .line 1439
    iget-object v0, p0, Lcom/android/camera/PhotoModule$Memento;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$3800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1440
    iget-object v0, p0, Lcom/android/camera/PhotoModule$Memento;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$3800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 1441
    iget-object v0, p0, Lcom/android/camera/PhotoModule$Memento;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/PhotoModule;->access$3802(Lcom/android/camera/PhotoModule;Lcom/android/camera/stats/profiler/Profile;)Lcom/android/camera/stats/profiler/Profile;

    .line 1444
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule$Memento;->shouldResizeTo16x9:Z

    if-eqz v0, :cond_4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p5

    move v6, p6

    .line 1445
    invoke-direct/range {v0 .. v6}, Lcom/android/camera/PhotoModule$Memento;->resizeAndSave([BLcom/android/camera/exif/ExifInterface;ZZLcom/android/camera/watermark/WatermarkViewData;Z)V

    .line 1449
    :goto_1
    return-void

    .line 1432
    .end local v3    # "needThumbnail":Z
    .restart local v7    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_2
    const/4 v3, 0x1

    .restart local v3    # "needThumbnail":Z
    goto :goto_0

    .line 1435
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

    .line 1447
    invoke-direct/range {v0 .. v6}, Lcom/android/camera/PhotoModule$Memento;->saveFinalPhoto([BLcom/android/camera/exif/ExifInterface;ZZLcom/android/camera/watermark/WatermarkViewData;Z)V

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
    .line 1335
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/PhotoModule$Memento;->saveOrUpdateImage([BIILcom/android/camera/exif/ExifInterface;ZIZ)V

    .line 1337
    const/4 v0, 0x1

    return v0
.end method

.method public onPictureSaveFinished([B)V
    .locals 2
    .param p1, "jpeg"    # [B

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/android/camera/PhotoModule$Memento;->this$0:Lcom/android/camera/PhotoModule;

    invoke-virtual {v0}, Lcom/android/camera/PhotoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/remote/RemoteShutterListener;->onPictureTaken([B)V

    .line 1350
    iget-object v0, p0, Lcom/android/camera/PhotoModule$Memento;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$1000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V

    .line 1351
    return-void
.end method

.method public onThumbnailUpdate(ILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/android/camera/PhotoModule$Memento;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2300(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/PhotoModule$Memento$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/camera/PhotoModule$Memento$1;-><init>(Lcom/android/camera/PhotoModule$Memento;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1330
    return-void
.end method
