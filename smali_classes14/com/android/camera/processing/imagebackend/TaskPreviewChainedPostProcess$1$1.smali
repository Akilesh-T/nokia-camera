.class Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1$1;
.super Ljava/lang/Object;
.source "TaskPreviewChainedPostProcess.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Lcom/google/common/base/Optional",
        "<",
        "Landroid/net/Uri;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;


# direct methods
.method constructor <init>(Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1$1;->this$1:Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1$1;->this$1:Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;

    iget-object v0, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->this$0:Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailure : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;->logWrapper(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public onSuccess(Lcom/google/common/base/Optional;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "uriOptional":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Landroid/net/Uri;>;"
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1$1;->this$1:Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;

    iget-object v0, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->this$0:Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TIMER_END Generating Fake Image, w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1$1;->this$1:Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;

    iget-object v2, v2, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->val$img:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    iget-object v2, v2, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v2}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1$1;->this$1:Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;

    iget v3, v3, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->val$subsample:I

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1$1;->this$1:Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;

    iget-object v2, v2, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->val$img:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    iget-object v2, v2, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v2}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1$1;->this$1:Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;

    iget v3, v3, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->val$subsample:I

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of subsample "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1$1;->this$1:Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;

    iget v2, v2, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->val$subsample:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;->logWrapper(Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1$1;->this$1:Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;

    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1$1;->this$1:Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;

    iget-wide v2, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->mId:J

    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1$1;->this$1:Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;

    iget-object v4, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->val$finalInput:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1$1;->this$1:Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;

    iget-object v5, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->val$finalResult:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    invoke-virtual {p1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    sget-object v7, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->POST_PROCESS_IMAGE:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;->onPostProcessPreviewUriResolved(JLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Landroid/net/Uri;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;)V

    .line 159
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 152
    check-cast p1, Lcom/google/common/base/Optional;

    invoke-virtual {p0, p1}, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1$1;->onSuccess(Lcom/google/common/base/Optional;)V

    return-void
.end method
