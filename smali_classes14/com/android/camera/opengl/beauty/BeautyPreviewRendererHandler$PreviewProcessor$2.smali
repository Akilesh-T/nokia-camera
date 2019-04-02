.class Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor$2;
.super Ljava/lang/Object;
.source "BeautyPreviewRendererHandler.java"

# interfaces
.implements Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;->generateInputImagePair(Lcom/android/camera/async/Lifetime;Lcom/android/camera/opengl/ImageSource;IIII)Landroid/util/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;

.field final synthetic val$imageReader:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

.field final synthetic val$imageSource:Lcom/android/camera/opengl/ImageSource;

.field final synthetic val$ringBufferInput:Lcom/android/camera/async/BufferQueueController;


# direct methods
.method constructor <init>(Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/opengl/ImageSource;Lcom/android/camera/async/BufferQueueController;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor$2;->this$1:Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;

    iput-object p2, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor$2;->val$imageReader:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    iput-object p3, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor$2;->val$imageSource:Lcom/android/camera/opengl/ImageSource;

    iput-object p4, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor$2;->val$ringBufferInput:Lcom/android/camera/async/BufferQueueController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable()V
    .locals 8

    .prologue
    .line 266
    iget-object v1, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor$2;->val$imageReader:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    invoke-interface {v1}, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;->acquireNextImage()Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-result-object v0

    .line 267
    .local v0, "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    if-eqz v0, :cond_0

    .line 268
    sget-object v1, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$2;->$SwitchMap$com$android$camera$opengl$ImageSource:[I

    iget-object v2, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor$2;->val$imageSource:Lcom/android/camera/opengl/ImageSource;

    invoke-virtual {v2}, Lcom/android/camera/opengl/ImageSource;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 278
    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 270
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor$2;->this$1:Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;

    iget-object v1, v1, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;

    invoke-static {v1}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->access$800(Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;)Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;->isReady()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 271
    iget-object v1, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor$2;->val$ringBufferInput:Lcom/android/camera/async/BufferQueueController;

    new-instance v2, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/SingleCloseImageProxy;

    invoke-direct {v2, v0}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/SingleCloseImageProxy;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)V

    invoke-interface {v1, v2}, Lcom/android/camera/async/BufferQueueController;->update(Ljava/lang/Object;)V

    .line 272
    iget-object v1, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor$2;->this$1:Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;

    iget-object v1, v1, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;

    invoke-static {v1}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->access$800(Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;)Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor$2;->val$imageSource:Lcom/android/camera/opengl/ImageSource;

    invoke-virtual {v3}, Lcom/android/camera/opengl/ImageSource;->getValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getTimestamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 274
    :cond_1
    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    goto :goto_0

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
