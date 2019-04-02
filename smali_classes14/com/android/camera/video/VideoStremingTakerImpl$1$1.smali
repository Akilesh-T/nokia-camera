.class Lcom/android/camera/video/VideoStremingTakerImpl$1$1;
.super Ljava/lang/Object;
.source "VideoStremingTakerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/video/VideoStremingTakerImpl$1;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/video/VideoStremingTakerImpl$1;


# direct methods
.method constructor <init>(Lcom/android/camera/video/VideoStremingTakerImpl$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/video/VideoStremingTakerImpl$1;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/camera/video/VideoStremingTakerImpl$1$1;->this$1:Lcom/android/camera/video/VideoStremingTakerImpl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/video/VideoStremingTakerImpl$1$1;->this$1:Lcom/android/camera/video/VideoStremingTakerImpl$1;

    iget-object v0, v0, Lcom/android/camera/video/VideoStremingTakerImpl$1;->val$burstController:Lcom/android/camera/burst/BurstController;

    invoke-interface {v0}, Lcom/android/camera/burst/BurstController;->getBurstResultsListener()Lcom/android/camera/burst/BurstResultsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/burst/BurstResultsListener;->onBurstCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    iget-object v0, p0, Lcom/android/camera/video/VideoStremingTakerImpl$1$1;->this$1:Lcom/android/camera/video/VideoStremingTakerImpl$1;

    iget-object v0, v0, Lcom/android/camera/video/VideoStremingTakerImpl$1;->this$0:Lcom/android/camera/video/VideoStremingTakerImpl;

    invoke-static {v0}, Lcom/android/camera/video/VideoStremingTakerImpl;->access$000(Lcom/android/camera/video/VideoStremingTakerImpl;)Lcom/android/camera/video/RenderRecorder;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/video/RenderRecorder;->stopRecord()V

    .line 72
    iget-object v0, p0, Lcom/android/camera/video/VideoStremingTakerImpl$1$1;->this$1:Lcom/android/camera/video/VideoStremingTakerImpl$1;

    iget-object v0, v0, Lcom/android/camera/video/VideoStremingTakerImpl$1;->this$0:Lcom/android/camera/video/VideoStremingTakerImpl;

    invoke-static {v0}, Lcom/android/camera/video/VideoStremingTakerImpl;->access$000(Lcom/android/camera/video/VideoStremingTakerImpl;)Lcom/android/camera/video/RenderRecorder;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/video/RenderRecorder;->clearRecordOutputSurface()V

    .line 73
    iget-object v0, p0, Lcom/android/camera/video/VideoStremingTakerImpl$1$1;->this$1:Lcom/android/camera/video/VideoStremingTakerImpl$1;

    iget-object v0, v0, Lcom/android/camera/video/VideoStremingTakerImpl$1;->val$executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 75
    return-void

    .line 71
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/video/VideoStremingTakerImpl$1$1;->this$1:Lcom/android/camera/video/VideoStremingTakerImpl$1;

    iget-object v1, v1, Lcom/android/camera/video/VideoStremingTakerImpl$1;->this$0:Lcom/android/camera/video/VideoStremingTakerImpl;

    invoke-static {v1}, Lcom/android/camera/video/VideoStremingTakerImpl;->access$000(Lcom/android/camera/video/VideoStremingTakerImpl;)Lcom/android/camera/video/RenderRecorder;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/video/RenderRecorder;->stopRecord()V

    .line 72
    iget-object v1, p0, Lcom/android/camera/video/VideoStremingTakerImpl$1$1;->this$1:Lcom/android/camera/video/VideoStremingTakerImpl$1;

    iget-object v1, v1, Lcom/android/camera/video/VideoStremingTakerImpl$1;->this$0:Lcom/android/camera/video/VideoStremingTakerImpl;

    invoke-static {v1}, Lcom/android/camera/video/VideoStremingTakerImpl;->access$000(Lcom/android/camera/video/VideoStremingTakerImpl;)Lcom/android/camera/video/RenderRecorder;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/video/RenderRecorder;->clearRecordOutputSurface()V

    .line 73
    iget-object v1, p0, Lcom/android/camera/video/VideoStremingTakerImpl$1$1;->this$1:Lcom/android/camera/video/VideoStremingTakerImpl$1;

    iget-object v1, v1, Lcom/android/camera/video/VideoStremingTakerImpl$1;->val$executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    throw v0
.end method
