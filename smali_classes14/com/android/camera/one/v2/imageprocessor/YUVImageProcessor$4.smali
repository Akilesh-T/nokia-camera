.class Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$4;
.super Ljava/lang/Object;
.source "YUVImageProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->abort()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$4;->this$0:Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$4;->this$0:Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->access$400(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;)Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;->onProcessError(I)V

    .line 228
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$4;->this$0:Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->access$300(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase;->abort()V

    .line 229
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$4;->this$0:Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->access$300(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase;->release()V

    .line 230
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$4;->this$0:Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->access$700(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 231
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$4;->this$0:Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->access$200(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    const-string v1, "mImageEngine.abort"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 232
    return-void
.end method
