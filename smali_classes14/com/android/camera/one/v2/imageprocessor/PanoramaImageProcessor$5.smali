.class Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$5;
.super Ljava/lang/Object;
.source "PanoramaImageProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->cancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$5;->this$0:Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$5;->this$0:Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->access$500(Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;)Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;->onProcessCancel()V

    .line 221
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$5;->this$0:Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->access$400(Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase;->abort()V

    .line 222
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$5;->this$0:Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->access$400(Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase;->release()V

    .line 223
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$5;->this$0:Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->access$700(Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 224
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$5;->this$0:Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->access$200(Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    const-string v1, "mImageEngine.cancel"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 225
    return-void
.end method
