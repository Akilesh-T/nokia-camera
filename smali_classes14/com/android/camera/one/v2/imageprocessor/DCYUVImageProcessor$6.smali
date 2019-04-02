.class Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$6;
.super Ljava/lang/Object;
.source "DCYUVImageProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->onProcessError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;

.field final synthetic val$error:I


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$6;->this$0:Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;

    iput p2, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$6;->val$error:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$6;->this$0:Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->access$400(Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;)Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$6;->val$error:I

    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;->onProcessError(I)V

    .line 238
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$6;->this$0:Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->access$300(Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase;->abort()V

    .line 239
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$6;->this$0:Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->access$300(Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase;->release()V

    .line 240
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$6;->this$0:Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->access$700(Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 241
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$6;->this$0:Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->access$200(Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    const-string v1, "mImageEngine.abort"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 242
    return-void
.end method
