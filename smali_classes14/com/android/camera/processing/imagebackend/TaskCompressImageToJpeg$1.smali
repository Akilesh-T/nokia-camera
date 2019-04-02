.class Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg$1;
.super Ljava/lang/Object;
.source "TaskCompressImageToJpeg.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->run()V
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
.field final synthetic this$0:Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;

.field final synthetic val$finalInput:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

.field final synthetic val$finalResult:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;


# direct methods
.method constructor <init>(Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg$1;->this$0:Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;

    iput-object p2, p0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg$1;->val$finalInput:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iput-object p3, p0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg$1;->val$finalResult:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 445
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
    .line 437
    .local p1, "uriOptional":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Landroid/net/Uri;>;"
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg$1;->this$0:Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;

    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg$1;->this$0:Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;

    iget-wide v2, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mId:J

    iget-object v4, p0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg$1;->val$finalInput:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iget-object v5, p0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg$1;->val$finalResult:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    invoke-virtual {p1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    sget-object v7, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->FINAL_IMAGE:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->onUriResolved(JLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Landroid/net/Uri;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;)V

    .line 441
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 434
    check-cast p1, Lcom/google/common/base/Optional;

    invoke-virtual {p0, p1}, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg$1;->onSuccess(Lcom/google/common/base/Optional;)V

    return-void
.end method
