.class Lcom/android/camera/BokehModule$Memento;
.super Ljava/lang/Object;
.source "BokehModule.java"

# interfaces
.implements Lcom/android/camera/watermark/WatermarkImageSaver$WatermarkImageSavedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BokehModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Memento"
.end annotation


# instance fields
.field private bokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

.field private cameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

.field private cameraId:I

.field private cameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

.field private captureStartTime:J

.field private compassTagEnabled:Z

.field private date:J

.field private frontFlashTriggered:Z

.field private headingSensor:Lcom/android/camera/hardware/HeadingSensor;

.field private isFakeGenerated:Z

.field private isImageCaptureIntent:Z

.field private isSuccess:Z

.field private jpegRotation:I

.field private lastCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

.field private location:Landroid/location/Location;

.field private mirror:Z

.field private onMediaSavedListener:Lcom/android/camera/BokehModule$MediaSaveListener;

.field private parameters:Landroid/hardware/Camera$Parameters;

.field private pictureCallbackFactory:Lcom/android/camera/BokehModule$PictureCallbackFactoryBase;

.field private quickCapture:Z

.field private saveCb:Lcom/android/camera/BokehModule$SavePictureCallback;

.field private settableFuture:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private shouldResizeTo16x9:Z

.field final synthetic this$0:Lcom/android/camera/BokehModule;

.field private title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/camera/BokehModule;)V
    .locals 0

    .prologue
    .line 3499
    iput-object p1, p0, Lcom/android/camera/BokehModule$Memento;->this$0:Lcom/android/camera/BokehModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/BokehModule;Lcom/android/camera/BokehModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/BokehModule;
    .param p2, "x1"    # Lcom/android/camera/BokehModule$1;

    .prologue
    .line 3499
    invoke-direct {p0, p1}, Lcom/android/camera/BokehModule$Memento;-><init>(Lcom/android/camera/BokehModule;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/camera/BokehModule$Memento;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehModule$Memento;

    .prologue
    .line 3499
    iget-boolean v0, p0, Lcom/android/camera/BokehModule$Memento;->mirror:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/camera/BokehModule$Memento;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehModule$Memento;
    .param p1, "x1"    # Z

    .prologue
    .line 3499
    iput-boolean p1, p0, Lcom/android/camera/BokehModule$Memento;->mirror:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/camera/BokehModule$Memento;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehModule$Memento;

    .prologue
    .line 3499
    iget v0, p0, Lcom/android/camera/BokehModule$Memento;->cameraId:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/camera/BokehModule$Memento;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehModule$Memento;
    .param p1, "x1"    # I

    .prologue
    .line 3499
    iput p1, p0, Lcom/android/camera/BokehModule$Memento;->cameraId:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/camera/BokehModule$Memento;)Lcom/android/ex/camera2/portability/CameraCapabilities;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehModule$Memento;

    .prologue
    .line 3499
    iget-object v0, p0, Lcom/android/camera/BokehModule$Memento;->cameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/camera/BokehModule$Memento;Lcom/android/ex/camera2/portability/CameraCapabilities;)Lcom/android/ex/camera2/portability/CameraCapabilities;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehModule$Memento;
    .param p1, "x1"    # Lcom/android/ex/camera2/portability/CameraCapabilities;

    .prologue
    .line 3499
    iput-object p1, p0, Lcom/android/camera/BokehModule$Memento;->cameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/camera/BokehModule$Memento;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehModule$Memento;

    .prologue
    .line 3499
    iget v0, p0, Lcom/android/camera/BokehModule$Memento;->jpegRotation:I

    return v0
.end method

.method static synthetic access$2602(Lcom/android/camera/BokehModule$Memento;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehModule$Memento;
    .param p1, "x1"    # I

    .prologue
    .line 3499
    iput p1, p0, Lcom/android/camera/BokehModule$Memento;->jpegRotation:I

    return p1
.end method

.method static synthetic access$2700(Lcom/android/camera/BokehModule$Memento;)Lcom/google/common/util/concurrent/SettableFuture;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehModule$Memento;

    .prologue
    .line 3499
    iget-object v0, p0, Lcom/android/camera/BokehModule$Memento;->settableFuture:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/camera/BokehModule$Memento;Lcom/google/common/util/concurrent/SettableFuture;)Lcom/google/common/util/concurrent/SettableFuture;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehModule$Memento;
    .param p1, "x1"    # Lcom/google/common/util/concurrent/SettableFuture;

    .prologue
    .line 3499
    iput-object p1, p0, Lcom/android/camera/BokehModule$Memento;->settableFuture:Lcom/google/common/util/concurrent/SettableFuture;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/camera/BokehModule$Memento;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehModule$Memento;

    .prologue
    .line 3499
    iget-object v0, p0, Lcom/android/camera/BokehModule$Memento;->title:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/camera/BokehModule$Memento;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehModule$Memento;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 3499
    iput-object p1, p0, Lcom/android/camera/BokehModule$Memento;->title:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/android/camera/BokehModule$Memento;[BLcom/android/camera/BokehModule$SavePictureCallback;Lcom/android/camera/mpo/Bokeh_Info;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehModule$Memento;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Lcom/android/camera/BokehModule$SavePictureCallback;
    .param p3, "x3"    # Lcom/android/camera/mpo/Bokeh_Info;
    .param p4, "x4"    # Z

    .prologue
    .line 3499
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/BokehModule$Memento;->saveJpegData([BLcom/android/camera/BokehModule$SavePictureCallback;Lcom/android/camera/mpo/Bokeh_Info;Z)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/camera/BokehModule$Memento;[BLcom/android/camera/exif/ExifInterface;ZILcom/android/camera/watermark/WatermarkViewData;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehModule$Memento;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Lcom/android/camera/exif/ExifInterface;
    .param p3, "x3"    # Z
    .param p4, "x4"    # I
    .param p5, "x5"    # Lcom/android/camera/watermark/WatermarkViewData;
    .param p6, "x6"    # Z

    .prologue
    .line 3499
    invoke-direct/range {p0 .. p6}, Lcom/android/camera/BokehModule$Memento;->updateThumbnailAndSave([BLcom/android/camera/exif/ExifInterface;ZILcom/android/camera/watermark/WatermarkViewData;Z)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/camera/BokehModule$Memento;[BLcom/android/camera/exif/ExifInterface;ZZLcom/android/camera/watermark/WatermarkViewData;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehModule$Memento;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Lcom/android/camera/exif/ExifInterface;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .param p5, "x5"    # Lcom/android/camera/watermark/WatermarkViewData;
    .param p6, "x6"    # Z

    .prologue
    .line 3499
    invoke-direct/range {p0 .. p6}, Lcom/android/camera/BokehModule$Memento;->saveFinalPhoto([BLcom/android/camera/exif/ExifInterface;ZZLcom/android/camera/watermark/WatermarkViewData;Z)V

    return-void
.end method

.method static synthetic access$6402(Lcom/android/camera/BokehModule$Memento;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehModule$Memento;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 3499
    iput-object p1, p0, Lcom/android/camera/BokehModule$Memento;->location:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$6502(Lcom/android/camera/BokehModule$Memento;Lcom/android/camera/BokehModule$PictureCallbackFactoryBase;)Lcom/android/camera/BokehModule$PictureCallbackFactoryBase;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehModule$Memento;
    .param p1, "x1"    # Lcom/android/camera/BokehModule$PictureCallbackFactoryBase;

    .prologue
    .line 3499
    iput-object p1, p0, Lcom/android/camera/BokehModule$Memento;->pictureCallbackFactory:Lcom/android/camera/BokehModule$PictureCallbackFactoryBase;

    return-object p1
.end method

.method static synthetic access$6602(Lcom/android/camera/BokehModule$Memento;Lcom/android/ex/camera2/portability/CaptureIntent;)Lcom/android/ex/camera2/portability/CaptureIntent;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehModule$Memento;
    .param p1, "x1"    # Lcom/android/ex/camera2/portability/CaptureIntent;

    .prologue
    .line 3499
    iput-object p1, p0, Lcom/android/camera/BokehModule$Memento;->lastCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    return-object p1
.end method

.method static synthetic access$6702(Lcom/android/camera/BokehModule$Memento;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehModule$Memento;
    .param p1, "x1"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 3499
    iput-object p1, p0, Lcom/android/camera/BokehModule$Memento;->parameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$6802(Lcom/android/camera/BokehModule$Memento;Lcom/android/ex/camera2/portability/CameraSettings;)Lcom/android/ex/camera2/portability/CameraSettings;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehModule$Memento;
    .param p1, "x1"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    .line 3499
    iput-object p1, p0, Lcom/android/camera/BokehModule$Memento;->cameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    return-object p1
.end method

.method static synthetic access$6902(Lcom/android/camera/BokehModule$Memento;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehModule$Memento;
    .param p1, "x1"    # Z

    .prologue
    .line 3499
    iput-boolean p1, p0, Lcom/android/camera/BokehModule$Memento;->isImageCaptureIntent:Z

    return p1
.end method

.method static synthetic access$7002(Lcom/android/camera/BokehModule$Memento;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehModule$Memento;
    .param p1, "x1"    # Z

    .prologue
    .line 3499
    iput-boolean p1, p0, Lcom/android/camera/BokehModule$Memento;->shouldResizeTo16x9:Z

    return p1
.end method

.method static synthetic access$7102(Lcom/android/camera/BokehModule$Memento;Lcom/android/camera/hardware/HeadingSensor;)Lcom/android/camera/hardware/HeadingSensor;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehModule$Memento;
    .param p1, "x1"    # Lcom/android/camera/hardware/HeadingSensor;

    .prologue
    .line 3499
    iput-object p1, p0, Lcom/android/camera/BokehModule$Memento;->headingSensor:Lcom/android/camera/hardware/HeadingSensor;

    return-object p1
.end method

.method static synthetic access$7202(Lcom/android/camera/BokehModule$Memento;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehModule$Memento;
    .param p1, "x1"    # J

    .prologue
    .line 3499
    iput-wide p1, p0, Lcom/android/camera/BokehModule$Memento;->captureStartTime:J

    return-wide p1
.end method

.method static synthetic access$7302(Lcom/android/camera/BokehModule$Memento;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehModule$Memento;
    .param p1, "x1"    # Z

    .prologue
    .line 3499
    iput-boolean p1, p0, Lcom/android/camera/BokehModule$Memento;->compassTagEnabled:Z

    return p1
.end method

.method static synthetic access$7402(Lcom/android/camera/BokehModule$Memento;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehModule$Memento;
    .param p1, "x1"    # Z

    .prologue
    .line 3499
    iput-boolean p1, p0, Lcom/android/camera/BokehModule$Memento;->quickCapture:Z

    return p1
.end method

.method static synthetic access$7502(Lcom/android/camera/BokehModule$Memento;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehModule$Memento;
    .param p1, "x1"    # Z

    .prologue
    .line 3499
    iput-boolean p1, p0, Lcom/android/camera/BokehModule$Memento;->frontFlashTriggered:Z

    return p1
.end method

.method static synthetic access$7602(Lcom/android/camera/BokehModule$Memento;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehModule$Memento;
    .param p1, "x1"    # J

    .prologue
    .line 3499
    iput-wide p1, p0, Lcom/android/camera/BokehModule$Memento;->date:J

    return-wide p1
.end method

.method static synthetic access$7702(Lcom/android/camera/BokehModule$Memento;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehModule$Memento;
    .param p1, "x1"    # Z

    .prologue
    .line 3499
    iput-boolean p1, p0, Lcom/android/camera/BokehModule$Memento;->isFakeGenerated:Z

    return p1
.end method

.method static synthetic access$7802(Lcom/android/camera/BokehModule$Memento;Lcom/android/camera/BokehModule$MediaSaveListener;)Lcom/android/camera/BokehModule$MediaSaveListener;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehModule$Memento;
    .param p1, "x1"    # Lcom/android/camera/BokehModule$MediaSaveListener;

    .prologue
    .line 3499
    iput-object p1, p0, Lcom/android/camera/BokehModule$Memento;->onMediaSavedListener:Lcom/android/camera/BokehModule$MediaSaveListener;

    return-object p1
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
    .line 3603
    new-instance v8, Lcom/android/camera/BokehModule$AddThumbnailBundle;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lcom/android/camera/BokehModule$AddThumbnailBundle;-><init>(Lcom/android/camera/BokehModule$1;)V

    .line 3604
    .local v8, "dataBundle":Lcom/android/camera/BokehModule$AddThumbnailBundle;
    iput-object p1, v8, Lcom/android/camera/BokehModule$AddThumbnailBundle;->jpegData:[B

    .line 3605
    iput-object p2, v8, Lcom/android/camera/BokehModule$AddThumbnailBundle;->exif:Lcom/android/camera/exif/ExifInterface;

    .line 3606
    new-instance v0, Lcom/android/camera/BokehModule$Memento$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/BokehModule$Memento$2;-><init>(Lcom/android/camera/BokehModule$Memento;[BLcom/android/camera/exif/ExifInterface;ZILcom/android/camera/watermark/WatermarkViewData;Z)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/camera/BokehModule$AddThumbnailBundle;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    .line 3621
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/BokehModule$Memento$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3622
    return-void
.end method

.method private calculateImageHeight(Lcom/android/camera/exif/ExifInterface;I)I
    .locals 4
    .param p1, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p2, "orientation"    # I

    .prologue
    .line 3843
    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    invoke-virtual {p1, v3}, Lcom/android/camera/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3845
    .local v0, "exifHeight":Ljava/lang/Integer;
    iget-boolean v3, p0, Lcom/android/camera/BokehModule$Memento;->shouldResizeTo16x9:Z

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 3846
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3856
    .local v1, "height":I
    :goto_0
    return v1

    .line 3848
    .end local v1    # "height":I
    :cond_0
    new-instance v2, Lcom/android/camera/util/Size;

    iget-object v3, p0, Lcom/android/camera/BokehModule$Memento;->cameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPhotoSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/camera/util/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    .line 3849
    .local v2, "s":Lcom/android/camera/util/Size;
    iget v3, p0, Lcom/android/camera/BokehModule$Memento;->jpegRotation:I

    add-int/2addr v3, p2

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_1

    .line 3850
    invoke-virtual {v2}, Lcom/android/camera/util/Size;->height()I

    move-result v1

    .restart local v1    # "height":I
    goto :goto_0

    .line 3852
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
    .line 3826
    sget v3, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    invoke-virtual {p1, v3}, Lcom/android/camera/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3828
    .local v0, "exifWidth":Ljava/lang/Integer;
    iget-boolean v3, p0, Lcom/android/camera/BokehModule$Memento;->shouldResizeTo16x9:Z

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 3829
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3839
    .local v2, "width":I
    :goto_0
    return v2

    .line 3831
    .end local v2    # "width":I
    :cond_0
    new-instance v1, Lcom/android/camera/util/Size;

    iget-object v3, p0, Lcom/android/camera/BokehModule$Memento;->cameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPhotoSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/camera/util/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    .line 3832
    .local v1, "s":Lcom/android/camera/util/Size;
    iget v3, p0, Lcom/android/camera/BokehModule$Memento;->jpegRotation:I

    add-int/2addr v3, p2

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_1

    .line 3833
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->width()I

    move-result v2

    .restart local v2    # "width":I
    goto :goto_0

    .line 3835
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
    .line 3559
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
    .line 3665
    new-instance v6, Lcom/android/camera/BokehModule$ResizeBundle;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/android/camera/BokehModule$ResizeBundle;-><init>(Lcom/android/camera/BokehModule$1;)V

    .line 3666
    .local v6, "dataBundle":Lcom/android/camera/BokehModule$ResizeBundle;
    iput-object p1, v6, Lcom/android/camera/BokehModule$ResizeBundle;->jpegData:[B

    .line 3667
    const v0, 0x3fe38e39

    iput v0, v6, Lcom/android/camera/BokehModule$ResizeBundle;->targetAspectRatio:F

    .line 3668
    iput-object p2, v6, Lcom/android/camera/BokehModule$ResizeBundle;->exif:Lcom/android/camera/exif/ExifInterface;

    .line 3669
    new-instance v0, Lcom/android/camera/BokehModule$Memento$3;

    move-object v1, p0

    move v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/BokehModule$Memento$3;-><init>(Lcom/android/camera/BokehModule$Memento;ZZLcom/android/camera/watermark/WatermarkViewData;Z)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/camera/BokehModule$ResizeBundle;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    .line 3681
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/BokehModule$Memento$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3682
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
    .line 3686
    iget-boolean v0, p0, Lcom/android/camera/BokehModule$Memento;->isImageCaptureIntent:Z

    if-nez v0, :cond_0

    .line 3687
    invoke-direct/range {p0 .. p6}, Lcom/android/camera/BokehModule$Memento;->savePhotoForNonImageCaptureIntent([BLcom/android/camera/exif/ExifInterface;ZZLcom/android/camera/watermark/WatermarkViewData;Z)V

    .line 3691
    :cond_0
    if-nez p5, :cond_1

    iget-object v0, p0, Lcom/android/camera/BokehModule$Memento;->saveCb:Lcom/android/camera/BokehModule$SavePictureCallback;

    invoke-interface {v0}, Lcom/android/camera/BokehModule$SavePictureCallback;->isNotifyRemoteShutterListner()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3694
    iget-object v0, p0, Lcom/android/camera/BokehModule$Memento;->this$0:Lcom/android/camera/BokehModule;

    invoke-virtual {v0}, Lcom/android/camera/BokehModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/remote/RemoteShutterListener;->onPictureTaken([B)V

    .line 3701
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BokehModule$Memento;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$900(Lcom/android/camera/BokehModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V

    .line 3702
    return-void
.end method

.method private saveJpegData([BLcom/android/camera/BokehModule$SavePictureCallback;Lcom/android/camera/mpo/Bokeh_Info;Z)V
    .locals 10
    .param p1, "originalJpegData"    # [B
    .param p2, "saveCb"    # Lcom/android/camera/BokehModule$SavePictureCallback;
    .param p3, "bokehInfo"    # Lcom/android/camera/mpo/Bokeh_Info;
    .param p4, "isSuccess"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 3564
    iput-object p2, p0, Lcom/android/camera/BokehModule$Memento;->saveCb:Lcom/android/camera/BokehModule$SavePictureCallback;

    .line 3565
    iput-object p3, p0, Lcom/android/camera/BokehModule$Memento;->bokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    .line 3566
    iput-boolean p4, p0, Lcom/android/camera/BokehModule$Memento;->isSuccess:Z

    .line 3568
    invoke-static {p1}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v2

    .line 3569
    .local v2, "exif":Lcom/android/camera/exif/ExifInterface;
    invoke-static {v2}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v4

    .line 3570
    .local v4, "rotation":I
    iget-object v0, p0, Lcom/android/camera/BokehModule$Memento;->cameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->HW_ROTATE:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v8

    .line 3571
    .local v8, "hw_rotate_support":Z
    const/4 v9, 0x0

    .line 3573
    .local v9, "overrideExif":Z
    invoke-static {}, Lcom/android/camera/BokehModule;->access$300()Lcom/android/camera/debug/Log$Tag;

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

    .line 3574
    invoke-static {}, Lcom/android/camera/BokehModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mLastCaptureIntent = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/android/camera/BokehModule$Memento;->lastCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3575
    invoke-static {}, Lcom/android/camera/BokehModule;->access$300()Lcom/android/camera/debug/Log$Tag;

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

    .line 3576
    invoke-static {}, Lcom/android/camera/BokehModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "needOverrideRotation = false"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3585
    invoke-interface {p2}, Lcom/android/camera/BokehModule$SavePictureCallback;->isUseWaterMark()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3592
    .local v5, "watermarkViewData":Lcom/android/camera/watermark/WatermarkViewData;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lcom/android/camera/exif/ExifInterface;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 3593
    .local v7, "exifThumbnail":Landroid/graphics/Bitmap;
    if-nez v7, :cond_2

    if-nez v5, :cond_2

    .line 3594
    invoke-interface {p2}, Lcom/android/camera/BokehModule$SavePictureCallback;->isFakeImage()Z

    move-result v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/BokehModule$Memento;->addThumbnail([BLcom/android/camera/exif/ExifInterface;ZILcom/android/camera/watermark/WatermarkViewData;Z)V

    .line 3598
    :goto_1
    return-void

    .line 3585
    .end local v5    # "watermarkViewData":Lcom/android/camera/watermark/WatermarkViewData;
    .end local v7    # "exifThumbnail":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BokehModule$Memento;->this$0:Lcom/android/camera/BokehModule;

    .line 3586
    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$900(Lcom/android/camera/BokehModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWatermarkManager()Lcom/android/camera/WatermarkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BokehModule$Memento;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$900(Lcom/android/camera/BokehModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWatermarkManager()Lcom/android/camera/WatermarkManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/BokehModule$Memento;->cameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPhotoSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v1

    iget-object v6, p0, Lcom/android/camera/BokehModule$Memento;->cameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v6}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPhotoSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v6

    invoke-virtual {v0, v1, v6}, Lcom/android/camera/WatermarkManager;->getData(II)Lcom/android/camera/watermark/WatermarkViewData;

    move-result-object v5

    goto :goto_0

    .line 3596
    .restart local v5    # "watermarkViewData":Lcom/android/camera/watermark/WatermarkViewData;
    .restart local v7    # "exifThumbnail":Landroid/graphics/Bitmap;
    :cond_2
    invoke-interface {p2}, Lcom/android/camera/BokehModule$SavePictureCallback;->isFakeImage()Z

    move-result v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/BokehModule$Memento;->updateThumbnailAndSave([BLcom/android/camera/exif/ExifInterface;ZILcom/android/camera/watermark/WatermarkViewData;Z)V

    goto :goto_1
.end method

.method private saveOrUpdateImage([BIILcom/android/camera/exif/ExifInterface;ZIZ)V
    .locals 14
    .param p1, "jpegData"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p5, "needThumbnail"    # Z
    .param p6, "orientation"    # I
    .param p7, "isFakeImage"    # Z

    .prologue
    .line 3773
    iget-object v2, p0, Lcom/android/camera/BokehModule$Memento;->pictureCallbackFactory:Lcom/android/camera/BokehModule$PictureCallbackFactoryBase;

    invoke-virtual {v2}, Lcom/android/camera/BokehModule$PictureCallbackFactoryBase;->needFakeImage()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez p7, :cond_2

    .line 3777
    iget-object v2, p0, Lcom/android/camera/BokehModule$Memento;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v2}, Lcom/android/camera/BokehModule;->access$6200(Lcom/android/camera/BokehModule;)Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    move-result-object v2

    move/from16 v0, p5

    invoke-interface {v2, v0}, Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;->setNeedThumbnail(Z)V

    .line 3778
    iget-boolean v2, p0, Lcom/android/camera/BokehModule$Memento;->isSuccess:Z

    if-eqz v2, :cond_1

    .line 3779
    iget-object v2, p0, Lcom/android/camera/BokehModule$Memento;->this$0:Lcom/android/camera/BokehModule;

    invoke-virtual {v2}, Lcom/android/camera/BokehModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/CameraServices;->getMediaSaver()Lcom/android/camera/app/MediaSaver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/BokehModule$Memento;->bokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    iget-object v5, p0, Lcom/android/camera/BokehModule$Memento;->title:Ljava/lang/String;

    iget-wide v6, p0, Lcom/android/camera/BokehModule$Memento;->date:J

    iget-object v8, p0, Lcom/android/camera/BokehModule$Memento;->location:Landroid/location/Location;

    iget-object v2, p0, Lcom/android/camera/BokehModule$Memento;->this$0:Lcom/android/camera/BokehModule;

    .line 3781
    invoke-static {v2}, Lcom/android/camera/BokehModule;->access$6200(Lcom/android/camera/BokehModule;)Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    move-result-object v13

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p6

    move-object/from16 v12, p4

    .line 3779
    invoke-interface/range {v3 .. v13}, Lcom/android/camera/app/MediaSaver;->addMpoImage(Lcom/android/camera/mpo/Bokeh_Info;Ljava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V

    .line 3822
    :cond_0
    :goto_0
    return-void

    .line 3783
    :cond_1
    new-instance v2, Lcom/android/camera/ui/RotateTextToast;

    iget-object v3, p0, Lcom/android/camera/BokehModule$Memento;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v3}, Lcom/android/camera/BokehModule;->access$900(Lcom/android/camera/BokehModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/BokehModule$Memento;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v4}, Lcom/android/camera/BokehModule;->access$900(Lcom/android/camera/BokehModule;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    const v5, 0x7f080272

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/BokehModule$Memento;->this$0:Lcom/android/camera/BokehModule;

    iget v5, v5, Lcom/android/camera/BokehModule;->mOrientation:I

    invoke-direct {v2, v3, v4, v5}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    const/16 v3, 0xbb8

    .line 3784
    invoke-virtual {v2, v3}, Lcom/android/camera/ui/RotateTextToast;->showInTime(I)V

    .line 3785
    iget-object v2, p0, Lcom/android/camera/BokehModule$Memento;->this$0:Lcom/android/camera/BokehModule;

    invoke-virtual {v2}, Lcom/android/camera/BokehModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/CameraServices;->getMediaSaver()Lcom/android/camera/app/MediaSaver;

    move-result-object v3

    iget-object v5, p0, Lcom/android/camera/BokehModule$Memento;->title:Ljava/lang/String;

    iget-wide v6, p0, Lcom/android/camera/BokehModule$Memento;->date:J

    iget-object v8, p0, Lcom/android/camera/BokehModule$Memento;->location:Landroid/location/Location;

    iget-object v2, p0, Lcom/android/camera/BokehModule$Memento;->this$0:Lcom/android/camera/BokehModule;

    .line 3787
    invoke-static {v2}, Lcom/android/camera/BokehModule;->access$6200(Lcom/android/camera/BokehModule;)Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    move-result-object v13

    move-object v4, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p6

    move-object/from16 v12, p4

    .line 3785
    invoke-interface/range {v3 .. v13}, Lcom/android/camera/app/MediaSaver;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V

    goto :goto_0

    .line 3790
    :cond_2
    iget-object v2, p0, Lcom/android/camera/BokehModule$Memento;->pictureCallbackFactory:Lcom/android/camera/BokehModule$PictureCallbackFactoryBase;

    invoke-virtual {v2}, Lcom/android/camera/BokehModule$PictureCallbackFactoryBase;->needFakeImage()Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez p7, :cond_0

    .line 3808
    :cond_3
    iget-object v2, p0, Lcom/android/camera/BokehModule$Memento;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v2}, Lcom/android/camera/BokehModule;->access$6200(Lcom/android/camera/BokehModule;)Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    move-result-object v2

    move/from16 v0, p5

    invoke-interface {v2, v0}, Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;->setNeedThumbnail(Z)V

    .line 3809
    iget-boolean v2, p0, Lcom/android/camera/BokehModule$Memento;->isSuccess:Z

    if-eqz v2, :cond_4

    .line 3810
    iget-object v2, p0, Lcom/android/camera/BokehModule$Memento;->this$0:Lcom/android/camera/BokehModule;

    invoke-virtual {v2}, Lcom/android/camera/BokehModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/CameraServices;->getMediaSaver()Lcom/android/camera/app/MediaSaver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/BokehModule$Memento;->bokehInfo:Lcom/android/camera/mpo/Bokeh_Info;

    iget-object v5, p0, Lcom/android/camera/BokehModule$Memento;->title:Ljava/lang/String;

    iget-wide v6, p0, Lcom/android/camera/BokehModule$Memento;->date:J

    iget-object v8, p0, Lcom/android/camera/BokehModule$Memento;->location:Landroid/location/Location;

    iget-object v2, p0, Lcom/android/camera/BokehModule$Memento;->this$0:Lcom/android/camera/BokehModule;

    .line 3812
    invoke-static {v2}, Lcom/android/camera/BokehModule;->access$6200(Lcom/android/camera/BokehModule;)Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    move-result-object v13

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p6

    move-object/from16 v12, p4

    .line 3810
    invoke-interface/range {v3 .. v13}, Lcom/android/camera/app/MediaSaver;->addMpoImage(Lcom/android/camera/mpo/Bokeh_Info;Ljava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V

    goto/16 :goto_0

    .line 3814
    :cond_4
    new-instance v2, Lcom/android/camera/ui/RotateTextToast;

    iget-object v3, p0, Lcom/android/camera/BokehModule$Memento;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v3}, Lcom/android/camera/BokehModule;->access$900(Lcom/android/camera/BokehModule;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/BokehModule$Memento;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v4}, Lcom/android/camera/BokehModule;->access$900(Lcom/android/camera/BokehModule;)Lcom/android/camera/CameraActivity;

    move-result-object v4

    const v5, 0x7f080272

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/BokehModule$Memento;->this$0:Lcom/android/camera/BokehModule;

    iget v5, v5, Lcom/android/camera/BokehModule;->mOrientation:I

    invoke-direct {v2, v3, v4, v5}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    const/16 v3, 0xbb8

    .line 3815
    invoke-virtual {v2, v3}, Lcom/android/camera/ui/RotateTextToast;->showInTime(I)V

    .line 3816
    iget-object v2, p0, Lcom/android/camera/BokehModule$Memento;->this$0:Lcom/android/camera/BokehModule;

    invoke-virtual {v2}, Lcom/android/camera/BokehModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/CameraServices;->getMediaSaver()Lcom/android/camera/app/MediaSaver;

    move-result-object v3

    iget-object v5, p0, Lcom/android/camera/BokehModule$Memento;->title:Ljava/lang/String;

    iget-wide v6, p0, Lcom/android/camera/BokehModule$Memento;->date:J

    iget-object v8, p0, Lcom/android/camera/BokehModule$Memento;->location:Landroid/location/Location;

    iget-object v2, p0, Lcom/android/camera/BokehModule$Memento;->this$0:Lcom/android/camera/BokehModule;

    .line 3818
    invoke-static {v2}, Lcom/android/camera/BokehModule;->access$6200(Lcom/android/camera/BokehModule;)Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    move-result-object v13

    move-object v4, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p6

    move-object/from16 v12, p4

    .line 3816
    invoke-interface/range {v3 .. v13}, Lcom/android/camera/app/MediaSaver;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V

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
    .line 3707
    invoke-static/range {p2 .. p2}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v7

    .line 3709
    .local v7, "orientation":I
    if-eqz p4, :cond_0

    .line 3710
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/camera/BokehModule$Memento;->jpegRotation:I

    .line 3713
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BokehModule$Memento;->saveCb:Lcom/android/camera/BokehModule$SavePictureCallback;

    move-object/from16 v0, p0

    invoke-interface {v4, v0}, Lcom/android/camera/BokehModule$SavePictureCallback;->getTitle(Lcom/android/camera/BokehModule$Memento;)Ljava/lang/String;

    move-result-object v9

    .line 3714
    .local v9, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/camera/BokehModule$Memento;->date:J

    const-wide/16 v12, 0x0

    cmp-long v4, v4, v12

    if-nez v4, :cond_1

    const-wide/16 v10, -0x1

    .line 3715
    .local v10, "date":J
    :goto_0
    invoke-static {}, Lcom/android/camera/BokehModule;->access$300()Lcom/android/camera/debug/Log$Tag;

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

    .line 3717
    if-eqz p5, :cond_2

    .line 3718
    invoke-static {}, Lcom/android/camera/BokehModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v5, "addWatermarkImage"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3719
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BokehModule$Memento;->cameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->HW_ROTATE:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v4, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v18

    .line 3720
    .local v18, "hw_rotate_support":Z
    invoke-static {}, Lcom/android/camera/watermark/WatermarkImageSaver;->getInstance()Lcom/android/camera/watermark/WatermarkImageSaver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/BokehModule$Memento;->this$0:Lcom/android/camera/BokehModule;

    .line 3721
    invoke-virtual {v5}, Lcom/android/camera/BokehModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/BokehModule$Memento;->location:Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/BokehModule$Memento;->onMediaSavedListener:Lcom/android/camera/BokehModule$MediaSaveListener;

    move-object/from16 v5, p1

    move-object/from16 v6, p5

    move-object/from16 v8, p0

    move-wide v15, v10

    move-object/from16 v17, p2

    .line 3720
    invoke-virtual/range {v4 .. v18}, Lcom/android/camera/watermark/WatermarkImageSaver;->addWatermarkImage([BLcom/android/camera/watermark/WatermarkViewData;ILcom/android/camera/watermark/WatermarkImageSaver$WatermarkImageSavedCallback;Ljava/lang/String;JLcom/android/camera/app/CameraServices;Landroid/location/Location;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;JLcom/android/camera/exif/ExifInterface;Z)V

    .line 3731
    .end local v18    # "hw_rotate_support":Z
    :goto_1
    return-void

    .line 3714
    .end local v10    # "date":J
    :cond_1
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/camera/BokehModule$Memento;->date:J

    goto :goto_0

    .line 3725
    .restart local v10    # "date":J
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/android/camera/BokehModule$Memento;->setExifTag(Lcom/android/camera/exif/ExifInterface;Z)V

    .line 3727
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v7}, Lcom/android/camera/BokehModule$Memento;->calculateImageWidth(Lcom/android/camera/exif/ExifInterface;I)I

    move-result v21

    .line 3728
    .local v21, "width":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v7}, Lcom/android/camera/BokehModule$Memento;->calculateImageHeight(Lcom/android/camera/exif/ExifInterface;I)I

    move-result v22

    .local v22, "height":I
    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v23, p2

    move/from16 v24, p3

    move/from16 v25, v7

    move/from16 v26, p6

    .line 3729
    invoke-direct/range {v19 .. v26}, Lcom/android/camera/BokehModule$Memento;->saveOrUpdateImage([BIILcom/android/camera/exif/ExifInterface;ZIZ)V

    goto :goto_1
.end method

.method private setExifTag(Lcom/android/camera/exif/ExifInterface;Z)V
    .locals 14
    .param p1, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .param p2, "needOverrideRotation"    # Z

    .prologue
    .line 3734
    invoke-static {p1}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v5

    .line 3736
    .local v5, "orientation":I
    if-eqz p2, :cond_0

    .line 3737
    iget v5, p0, Lcom/android/camera/BokehModule$Memento;->jpegRotation:I

    .line 3740
    :cond_0
    iget-object v7, p0, Lcom/android/camera/BokehModule$Memento;->headingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v7}, Lcom/android/camera/hardware/HeadingSensor;->getCurrentHeading()I

    move-result v4

    .line 3741
    .local v4, "heading":I
    iget-boolean v7, p0, Lcom/android/camera/BokehModule$Memento;->compassTagEnabled:Z

    if-nez v7, :cond_4

    const/4 v2, 0x0

    .line 3742
    .local v2, "enabled":Z
    :goto_0
    const/4 v7, -0x1

    if-eq v4, v7, :cond_1

    .line 3744
    if-eqz v2, :cond_1

    .line 3745
    sget v7, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    const-string v8, "M"

    invoke-virtual {p1, v7, v8}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v0

    .line 3748
    .local v0, "directionRefTag":Lcom/android/camera/exif/ExifTag;
    sget v7, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    new-instance v8, Lcom/android/camera/exif/Rational;

    int-to-long v10, v4

    const-wide/16 v12, 0x1

    invoke-direct {v8, v10, v11, v12, v13}, Lcom/android/camera/exif/Rational;-><init>(JJ)V

    invoke-virtual {p1, v7, v8}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v1

    .line 3751
    .local v1, "directionTag":Lcom/android/camera/exif/ExifTag;
    invoke-virtual {p1, v0}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 3752
    invoke-virtual {p1, v1}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 3756
    .end local v0    # "directionRefTag":Lcom/android/camera/exif/ExifTag;
    .end local v1    # "directionTag":Lcom/android/camera/exif/ExifTag;
    :cond_1
    iget-boolean v7, p0, Lcom/android/camera/BokehModule$Memento;->frontFlashTriggered:Z

    if-eqz v7, :cond_2

    .line 3757
    sget v7, Lcom/android/camera/exif/ExifInterface;->TAG_FLASH:I

    const/4 v8, 0x1

    .line 3759
    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    .line 3757
    invoke-virtual {p1, v7, v8}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v3

    .line 3760
    .local v3, "flashTag":Lcom/android/camera/exif/ExifTag;
    invoke-virtual {p1, v3}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 3763
    .end local v3    # "flashTag":Lcom/android/camera/exif/ExifTag;
    :cond_2
    if-eqz p2, :cond_3

    .line 3764
    sget v7, Lcom/android/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    .line 3765
    invoke-static {v5}, Lcom/android/camera/exif/ExifInterface;->getOrientationValueForRotation(I)S

    move-result v8

    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    .line 3764
    invoke-virtual {p1, v7, v8}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v6

    .line 3766
    .local v6, "rotationTag":Lcom/android/camera/exif/ExifTag;
    invoke-virtual {p1, v6}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 3768
    .end local v6    # "rotationTag":Lcom/android/camera/exif/ExifTag;
    :cond_3
    return-void

    .line 3741
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
    .line 3628
    iget-boolean v0, p0, Lcom/android/camera/BokehModule$Memento;->isImageCaptureIntent:Z

    if-nez v0, :cond_3

    if-nez p5, :cond_3

    .line 3629
    invoke-virtual {p2}, Lcom/android/camera/exif/ExifInterface;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 3630
    .local v7, "thumbnail":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_2

    .line 3631
    invoke-static {}, Lcom/android/camera/BokehModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " thumbnail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3632
    invoke-static {}, Lcom/android/camera/BokehModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "exif.getThumbnailBitmap available"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3633
    invoke-static {}, Lcom/android/camera/BokehModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveCb.isUpdateThumbnail() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/BokehModule$Memento;->saveCb:Lcom/android/camera/BokehModule$SavePictureCallback;

    invoke-interface {v2}, Lcom/android/camera/BokehModule$SavePictureCallback;->isUpdateThumbnail()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3634
    iget-object v0, p0, Lcom/android/camera/BokehModule$Memento;->saveCb:Lcom/android/camera/BokehModule$SavePictureCallback;

    invoke-interface {v0}, Lcom/android/camera/BokehModule$SavePictureCallback;->isUpdateThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3635
    iget-object v0, p0, Lcom/android/camera/BokehModule$Memento;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$500(Lcom/android/camera/BokehModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->setFakeShutterButtonEnabled()V

    .line 3636
    iget-object v0, p0, Lcom/android/camera/BokehModule$Memento;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$500(Lcom/android/camera/BokehModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->setFakeSwitchButtonEnabled()V

    .line 3637
    iget-object v0, p0, Lcom/android/camera/BokehModule$Memento;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$500(Lcom/android/camera/BokehModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/BokehModule$Memento;->this$0:Lcom/android/camera/BokehModule;

    invoke-virtual {v1}, Lcom/android/camera/BokehModule;->getPeekAccessibilityString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/app/CameraAppUI;->startCaptureIndicatorRevealAnimation(Ljava/lang/String;Z)V

    .line 3638
    iget-object v0, p0, Lcom/android/camera/BokehModule$Memento;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$500(Lcom/android/camera/BokehModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v7, p4}, Lcom/android/camera/app/CameraAppUI;->updateCaptureIndicatorThumbnail(Landroid/graphics/Bitmap;I)V

    .line 3639
    const/4 v0, 0x7

    invoke-static {v0}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 3641
    :cond_0
    const/4 v3, 0x0

    .line 3648
    .end local v7    # "thumbnail":Landroid/graphics/Bitmap;
    .local v3, "needThumbnail":Z
    :goto_0
    invoke-static {}, Lcom/android/camera/BokehModule;->access$300()Lcom/android/camera/debug/Log$Tag;

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

    .line 3650
    iget-object v0, p0, Lcom/android/camera/BokehModule$Memento;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$3300(Lcom/android/camera/BokehModule;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p6, :cond_1

    .line 3651
    iget-object v0, p0, Lcom/android/camera/BokehModule$Memento;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$3300(Lcom/android/camera/BokehModule;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 3652
    iget-object v0, p0, Lcom/android/camera/BokehModule$Memento;->this$0:Lcom/android/camera/BokehModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/BokehModule;->access$3302(Lcom/android/camera/BokehModule;Lcom/android/camera/stats/profiler/Profile;)Lcom/android/camera/stats/profiler/Profile;

    .line 3655
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/BokehModule$Memento;->shouldResizeTo16x9:Z

    if-eqz v0, :cond_4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p5

    move v6, p6

    .line 3656
    invoke-direct/range {v0 .. v6}, Lcom/android/camera/BokehModule$Memento;->resizeAndSave([BLcom/android/camera/exif/ExifInterface;ZZLcom/android/camera/watermark/WatermarkViewData;Z)V

    .line 3660
    :goto_1
    return-void

    .line 3643
    .end local v3    # "needThumbnail":Z
    .restart local v7    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_2
    const/4 v3, 0x1

    .restart local v3    # "needThumbnail":Z
    goto :goto_0

    .line 3646
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

    .line 3658
    invoke-direct/range {v0 .. v6}, Lcom/android/camera/BokehModule$Memento;->saveFinalPhoto([BLcom/android/camera/exif/ExifInterface;ZZLcom/android/camera/watermark/WatermarkViewData;Z)V

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
    .line 3540
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/BokehModule$Memento;->saveOrUpdateImage([BIILcom/android/camera/exif/ExifInterface;ZIZ)V

    .line 3542
    const/4 v0, 0x1

    return v0
.end method

.method public onPictureSaveFinished([B)V
    .locals 2
    .param p1, "jpeg"    # [B

    .prologue
    .line 3549
    iget-object v0, p0, Lcom/android/camera/BokehModule$Memento;->this$0:Lcom/android/camera/BokehModule;

    invoke-virtual {v0}, Lcom/android/camera/BokehModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/remote/RemoteShutterListener;->onPictureTaken([B)V

    .line 3555
    iget-object v0, p0, Lcom/android/camera/BokehModule$Memento;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$900(Lcom/android/camera/BokehModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V

    .line 3556
    return-void
.end method

.method public onThumbnailUpdate(ILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 3527
    iget-object v0, p0, Lcom/android/camera/BokehModule$Memento;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$3100(Lcom/android/camera/BokehModule;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/BokehModule$Memento$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/camera/BokehModule$Memento$1;-><init>(Lcom/android/camera/BokehModule$Memento;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3535
    return-void
.end method
