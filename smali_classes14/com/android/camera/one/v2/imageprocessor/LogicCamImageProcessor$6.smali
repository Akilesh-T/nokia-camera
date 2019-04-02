.class Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$6;
.super Ljava/lang/Object;
.source "LogicCamImageProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->onProcessDone(III[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;

.field final synthetic val$jepgData:[B


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;[B)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;

    .prologue
    .line 450
    iput-object p1, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$6;->this$0:Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;

    iput-object p2, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$6;->val$jepgData:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 453
    iget-object v3, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$6;->this$0:Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;

    invoke-static {v3}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->access$100(Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v3

    const-string v4, "onProcessDone"

    invoke-interface {v3, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 454
    const/4 v2, 0x0

    .line 456
    .local v2, "imageInfo":Lcom/android/camera/processing/imagebackend/ImageInfo;
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$6;->this$0:Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;

    invoke-static {v3}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->access$300(Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/camera/processing/imagebackend/ImageInfo;

    move-object v2, v0

    .line 457
    iget-object v3, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$6;->this$0:Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;

    invoke-static {v3}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->access$100(Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v3

    const-string v4, "mImageInfo.get"

    invoke-interface {v3, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :goto_0
    if-eqz v2, :cond_0

    .line 463
    iget-object v3, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$6;->this$0:Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;

    invoke-static {v3}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->access$000(Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;)Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$6;->val$jepgData:[B

    invoke-virtual {v3, v4, v2}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;->onProcessDone([BLcom/android/camera/processing/imagebackend/ImageInfo;)V

    .line 467
    :goto_1
    iget-object v3, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$6;->this$0:Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;

    invoke-static {v3}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->access$400(Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 468
    iget-object v3, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$6;->this$0:Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;

    invoke-static {v3}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->access$100(Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v3

    const-string v4, "mImageEngine done"

    invoke-interface {v3, v4}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 469
    return-void

    .line 458
    :catch_0
    move-exception v1

    .line 459
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mImageInfo.get fail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 465
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v3, p0, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor$6;->this$0:Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;

    invoke-static {v3}, Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;->access$000(Lcom/android/camera/one/v2/imageprocessor/LogicCamImageProcessor;)Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;->onProcessError(I)V

    goto :goto_1
.end method
