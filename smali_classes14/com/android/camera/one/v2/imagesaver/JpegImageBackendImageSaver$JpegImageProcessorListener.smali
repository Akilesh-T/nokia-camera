.class Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$JpegImageProcessorListener;
.super Ljava/lang/Object;
.source "JpegImageBackendImageSaver.java"

# interfaces
.implements Lcom/android/camera/processing/imagebackend/ImageProcessorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JpegImageProcessorListener"
.end annotation


# instance fields
.field private final mImageRotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

.field private final mListenerProxy:Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;

.field private final mPictureSaverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

.field private final mSession:Lcom/android/camera/session/CaptureSession;


# direct methods
.method private constructor <init>(Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;Lcom/android/camera/session/CaptureSession;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/one/OneCamera$PictureSaverCallback;)V
    .locals 0
    .param p1, "listenerProxy"    # Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;
    .param p2, "session"    # Lcom/android/camera/session/CaptureSession;
    .param p3, "imageRotation"    # Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .param p4, "pictureSaverCallback"    # Lcom/android/camera/one/OneCamera$PictureSaverCallback;

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$JpegImageProcessorListener;->mListenerProxy:Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;

    .line 135
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$JpegImageProcessorListener;->mSession:Lcom/android/camera/session/CaptureSession;

    .line 136
    iput-object p3, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$JpegImageProcessorListener;->mImageRotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .line 137
    iput-object p4, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$JpegImageProcessorListener;->mPictureSaverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

    .line 138
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;Lcom/android/camera/session/CaptureSession;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/one/OneCamera$PictureSaverCallback;Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;
    .param p2, "x1"    # Lcom/android/camera/session/CaptureSession;
    .param p3, "x2"    # Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .param p4, "x3"    # Lcom/android/camera/one/OneCamera$PictureSaverCallback;
    .param p5, "x4"    # Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$1;

    .prologue
    .line 124
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$JpegImageProcessorListener;-><init>(Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;Lcom/android/camera/session/CaptureSession;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/one/OneCamera$PictureSaverCallback;)V

    return-void
.end method


# virtual methods
.method public onPostProcessImageCompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;)V
    .locals 0
    .param p1, "task"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;

    .prologue
    .line 171
    return-void
.end method

.method public onPostProcessUriResolved(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Landroid/net/Uri;)V
    .locals 0
    .param p1, "task"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 199
    return-void
.end method

.method public onRawDataReady(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;)V
    .locals 0
    .param p1, "task"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;
    .param p2, "payload"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;

    .prologue
    .line 176
    return-void
.end method

.method public onResultCompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;)V
    .locals 6
    .param p1, "task"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;
    .param p2, "payload"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;

    .prologue
    .line 147
    iget-object v3, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;->destination:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    sget-object v4, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->FINAL_IMAGE:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    if-ne v3, v4, :cond_0

    .line 152
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 153
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x4

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 154
    iget-object v3, p2, Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;->data:[B

    const/4 v4, 0x0

    iget-object v5, p2, Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;->data:[B

    array-length v5, v5

    invoke-static {v3, v4, v5, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 160
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v3, p2, Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;->data:[B

    invoke-static {v3}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v2

    .line 161
    .local v2, "rotation":I
    iget-object v3, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$JpegImageProcessorListener;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v3, v0, v2}, Lcom/android/camera/session/CaptureSession;->updateCaptureIndicatorThumbnail(Landroid/graphics/Bitmap;I)V

    .line 163
    iget-object v3, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$JpegImageProcessorListener;->mPictureSaverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

    iget-object v4, p2, Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;->data:[B

    invoke-interface {v3, v4}, Lcom/android/camera/one/OneCamera$PictureSaverCallback;->onRemoteThumbnailAvailable([B)V

    .line 166
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v2    # "rotation":I
    :cond_0
    return-void
.end method

.method public onResultUncompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "task"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 180
    if-eqz p2, :cond_0

    .line 181
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 183
    :cond_0
    return-void
.end method

.method public onResultUncompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Lcom/android/camera/processing/imagebackend/TaskImageContainer$UncompressedPayload;)V
    .locals 0
    .param p1, "task"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;
    .param p2, "payload"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$UncompressedPayload;

    .prologue
    .line 189
    return-void
.end method

.method public onResultUri(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Landroid/net/Uri;)V
    .locals 0
    .param p1, "task"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 194
    return-void
.end method

.method public onStart(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;)V
    .locals 0
    .param p1, "task"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;

    .prologue
    .line 142
    return-void
.end method
