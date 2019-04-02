.class Lcom/android/camera/BeautyModule$Memento;
.super Ljava/lang/Object;
.source "BeautyModule.java"

# interfaces
.implements Lcom/android/camera/watermark/WatermarkImageSaver$WatermarkImageSavedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BeautyModule;
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

.field private onMediaSavedListener:Lcom/android/camera/BeautyModule$MediaSaveListener;

.field private parameters:Landroid/hardware/Camera$Parameters;

.field private pictureCallbackFactory:Lcom/android/camera/BeautyModule$PictureCallbackFactoryBase;

.field private quickCapture:Z

.field private saveCb:Lcom/android/camera/BeautyModule$SavePictureCallback;

.field private shouldResizeTo16x9:Z

.field final synthetic this$0:Lcom/android/camera/BeautyModule;

.field private title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/camera/BeautyModule;)V
    .locals 1

    .prologue
    .line 2762
    iput-object p1, p0, Lcom/android/camera/BeautyModule$Memento;->this$0:Lcom/android/camera/BeautyModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2763
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/BeautyModule$Memento;->future:Lcom/google/common/util/concurrent/SettableFuture;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/BeautyModule;Lcom/android/camera/BeautyModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/BeautyModule;
    .param p2, "x1"    # Lcom/android/camera/BeautyModule$1;

    .prologue
    .line 2762
    invoke-direct {p0, p1}, Lcom/android/camera/BeautyModule$Memento;-><init>(Lcom/android/camera/BeautyModule;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/BeautyModule$Memento;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyModule$Memento;

    .prologue
    .line 2762
    iget-boolean v0, p0, Lcom/android/camera/BeautyModule$Memento;->mirror:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/camera/BeautyModule$Memento;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyModule$Memento;
    .param p1, "x1"    # Z

    .prologue
    .line 2762
    iput-boolean p1, p0, Lcom/android/camera/BeautyModule$Memento;->mirror:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/camera/BeautyModule$Memento;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyModule$Memento;

    .prologue
    .line 2762
    iget v0, p0, Lcom/android/camera/BeautyModule$Memento;->cameraId:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/camera/BeautyModule$Memento;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyModule$Memento;
    .param p1, "x1"    # I

    .prologue
    .line 2762
    iput p1, p0, Lcom/android/camera/BeautyModule$Memento;->cameraId:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/camera/BeautyModule$Memento;)Lcom/android/ex/camera2/portability/CameraCapabilities;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyModule$Memento;

    .prologue
    .line 2762
    iget-object v0, p0, Lcom/android/camera/BeautyModule$Memento;->cameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/camera/BeautyModule$Memento;Lcom/android/ex/camera2/portability/CameraCapabilities;)Lcom/android/ex/camera2/portability/CameraCapabilities;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyModule$Memento;
    .param p1, "x1"    # Lcom/android/ex/camera2/portability/CameraCapabilities;

    .prologue
    .line 2762
    iput-object p1, p0, Lcom/android/camera/BeautyModule$Memento;->cameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/camera/BeautyModule$Memento;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyModule$Memento;

    .prologue
    .line 2762
    iget v0, p0, Lcom/android/camera/BeautyModule$Memento;->jpegRotation:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/camera/BeautyModule$Memento;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyModule$Memento;
    .param p1, "x1"    # I

    .prologue
    .line 2762
    iput p1, p0, Lcom/android/camera/BeautyModule$Memento;->jpegRotation:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/camera/BeautyModule$Memento;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyModule$Memento;

    .prologue
    .line 2762
    iget-object v0, p0, Lcom/android/camera/BeautyModule$Memento;->title:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/camera/BeautyModule$Memento;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyModule$Memento;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2762
    iput-object p1, p0, Lcom/android/camera/BeautyModule$Memento;->title:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/camera/BeautyModule$Memento;[BLcom/android/camera/BeautyModule$SavePictureCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyModule$Memento;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Lcom/android/camera/BeautyModule$SavePictureCallback;

    .prologue
    .line 2762
    invoke-direct {p0, p1, p2}, Lcom/android/camera/BeautyModule$Memento;->saveJpegData([BLcom/android/camera/BeautyModule$SavePictureCallback;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/camera/BeautyModule$Memento;)Lcom/google/common/util/concurrent/SettableFuture;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyModule$Memento;

    .prologue
    .line 2762
    iget-object v0, p0, Lcom/android/camera/BeautyModule$Memento;->future:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/camera/BeautyModule$Memento;)Lcom/android/camera/BeautyModule$PictureCallbackFactoryBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyModule$Memento;

    .prologue
    .line 2762
    iget-object v0, p0, Lcom/android/camera/BeautyModule$Memento;->pictureCallbackFactory:Lcom/android/camera/BeautyModule$PictureCallbackFactoryBase;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/camera/BeautyModule$Memento;Lcom/android/camera/BeautyModule$PictureCallbackFactoryBase;)Lcom/android/camera/BeautyModule$PictureCallbackFactoryBase;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyModule$Memento;
    .param p1, "x1"    # Lcom/android/camera/BeautyModule$PictureCallbackFactoryBase;

    .prologue
    .line 2762
    iput-object p1, p0, Lcom/android/camera/BeautyModule$Memento;->pictureCallbackFactory:Lcom/android/camera/BeautyModule$PictureCallbackFactoryBase;

    return-object p1
.end method

.method static synthetic access$5500(Lcom/android/camera/BeautyModule$Memento;[BLcom/android/camera/exif/ExifInterface;ZILcom/android/camera/watermark/WatermarkViewData;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyModule$Memento;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Lcom/android/camera/exif/ExifInterface;
    .param p3, "x3"    # Z
    .param p4, "x4"    # I
    .param p5, "x5"    # Lcom/android/camera/watermark/WatermarkViewData;
    .param p6, "x6"    # Z

    .prologue
    .line 2762
    invoke-direct/range {p0 .. p6}, Lcom/android/camera/BeautyModule$Memento;->updateThumbnailAndSave([BLcom/android/camera/exif/ExifInterface;ZILcom/android/camera/watermark/WatermarkViewData;Z)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/camera/BeautyModule$Memento;[BLcom/android/camera/exif/ExifInterface;ZZLcom/android/camera/watermark/WatermarkViewData;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyModule$Memento;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Lcom/android/camera/exif/ExifInterface;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .param p5, "x5"    # Lcom/android/camera/watermark/WatermarkViewData;
    .param p6, "x6"    # Z

    .prologue
    .line 2762
    invoke-direct/range {p0 .. p6}, Lcom/android/camera/BeautyModule$Memento;->saveFinalPhoto([BLcom/android/camera/exif/ExifInterface;ZZLcom/android/camera/watermark/WatermarkViewData;Z)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/camera/BeautyModule$Memento;)Lcom/android/camera/BeautyModule$MediaSaveListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyModule$Memento;

    .prologue
    .line 2762
    iget-object v0, p0, Lcom/android/camera/BeautyModule$Memento;->onMediaSavedListener:Lcom/android/camera/BeautyModule$MediaSaveListener;

    return-object v0
.end method

.method static synthetic access$5902(Lcom/android/camera/BeautyModule$Memento;Lcom/android/camera/BeautyModule$MediaSaveListener;)Lcom/android/camera/BeautyModule$MediaSaveListener;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyModule$Memento;
    .param p1, "x1"    # Lcom/android/camera/BeautyModule$MediaSaveListener;

    .prologue
    .line 2762
    iput-object p1, p0, Lcom/android/camera/BeautyModule$Memento;->onMediaSavedListener:Lcom/android/camera/BeautyModule$MediaSaveListener;

    return-object p1
.end method

.method static synthetic access$6000(Lcom/android/camera/BeautyModule$Memento;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/BeautyModule$Memento;

    .prologue
    .line 2762
    iget-wide v0, p0, Lcom/android/camera/BeautyModule$Memento;->date:J

    return-wide v0
.end method

.method static synthetic access$6002(Lcom/android/camera/BeautyModule$Memento;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyModule$Memento;
    .param p1, "x1"    # J

    .prologue
    .line 2762
    iput-wide p1, p0, Lcom/android/camera/BeautyModule$Memento;->date:J

    return-wide p1
.end method

.method static synthetic access$6100(Lcom/android/camera/BeautyModule$Memento;)Landroid/location/Location;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyModule$Memento;

    .prologue
    .line 2762
    iget-object v0, p0, Lcom/android/camera/BeautyModule$Memento;->location:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$6102(Lcom/android/camera/BeautyModule$Memento;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyModule$Memento;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 2762
    iput-object p1, p0, Lcom/android/camera/BeautyModule$Memento;->location:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$6302(Lcom/android/camera/BeautyModule$Memento;Lcom/android/ex/camera2/portability/CaptureIntent;)Lcom/android/ex/camera2/portability/CaptureIntent;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyModule$Memento;
    .param p1, "x1"    # Lcom/android/ex/camera2/portability/CaptureIntent;

    .prologue
    .line 2762
    iput-object p1, p0, Lcom/android/camera/BeautyModule$Memento;->lastCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    return-object p1
.end method

.method static synthetic access$6402(Lcom/android/camera/BeautyModule$Memento;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyModule$Memento;
    .param p1, "x1"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 2762
    iput-object p1, p0, Lcom/android/camera/BeautyModule$Memento;->parameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$6502(Lcom/android/camera/BeautyModule$Memento;Lcom/android/ex/camera2/portability/CameraSettings;)Lcom/android/ex/camera2/portability/CameraSettings;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyModule$Memento;
    .param p1, "x1"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    .line 2762
    iput-object p1, p0, Lcom/android/camera/BeautyModule$Memento;->cameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    return-object p1
.end method

.method static synthetic access$6602(Lcom/android/camera/BeautyModule$Memento;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyModule$Memento;
    .param p1, "x1"    # Z

    .prologue
    .line 2762
    iput-boolean p1, p0, Lcom/android/camera/BeautyModule$Memento;->isImageCaptureIntent:Z

    return p1
.end method

.method static synthetic access$6702(Lcom/android/camera/BeautyModule$Memento;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyModule$Memento;
    .param p1, "x1"    # Z

    .prologue
    .line 2762
    iput-boolean p1, p0, Lcom/android/camera/BeautyModule$Memento;->shouldResizeTo16x9:Z

    return p1
.end method

.method static synthetic access$6802(Lcom/android/camera/BeautyModule$Memento;Lcom/android/camera/hardware/HeadingSensor;)Lcom/android/camera/hardware/HeadingSensor;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyModule$Memento;
    .param p1, "x1"    # Lcom/android/camera/hardware/HeadingSensor;

    .prologue
    .line 2762
    iput-object p1, p0, Lcom/android/camera/BeautyModule$Memento;->headingSensor:Lcom/android/camera/hardware/HeadingSensor;

    return-object p1
.end method

.method static synthetic access$6902(Lcom/android/camera/BeautyModule$Memento;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyModule$Memento;
    .param p1, "x1"    # J

    .prologue
    .line 2762
    iput-wide p1, p0, Lcom/android/camera/BeautyModule$Memento;->captureStartTime:J

    return-wide p1
.end method

.method static synthetic access$7002(Lcom/android/camera/BeautyModule$Memento;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyModule$Memento;
    .param p1, "x1"    # Z

    .prologue
    .line 2762
    iput-boolean p1, p0, Lcom/android/camera/BeautyModule$Memento;->compassTagEnabled:Z

    return p1
.end method

.method static synthetic access$7102(Lcom/android/camera/BeautyModule$Memento;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyModule$Memento;
    .param p1, "x1"    # Z

    .prologue
    .line 2762
    iput-boolean p1, p0, Lcom/android/camera/BeautyModule$Memento;->quickCapture:Z

    return p1
.end method

.method static synthetic access$7202(Lcom/android/camera/BeautyModule$Memento;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyModule$Memento;
    .param p1, "x1"    # Z

    .prologue
    .line 2762
    iput-boolean p1, p0, Lcom/android/camera/BeautyModule$Memento;->frontFlashTriggered:Z

    return p1
.end method

.method static synthetic access$7302(Lcom/android/camera/BeautyModule$Memento;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyModule$Memento;
    .param p1, "x1"    # Z

    .prologue
    .line 2762
    iput-boolean p1, p0, Lcom/android/camera/BeautyModule$Memento;->isFakeGenerated:Z

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
    .line 2864
    new-instance v8, Lcom/android/camera/BeautyModule$AddThumbnailBundle;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lcom/android/camera/BeautyModule$AddThumbnailBundle;-><init>(Lcom/android/camera/BeautyModule$1;)V

    .line 2865
    .local v8, "dataBundle":Lcom/android/camera/BeautyModule$AddThumbnailBundle;
    iput-object p1, v8, Lcom/android/camera/BeautyModule$AddThumbnailBundle;->jpegData:[B

    .line 2866
    iput-object p2, v8, Lcom/android/camera/BeautyModule$AddThumbnailBundle;->exif:Lcom/android/camera/exif/ExifInterface;

    .line 2867
    new-instance v0, Lcom/android/camera/BeautyModule$Memento$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/BeautyModule$Memento$2;-><init>(Lcom/android/camera/BeautyModule$Memento;[BLcom/android/camera/exif/ExifInterface;ZILcom/android/camera/watermark/WatermarkViewData;Z)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/camera/BeautyModule$AddThumbnailBundle;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    .line 2882
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/BeautyModule$Memento$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2883
    return-void
.end method

.method private calculateImageHeight(Lcom/android/camera/exif/ExifInterface;I)I
    .locals 4
    .param p1, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p2, "orientation"    # I

    .prologue
    .line 3090
    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    invoke-virtual {p1, v3}, Lcom/android/camera/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3092
    .local v0, "exifHeight":Ljava/lang/Integer;
    iget-boolean v3, p0, Lcom/android/camera/BeautyModule$Memento;->shouldResizeTo16x9:Z

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 3093
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3103
    .local v1, "height":I
    :goto_0
    return v1

    .line 3095
    .end local v1    # "height":I
    :cond_0
    new-instance v2, Lcom/android/camera/util/Size;

    iget-object v3, p0, Lcom/android/camera/BeautyModule$Memento;->cameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPhotoSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/camera/util/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    .line 3096
    .local v2, "s":Lcom/android/camera/util/Size;
    iget v3, p0, Lcom/android/camera/BeautyModule$Memento;->jpegRotation:I

    add-int/2addr v3, p2

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_1

    .line 3097
    invoke-virtual {v2}, Lcom/android/camera/util/Size;->height()I

    move-result v1

    .restart local v1    # "height":I
    goto :goto_0

    .line 3099
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
    .line 3073
    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    invoke-virtual {p1, v3}, Lcom/android/camera/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3075
    .local v0, "exifWidth":Ljava/lang/Integer;
    iget-boolean v3, p0, Lcom/android/camera/BeautyModule$Memento;->shouldResizeTo16x9:Z

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 3076
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3086
    .local v2, "width":I
    :goto_0
    return v2

    .line 3078
    .end local v2    # "width":I
    :cond_0
    new-instance v1, Lcom/android/camera/util/Size;

    iget-object v3, p0, Lcom/android/camera/BeautyModule$Memento;->cameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPhotoSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/camera/util/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    .line 3079
    .local v1, "s":Lcom/android/camera/util/Size;
    iget v3, p0, Lcom/android/camera/BeautyModule$Memento;->jpegRotation:I

    add-int/2addr v3, p2

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_1

    .line 3080
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->width()I

    move-result v2

    .restart local v2    # "width":I
    goto :goto_0

    .line 3082
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
    .line 2820
    sget-object v0, Lcom/android/ex/camera2/portability/CaptureIntent;->BEAUTY:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
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
    .line 2923
    new-instance v6, Lcom/android/camera/BeautyModule$ResizeBundle;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/android/camera/BeautyModule$ResizeBundle;-><init>(Lcom/android/camera/BeautyModule$1;)V

    .line 2924
    .local v6, "dataBundle":Lcom/android/camera/BeautyModule$ResizeBundle;
    iput-object p1, v6, Lcom/android/camera/BeautyModule$ResizeBundle;->jpegData:[B

    .line 2925
    const v0, 0x3fe38e39

    iput v0, v6, Lcom/android/camera/BeautyModule$ResizeBundle;->targetAspectRatio:F

    .line 2926
    iput-object p2, v6, Lcom/android/camera/BeautyModule$ResizeBundle;->exif:Lcom/android/camera/exif/ExifInterface;

    .line 2927
    new-instance v0, Lcom/android/camera/BeautyModule$Memento$3;

    move-object v1, p0

    move v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/BeautyModule$Memento$3;-><init>(Lcom/android/camera/BeautyModule$Memento;ZZLcom/android/camera/watermark/WatermarkViewData;Z)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/camera/BeautyModule$ResizeBundle;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    .line 2939
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/BeautyModule$Memento$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2940
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
    .line 2944
    iget-boolean v0, p0, Lcom/android/camera/BeautyModule$Memento;->isImageCaptureIntent:Z

    if-nez v0, :cond_0

    .line 2945
    invoke-direct/range {p0 .. p6}, Lcom/android/camera/BeautyModule$Memento;->savePhotoForNonImageCaptureIntent([BLcom/android/camera/exif/ExifInterface;ZZLcom/android/camera/watermark/WatermarkViewData;Z)V

    .line 2949
    :cond_0
    if-nez p5, :cond_1

    iget-object v0, p0, Lcom/android/camera/BeautyModule$Memento;->saveCb:Lcom/android/camera/BeautyModule$SavePictureCallback;

    invoke-interface {v0}, Lcom/android/camera/BeautyModule$SavePictureCallback;->isNotifyRemoteShutterListner()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2952
    iget-object v0, p0, Lcom/android/camera/BeautyModule$Memento;->this$0:Lcom/android/camera/BeautyModule;

    invoke-virtual {v0}, Lcom/android/camera/BeautyModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/remote/RemoteShutterListener;->onPictureTaken([B)V

    .line 2959
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BeautyModule$Memento;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$500(Lcom/android/camera/BeautyModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V

    .line 2960
    return-void
.end method

.method private saveJpegData([BLcom/android/camera/BeautyModule$SavePictureCallback;)V
    .locals 12
    .param p1, "originalJpegData"    # [B
    .param p2, "saveCb"    # Lcom/android/camera/BeautyModule$SavePictureCallback;

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2824
    iput-object p2, p0, Lcom/android/camera/BeautyModule$Memento;->saveCb:Lcom/android/camera/BeautyModule$SavePictureCallback;

    .line 2826
    invoke-static {p1}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v2

    .line 2827
    .local v2, "exif":Lcom/android/camera/exif/ExifInterface;
    invoke-static {v2}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v4

    .line 2828
    .local v4, "rotation":I
    iget-object v6, p0, Lcom/android/camera/BeautyModule$Memento;->cameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v11, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->HW_ROTATE:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v6, v11}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v8

    .line 2829
    .local v8, "hw_rotate_support":Z
    if-nez v8, :cond_4

    invoke-static {}, Lcom/android/camera/product_utils/ProductUtil;->isSupportedLib2DRotate()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/camera/BeautyModule$Memento;->lastCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    sget-object v11, Lcom/android/ex/camera2/portability/CaptureIntent;->Normal:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-eq v6, v11, :cond_4

    :cond_0
    move v3, v0

    .line 2830
    .local v3, "overrideRotate":Z
    :goto_0
    iget-object v6, p0, Lcom/android/camera/BeautyModule$Memento;->lastCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    sget-object v11, Lcom/android/ex/camera2/portability/CaptureIntent;->Normal:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-eq v6, v11, :cond_5

    move v10, v0

    .line 2831
    .local v10, "overrideExif":Z
    :goto_1
    invoke-static {}, Lcom/android/camera/BeautyModule;->access$1300()Lcom/android/camera/debug/Log$Tag;

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

    .line 2832
    invoke-static {}, Lcom/android/camera/BeautyModule;->access$1300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mLastCaptureIntent = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/android/camera/BeautyModule$Memento;->lastCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2833
    invoke-static {}, Lcom/android/camera/BeautyModule;->access$1300()Lcom/android/camera/debug/Log$Tag;

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

    .line 2834
    invoke-static {}, Lcom/android/camera/BeautyModule;->access$1300()Lcom/android/camera/debug/Log$Tag;

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

    .line 2836
    if-eqz v3, :cond_1

    .line 2837
    iget v4, p0, Lcom/android/camera/BeautyModule$Memento;->jpegRotation:I

    .line 2840
    :cond_1
    if-eqz v10, :cond_2

    .line 2841
    new-instance v9, Lcom/android/camera/util/ExifUtil$CaptureMetaData;

    iget-object v0, p0, Lcom/android/camera/BeautyModule$Memento;->lastCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    iget-object v1, p0, Lcom/android/camera/BeautyModule$Memento;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v1}, Lcom/android/camera/BeautyModule;->access$4500(Lcom/android/camera/BeautyModule;)Lcom/android/camera/async/LockableConcurrentState;

    move-result-object v1

    iget-object v6, p0, Lcom/android/camera/BeautyModule$Memento;->this$0:Lcom/android/camera/BeautyModule;

    .line 2842
    invoke-static {v6}, Lcom/android/camera/BeautyModule;->access$3600(Lcom/android/camera/BeautyModule;)Lcom/android/camera/FocusOverlayManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/FocusOverlayManager;->getFocusState()I

    move-result v6

    iget-object v11, p0, Lcom/android/camera/BeautyModule$Memento;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v11}, Lcom/android/camera/BeautyModule;->access$5300(Lcom/android/camera/BeautyModule;)Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    move-result-object v11

    invoke-direct {v9, v0, v1, v6, v11}, Lcom/android/camera/util/ExifUtil$CaptureMetaData;-><init>(Lcom/android/ex/camera2/portability/CaptureIntent;Lcom/android/camera/async/LockableConcurrentState;ILcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;)V

    .line 2843
    .local v9, "metaData":Lcom/android/camera/util/ExifUtil$CaptureMetaData;
    iget-object v0, p0, Lcom/android/camera/BeautyModule$Memento;->cameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getCameraCapabilitiesExtension()Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/BeautyModule$Memento;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2, v1, v9}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->buildExifInfo(Lcom/android/camera/exif/ExifInterface;Landroid/hardware/Camera$Parameters;Lcom/android/camera/util/ExifUtil$CaptureMetaData;)V

    .line 2846
    .end local v9    # "metaData":Lcom/android/camera/util/ExifUtil$CaptureMetaData;
    :cond_2
    invoke-interface {p2}, Lcom/android/camera/BeautyModule$SavePictureCallback;->isUseWaterMark()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2853
    .local v5, "watermarkViewData":Lcom/android/camera/watermark/WatermarkViewData;
    :cond_3
    :goto_2
    invoke-virtual {v2}, Lcom/android/camera/exif/ExifInterface;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2854
    .local v7, "exifThumbnail":Landroid/graphics/Bitmap;
    if-nez v7, :cond_7

    if-nez v5, :cond_7

    .line 2855
    invoke-interface {p2}, Lcom/android/camera/BeautyModule$SavePictureCallback;->isFakeImage()Z

    move-result v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/BeautyModule$Memento;->addThumbnail([BLcom/android/camera/exif/ExifInterface;ZILcom/android/camera/watermark/WatermarkViewData;Z)V

    .line 2859
    :goto_3
    return-void

    .end local v3    # "overrideRotate":Z
    .end local v5    # "watermarkViewData":Lcom/android/camera/watermark/WatermarkViewData;
    .end local v7    # "exifThumbnail":Landroid/graphics/Bitmap;
    .end local v10    # "overrideExif":Z
    :cond_4
    move v3, v1

    .line 2829
    goto/16 :goto_0

    .restart local v3    # "overrideRotate":Z
    :cond_5
    move v10, v1

    .line 2830
    goto/16 :goto_1

    .line 2846
    .restart local v10    # "overrideExif":Z
    :cond_6
    iget-object v0, p0, Lcom/android/camera/BeautyModule$Memento;->this$0:Lcom/android/camera/BeautyModule;

    .line 2847
    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$500(Lcom/android/camera/BeautyModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWatermarkManager()Lcom/android/camera/WatermarkManager;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/BeautyModule$Memento;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$500(Lcom/android/camera/BeautyModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWatermarkManager()Lcom/android/camera/WatermarkManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/BeautyModule$Memento;->cameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPhotoSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v1

    iget-object v6, p0, Lcom/android/camera/BeautyModule$Memento;->cameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v6}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPhotoSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v6

    invoke-virtual {v0, v1, v6}, Lcom/android/camera/WatermarkManager;->getData(II)Lcom/android/camera/watermark/WatermarkViewData;

    move-result-object v5

    goto :goto_2

    .line 2857
    .restart local v5    # "watermarkViewData":Lcom/android/camera/watermark/WatermarkViewData;
    .restart local v7    # "exifThumbnail":Landroid/graphics/Bitmap;
    :cond_7
    invoke-interface {p2}, Lcom/android/camera/BeautyModule$SavePictureCallback;->isFakeImage()Z

    move-result v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/BeautyModule$Memento;->updateThumbnailAndSave([BLcom/android/camera/exif/ExifInterface;ZILcom/android/camera/watermark/WatermarkViewData;Z)V

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
    .line 3031
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/BeautyModule$Memento;->pictureCallbackFactory:Lcom/android/camera/BeautyModule$PictureCallbackFactoryBase;

    invoke-virtual {v2}, Lcom/android/camera/BeautyModule$PictureCallbackFactoryBase;->needFakeImage()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p7, :cond_0

    .line 3032
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/BeautyModule$Memento;->onMediaSavedListener:Lcom/android/camera/BeautyModule$MediaSaveListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/BeautyModule$Memento;->saveCb:Lcom/android/camera/BeautyModule$SavePictureCallback;

    move-object/from16 v0, p0

    invoke-interface {v3, v0}, Lcom/android/camera/BeautyModule$SavePictureCallback;->getTitle(Lcom/android/camera/BeautyModule$Memento;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/camera/BeautyModule$Memento;->date:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/BeautyModule$Memento;->location:Landroid/location/Location;

    move/from16 v7, p6

    move-object/from16 v8, p4

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-virtual/range {v2 .. v11}, Lcom/android/camera/BeautyModule$MediaSaveListener;->updateImage(Ljava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;[BII)V

    .line 3069
    :goto_0
    return-void

    .line 3035
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/BeautyModule$Memento;->pictureCallbackFactory:Lcom/android/camera/BeautyModule$PictureCallbackFactoryBase;

    invoke-virtual {v2}, Lcom/android/camera/BeautyModule$PictureCallbackFactoryBase;->needFakeImage()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p7, :cond_2

    const/4 v12, 0x1

    .line 3036
    .local v12, "isFake":Z
    :goto_1
    if-eqz v12, :cond_3

    const-string v11, "image/fake"

    .line 3038
    .local v11, "mime":Ljava/lang/String;
    :goto_2
    if-eqz v12, :cond_1

    .line 3039
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/BeautyModule$Memento;->isFakeGenerated:Z

    .line 3041
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/BeautyModule$Memento;->saveCb:Lcom/android/camera/BeautyModule$SavePictureCallback;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/android/camera/BeautyModule$SavePictureCallback;->getTitle(Lcom/android/camera/BeautyModule$Memento;)Ljava/lang/String;

    move-result-object v6

    .line 3043
    .local v6, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/BeautyModule$Memento;->future:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v2}, Lcom/google/common/util/concurrent/SettableFuture;->isDone()Z

    move-result v2

    if-nez v2, :cond_4

    .line 3044
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/BeautyModule$Memento;->future:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v2, Lcom/android/camera/BeautyModule$Memento$4;

    move-object/from16 v3, p0

    move/from16 v4, p5

    move-object/from16 v5, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p6

    move-object/from16 v10, p4

    invoke-direct/range {v2 .. v11}, Lcom/android/camera/BeautyModule$Memento$4;-><init>(Lcom/android/camera/BeautyModule$Memento;Z[BLjava/lang/String;IIILcom/android/camera/exif/ExifInterface;Ljava/lang/String;)V

    .line 3060
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v3

    .line 3044
    invoke-virtual {v13, v2, v3}, Lcom/google/common/util/concurrent/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    .line 3035
    .end local v6    # "title":Ljava/lang/String;
    .end local v11    # "mime":Ljava/lang/String;
    .end local v12    # "isFake":Z
    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    .line 3036
    .restart local v12    # "isFake":Z
    :cond_3
    const-string v11, "image/jpeg"

    goto :goto_2

    .line 3062
    .restart local v6    # "title":Ljava/lang/String;
    .restart local v11    # "mime":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/android/camera/BeautyModule;->access$1300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    const-string v3, "save fake image for post process normal case"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3063
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/BeautyModule$Memento;->onMediaSavedListener:Lcom/android/camera/BeautyModule$MediaSaveListener;

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Lcom/android/camera/BeautyModule$MediaSaveListener;->setNeedThumbnail(Z)V

    .line 3064
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/BeautyModule$Memento;->this$0:Lcom/android/camera/BeautyModule;

    invoke-virtual {v2}, Lcom/android/camera/BeautyModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/CameraServices;->getMediaSaver()Lcom/android/camera/app/MediaSaver;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/BeautyModule$Memento;->date:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/BeautyModule$Memento;->location:Landroid/location/Location;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/BeautyModule$Memento;->onMediaSavedListener:Lcom/android/camera/BeautyModule$MediaSaveListener;

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
    .line 2965
    invoke-static/range {p2 .. p2}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v7

    .line 2967
    .local v7, "orientation":I
    if-eqz p4, :cond_0

    .line 2968
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/camera/BeautyModule$Memento;->jpegRotation:I

    .line 2971
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyModule$Memento;->saveCb:Lcom/android/camera/BeautyModule$SavePictureCallback;

    move-object/from16 v0, p0

    invoke-interface {v4, v0}, Lcom/android/camera/BeautyModule$SavePictureCallback;->getTitle(Lcom/android/camera/BeautyModule$Memento;)Ljava/lang/String;

    move-result-object v9

    .line 2972
    .local v9, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/camera/BeautyModule$Memento;->date:J

    const-wide/16 v12, 0x0

    cmp-long v4, v4, v12

    if-nez v4, :cond_1

    const-wide/16 v10, -0x1

    .line 2973
    .local v10, "date":J
    :goto_0
    invoke-static {}, Lcom/android/camera/BeautyModule;->access$1300()Lcom/android/camera/debug/Log$Tag;

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

    .line 2975
    if-eqz p5, :cond_2

    .line 2976
    invoke-static {}, Lcom/android/camera/BeautyModule;->access$1300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v5, "addWatermarkImage"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2977
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyModule$Memento;->cameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->HW_ROTATE:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v4, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v18

    .line 2978
    .local v18, "hw_rotate_support":Z
    invoke-static {}, Lcom/android/camera/watermark/WatermarkImageSaver;->getInstance()Lcom/android/camera/watermark/WatermarkImageSaver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/BeautyModule$Memento;->this$0:Lcom/android/camera/BeautyModule;

    .line 2979
    invoke-virtual {v5}, Lcom/android/camera/BeautyModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/BeautyModule$Memento;->location:Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/BeautyModule$Memento;->onMediaSavedListener:Lcom/android/camera/BeautyModule$MediaSaveListener;

    move-object/from16 v5, p1

    move-object/from16 v6, p5

    move-object/from16 v8, p0

    move-wide v15, v10

    move-object/from16 v17, p2

    .line 2978
    invoke-virtual/range {v4 .. v18}, Lcom/android/camera/watermark/WatermarkImageSaver;->addWatermarkImage([BLcom/android/camera/watermark/WatermarkViewData;ILcom/android/camera/watermark/WatermarkImageSaver$WatermarkImageSavedCallback;Ljava/lang/String;JLcom/android/camera/app/CameraServices;Landroid/location/Location;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;JLcom/android/camera/exif/ExifInterface;Z)V

    .line 2989
    .end local v18    # "hw_rotate_support":Z
    :goto_1
    return-void

    .line 2972
    .end local v10    # "date":J
    :cond_1
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/camera/BeautyModule$Memento;->date:J

    goto :goto_0

    .line 2983
    .restart local v10    # "date":J
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/android/camera/BeautyModule$Memento;->setExifTag(Lcom/android/camera/exif/ExifInterface;Z)V

    .line 2985
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v7}, Lcom/android/camera/BeautyModule$Memento;->calculateImageWidth(Lcom/android/camera/exif/ExifInterface;I)I

    move-result v21

    .line 2986
    .local v21, "width":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v7}, Lcom/android/camera/BeautyModule$Memento;->calculateImageHeight(Lcom/android/camera/exif/ExifInterface;I)I

    move-result v22

    .local v22, "height":I
    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v23, p2

    move/from16 v24, p3

    move/from16 v25, v7

    move/from16 v26, p6

    .line 2987
    invoke-direct/range {v19 .. v26}, Lcom/android/camera/BeautyModule$Memento;->saveOrUpdateImage([BIILcom/android/camera/exif/ExifInterface;ZIZ)V

    goto :goto_1
.end method

.method private setExifTag(Lcom/android/camera/exif/ExifInterface;Z)V
    .locals 14
    .param p1, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p2, "needOverrideRotation"    # Z

    .prologue
    .line 2992
    invoke-static {p1}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v5

    .line 2994
    .local v5, "orientation":I
    if-eqz p2, :cond_0

    .line 2995
    iget v5, p0, Lcom/android/camera/BeautyModule$Memento;->jpegRotation:I

    .line 2998
    :cond_0
    iget-object v7, p0, Lcom/android/camera/BeautyModule$Memento;->headingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v7}, Lcom/android/camera/hardware/HeadingSensor;->getCurrentHeading()I

    move-result v4

    .line 2999
    .local v4, "heading":I
    iget-boolean v7, p0, Lcom/android/camera/BeautyModule$Memento;->compassTagEnabled:Z

    if-nez v7, :cond_4

    const/4 v2, 0x0

    .line 3000
    .local v2, "enabled":Z
    :goto_0
    const/4 v7, -0x1

    if-eq v4, v7, :cond_1

    .line 3002
    if-eqz v2, :cond_1

    .line 3003
    sget v7, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    const-string v8, "M"

    invoke-virtual {p1, v7, v8}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    .line 3006
    .local v0, "directionRefTag":Lcom/android/camera/exif/ExifTag;
    sget v7, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    new-instance v8, Lcom/android/camera/exif/Rational;

    int-to-long v10, v4

    const-wide/16 v12, 0x1

    invoke-direct {v8, v10, v11, v12, v13}, Lcom/android/camera/exif/Rational;-><init>(JJ)V

    invoke-virtual {p1, v7, v8}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    .line 3009
    .local v1, "directionTag":Lcom/android/camera/exif/ExifTag;
    invoke-virtual {p1, v0}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 3010
    invoke-virtual {p1, v1}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 3014
    .end local v0    # "directionRefTag":Lcom/android/camera/exif/ExifTag;
    .end local v1    # "directionTag":Lcom/android/camera/exif/ExifTag;
    :cond_1
    iget-boolean v7, p0, Lcom/android/camera/BeautyModule$Memento;->frontFlashTriggered:Z

    if-eqz v7, :cond_2

    .line 3015
    sget v7, Lcom/android/camera/exif/ExifInterface;->TAG_FLASH:I

    const/4 v8, 0x1

    .line 3017
    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    .line 3015
    invoke-virtual {p1, v7, v8}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v3

    .line 3018
    .local v3, "flashTag":Lcom/android/camera/exif/ExifTag;
    invoke-virtual {p1, v3}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 3021
    .end local v3    # "flashTag":Lcom/android/camera/exif/ExifTag;
    :cond_2
    if-eqz p2, :cond_3

    .line 3022
    sget v7, Lcom/android/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    .line 3023
    invoke-static {v5}, Lcom/android/camera/exif/ExifInterface;->getOrientationValueForRotation(I)S

    move-result v8

    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    .line 3022
    invoke-virtual {p1, v7, v8}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v6

    .line 3024
    .local v6, "rotationTag":Lcom/android/camera/exif/ExifTag;
    invoke-virtual {p1, v6}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 3026
    .end local v6    # "rotationTag":Lcom/android/camera/exif/ExifTag;
    :cond_3
    return-void

    .line 2999
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
    .line 2889
    iget-boolean v0, p0, Lcom/android/camera/BeautyModule$Memento;->isImageCaptureIntent:Z

    if-nez v0, :cond_3

    if-nez p5, :cond_3

    .line 2890
    invoke-virtual {p2}, Lcom/android/camera/exif/ExifInterface;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2891
    .local v7, "thumbnail":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_2

    .line 2892
    invoke-static {}, Lcom/android/camera/BeautyModule;->access$1300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "exif.getThumbnailBitmap available"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2893
    invoke-static {}, Lcom/android/camera/BeautyModule;->access$1300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveCb.isUpdateThumbnail() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/BeautyModule$Memento;->saveCb:Lcom/android/camera/BeautyModule$SavePictureCallback;

    invoke-interface {v2}, Lcom/android/camera/BeautyModule$SavePictureCallback;->isUpdateThumbnail()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2894
    iget-object v0, p0, Lcom/android/camera/BeautyModule$Memento;->saveCb:Lcom/android/camera/BeautyModule$SavePictureCallback;

    invoke-interface {v0}, Lcom/android/camera/BeautyModule$SavePictureCallback;->isUpdateThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2895
    iget-object v0, p0, Lcom/android/camera/BeautyModule$Memento;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$400(Lcom/android/camera/BeautyModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/BeautyModule$Memento;->this$0:Lcom/android/camera/BeautyModule;

    invoke-virtual {v1}, Lcom/android/camera/BeautyModule;->getPeekAccessibilityString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/app/CameraAppUI;->startCaptureIndicatorRevealAnimation(Ljava/lang/String;Z)V

    .line 2896
    iget-object v0, p0, Lcom/android/camera/BeautyModule$Memento;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$400(Lcom/android/camera/BeautyModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v7, p4}, Lcom/android/camera/app/CameraAppUI;->updateCaptureIndicatorThumbnail(Landroid/graphics/Bitmap;I)V

    .line 2897
    const/4 v0, 0x7

    invoke-static {v0}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 2899
    :cond_0
    const/4 v3, 0x0

    .line 2906
    .end local v7    # "thumbnail":Landroid/graphics/Bitmap;
    .local v3, "needThumbnail":Z
    :goto_0
    invoke-static {}, Lcom/android/camera/BeautyModule;->access$1300()Lcom/android/camera/debug/Log$Tag;

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

    .line 2908
    iget-object v0, p0, Lcom/android/camera/BeautyModule$Memento;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$2700(Lcom/android/camera/BeautyModule;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2909
    iget-object v0, p0, Lcom/android/camera/BeautyModule$Memento;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$2700(Lcom/android/camera/BeautyModule;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 2910
    iget-object v0, p0, Lcom/android/camera/BeautyModule$Memento;->this$0:Lcom/android/camera/BeautyModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/BeautyModule;->access$2702(Lcom/android/camera/BeautyModule;Lcom/android/camera/stats/profiler/Profile;)Lcom/android/camera/stats/profiler/Profile;

    .line 2913
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/BeautyModule$Memento;->shouldResizeTo16x9:Z

    if-eqz v0, :cond_4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p5

    move v6, p6

    .line 2914
    invoke-direct/range {v0 .. v6}, Lcom/android/camera/BeautyModule$Memento;->resizeAndSave([BLcom/android/camera/exif/ExifInterface;ZZLcom/android/camera/watermark/WatermarkViewData;Z)V

    .line 2918
    :goto_1
    return-void

    .line 2901
    .end local v3    # "needThumbnail":Z
    .restart local v7    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_2
    const/4 v3, 0x1

    .restart local v3    # "needThumbnail":Z
    goto :goto_0

    .line 2904
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

    .line 2916
    invoke-direct/range {v0 .. v6}, Lcom/android/camera/BeautyModule$Memento;->saveFinalPhoto([BLcom/android/camera/exif/ExifInterface;ZZLcom/android/camera/watermark/WatermarkViewData;Z)V

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
    .line 2801
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/BeautyModule$Memento;->saveOrUpdateImage([BIILcom/android/camera/exif/ExifInterface;ZIZ)V

    .line 2803
    const/4 v0, 0x1

    return v0
.end method

.method public onPictureSaveFinished([B)V
    .locals 2
    .param p1, "jpeg"    # [B

    .prologue
    .line 2810
    iget-object v0, p0, Lcom/android/camera/BeautyModule$Memento;->this$0:Lcom/android/camera/BeautyModule;

    invoke-virtual {v0}, Lcom/android/camera/BeautyModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/remote/RemoteShutterListener;->onPictureTaken([B)V

    .line 2816
    iget-object v0, p0, Lcom/android/camera/BeautyModule$Memento;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$500(Lcom/android/camera/BeautyModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V

    .line 2817
    return-void
.end method

.method public onThumbnailUpdate(ILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2788
    iget-object v0, p0, Lcom/android/camera/BeautyModule$Memento;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$4300(Lcom/android/camera/BeautyModule;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/BeautyModule$Memento$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/camera/BeautyModule$Memento$1;-><init>(Lcom/android/camera/BeautyModule$Memento;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2796
    return-void
.end method
