.class Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$5;
.super Ljava/lang/Object;
.source "LogicCamImageProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->onProcessError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;

.field final synthetic val$error:I


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$5;->this$0:Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;

    iput p2, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$5;->val$error:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$5;->this$0:Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->access$000(Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;)Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$5;->val$error:I

    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;->onProcessError(I)V

    .line 437
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$5;->this$0:Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->access$400(Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 438
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$5;->this$0:Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->access$100(Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    const-string v1, "mImageEngine.abort"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 439
    return-void
.end method
