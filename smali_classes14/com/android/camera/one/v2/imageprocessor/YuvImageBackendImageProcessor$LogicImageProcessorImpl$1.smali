.class Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl$1;
.super Ljava/lang/Object;
.source "YuvImageBackendImageProcessor.java"

# interfaces
.implements Lcom/android/camera/processing/imagebackend/ImageProcessorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;->convertImageAndProcess(Lcom/android/ex/camera2/portability/CaptureIntent;ILcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Lcom/google/common/util/concurrent/FutureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl$1;->this$1:Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostProcessImageCompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;)V
    .locals 1
    .param p1, "task"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl$1;->this$1:Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;->access$500(Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;)Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;->onPostProcessImageCompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;)V

    .line 287
    return-void
.end method

.method public onPostProcessUriResolved(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Landroid/net/Uri;)V
    .locals 1
    .param p1, "task"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl$1;->this$1:Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;->access$500(Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;)Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;->onPostProcessUriResolved(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Landroid/net/Uri;)V

    .line 312
    return-void
.end method

.method public onRawDataReady(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;)V
    .locals 1
    .param p1, "task"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;
    .param p2, "payload"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl$1;->this$1:Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;->access$500(Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;)Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;->onRawDataReady(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;)V

    .line 292
    return-void
.end method

.method public onResultCompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;)V
    .locals 1
    .param p1, "task"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;
    .param p2, "payload"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl$1;->this$1:Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;->access$500(Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;)Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;->onResultCompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;)V

    .line 282
    return-void
.end method

.method public onResultUncompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "task"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl$1;->this$1:Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;->access$500(Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;)Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;->onResultUncompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Landroid/graphics/Bitmap;)V

    .line 302
    return-void
.end method

.method public onResultUncompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Lcom/android/camera/processing/imagebackend/TaskImageContainer$UncompressedPayload;)V
    .locals 1
    .param p1, "task"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;
    .param p2, "payload"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$UncompressedPayload;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl$1;->this$1:Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;->access$500(Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;)Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;->onResultUncompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Lcom/android/camera/processing/imagebackend/TaskImageContainer$UncompressedPayload;)V

    .line 297
    return-void
.end method

.method public onResultUri(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Landroid/net/Uri;)V
    .locals 1
    .param p1, "task"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl$1;->this$1:Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;->access$500(Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;)Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;->onResultUri(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Landroid/net/Uri;)V

    .line 307
    return-void
.end method

.method public onStart(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;)V
    .locals 1
    .param p1, "task"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl$1;->this$1:Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;->access$500(Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;)Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;->onStart(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;)V

    .line 277
    return-void
.end method
