.class Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$6;
.super Ljava/lang/Object;
.source "YUVImageProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->onProcessError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

.field final synthetic val$error:I


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$6;->this$0:Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    iput p2, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$6;->val$error:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$6;->this$0:Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->access$400(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;)Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$6;->val$error:I

    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;->onProcessError(I)V

    .line 276
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$6;->this$0:Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->access$300(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase;->abort()V

    .line 277
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$6;->this$0:Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->access$300(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase;->release()V

    .line 278
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$6;->this$0:Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->access$700(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 279
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$6;->this$0:Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->access$200(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    const-string v1, "mImageEngine.abort"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 280
    return-void
.end method
