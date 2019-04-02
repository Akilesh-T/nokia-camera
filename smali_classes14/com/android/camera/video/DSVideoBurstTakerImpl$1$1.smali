.class Lcom/android/camera/video/DSVideoBurstTakerImpl$1$1;
.super Ljava/lang/Object;
.source "DSVideoBurstTakerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/video/DSVideoBurstTakerImpl$1;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/video/DSVideoBurstTakerImpl$1;


# direct methods
.method constructor <init>(Lcom/android/camera/video/DSVideoBurstTakerImpl$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/video/DSVideoBurstTakerImpl$1;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/camera/video/DSVideoBurstTakerImpl$1$1;->this$1:Lcom/android/camera/video/DSVideoBurstTakerImpl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/video/DSVideoBurstTakerImpl$1$1;->this$1:Lcom/android/camera/video/DSVideoBurstTakerImpl$1;

    iget-object v0, v0, Lcom/android/camera/video/DSVideoBurstTakerImpl$1;->val$burstController:Lcom/android/camera/burst/BurstController;

    invoke-interface {v0}, Lcom/android/camera/burst/BurstController;->getBurstResultsListener()Lcom/android/camera/burst/BurstResultsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/burst/BurstResultsListener;->onBurstCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    iget-object v0, p0, Lcom/android/camera/video/DSVideoBurstTakerImpl$1$1;->this$1:Lcom/android/camera/video/DSVideoBurstTakerImpl$1;

    iget-object v0, v0, Lcom/android/camera/video/DSVideoBurstTakerImpl$1;->this$0:Lcom/android/camera/video/DSVideoBurstTakerImpl;

    invoke-static {v0}, Lcom/android/camera/video/DSVideoBurstTakerImpl;->access$000(Lcom/android/camera/video/DSVideoBurstTakerImpl;)Lcom/android/camera/video/RenderRecorder;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/video/RenderRecorder;->stopRecord()V

    .line 76
    iget-object v0, p0, Lcom/android/camera/video/DSVideoBurstTakerImpl$1$1;->this$1:Lcom/android/camera/video/DSVideoBurstTakerImpl$1;

    iget-object v0, v0, Lcom/android/camera/video/DSVideoBurstTakerImpl$1;->val$executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 78
    return-void

    .line 75
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/video/DSVideoBurstTakerImpl$1$1;->this$1:Lcom/android/camera/video/DSVideoBurstTakerImpl$1;

    iget-object v1, v1, Lcom/android/camera/video/DSVideoBurstTakerImpl$1;->this$0:Lcom/android/camera/video/DSVideoBurstTakerImpl;

    invoke-static {v1}, Lcom/android/camera/video/DSVideoBurstTakerImpl;->access$000(Lcom/android/camera/video/DSVideoBurstTakerImpl;)Lcom/android/camera/video/RenderRecorder;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/video/RenderRecorder;->stopRecord()V

    .line 76
    iget-object v1, p0, Lcom/android/camera/video/DSVideoBurstTakerImpl$1$1;->this$1:Lcom/android/camera/video/DSVideoBurstTakerImpl$1;

    iget-object v1, v1, Lcom/android/camera/video/DSVideoBurstTakerImpl$1;->val$executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    throw v0
.end method
