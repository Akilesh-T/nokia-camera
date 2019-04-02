.class Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl$1;
.super Ljava/lang/Object;
.source "YuvImageBackendImageSaver.java"

# interfaces
.implements Lcom/android/camera/processing/imagebackend/ImageProcessorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;->saveAndCloseImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/base/Optional;Lcom/google/common/util/concurrent/ListenableFuture;ZLcom/google/common/base/Optional;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl$1;->this$1:Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostProcessImageCompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;)V
    .locals 1
    .param p1, "task"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl$1;->this$1:Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;->access$300(Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;)Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;->onPostProcessImageCompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;)V

    .line 232
    return-void
.end method

.method public onPostProcessUriResolved(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Landroid/net/Uri;)V
    .locals 1
    .param p1, "task"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl$1;->this$1:Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;->access$300(Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;)Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;->onPostProcessUriResolved(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Landroid/net/Uri;)V

    .line 257
    return-void
.end method

.method public onRawDataReady(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;)V
    .locals 1
    .param p1, "task"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;
    .param p2, "payload"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl$1;->this$1:Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;->access$300(Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;)Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;->onRawDataReady(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;)V

    .line 237
    return-void
.end method

.method public onResultCompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;)V
    .locals 1
    .param p1, "task"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;
    .param p2, "payload"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl$1;->this$1:Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;->access$300(Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;)Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;->onResultCompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;)V

    .line 227
    return-void
.end method

.method public onResultUncompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "task"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl$1;->this$1:Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;->access$300(Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;)Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;->onResultUncompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Landroid/graphics/Bitmap;)V

    .line 247
    return-void
.end method

.method public onResultUncompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Lcom/android/camera/processing/imagebackend/TaskImageContainer$UncompressedPayload;)V
    .locals 1
    .param p1, "task"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;
    .param p2, "payload"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$UncompressedPayload;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl$1;->this$1:Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;->access$300(Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;)Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;->onResultUncompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Lcom/android/camera/processing/imagebackend/TaskImageContainer$UncompressedPayload;)V

    .line 242
    return-void
.end method

.method public onResultUri(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Landroid/net/Uri;)V
    .locals 1
    .param p1, "task"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl$1;->this$1:Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;->access$300(Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;)Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;->onResultUri(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Landroid/net/Uri;)V

    .line 252
    return-void
.end method

.method public onStart(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;)V
    .locals 1
    .param p1, "task"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl$1;->this$1:Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;->access$300(Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;)Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;->onStart(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;)V

    .line 222
    return-void
.end method
