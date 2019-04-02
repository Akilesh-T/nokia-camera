.class Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$6;
.super Ljava/lang/Object;
.source "DualSightImageProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->onProcessError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;

.field final synthetic val$error:I


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$6;->this$0:Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;

    iput p2, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$6;->val$error:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$6;->this$0:Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->access$400(Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;)Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$6;->val$error:I

    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;->onProcessError(I)V

    .line 247
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$6;->this$0:Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->access$300(Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase;->abort()V

    .line 248
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$6;->this$0:Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->access$300(Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase;->release()V

    .line 249
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$6;->this$0:Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->access$600(Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 250
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$6;->this$0:Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->access$200(Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    const-string v1, "mImageEngine.abort"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 251
    return-void
.end method
