.class Lcom/android/camera/processing/ProcessingService$1;
.super Ljava/lang/Thread;
.source "ProcessingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/processing/ProcessingService;->asyncProcessAllTasksAndShutdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/processing/ProcessingService;


# direct methods
.method constructor <init>(Lcom/android/camera/processing/ProcessingService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/processing/ProcessingService;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/camera/processing/ProcessingService$1;->this$0:Lcom/android/camera/processing/ProcessingService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 195
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 198
    :goto_0
    iget-object v1, p0, Lcom/android/camera/processing/ProcessingService$1;->this$0:Lcom/android/camera/processing/ProcessingService;

    invoke-static {v1}, Lcom/android/camera/processing/ProcessingService;->access$200(Lcom/android/camera/processing/ProcessingService;)Lcom/android/camera/processing/ProcessingServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/processing/ProcessingServiceManager;->popNextSession()Lcom/android/camera/processing/ProcessingTask;

    move-result-object v0

    .local v0, "task":Lcom/android/camera/processing/ProcessingTask;
    if-eqz v0, :cond_1

    .line 199
    iget-object v1, p0, Lcom/android/camera/processing/ProcessingService$1;->this$0:Lcom/android/camera/processing/ProcessingService;

    invoke-static {v1, v0}, Lcom/android/camera/processing/ProcessingService;->access$302(Lcom/android/camera/processing/ProcessingService;Lcom/android/camera/processing/ProcessingTask;)Lcom/android/camera/processing/ProcessingTask;

    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/processing/ProcessingService$1;->this$0:Lcom/android/camera/processing/ProcessingService;

    invoke-static {v1}, Lcom/android/camera/processing/ProcessingService;->access$400(Lcom/android/camera/processing/ProcessingService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 202
    iget-object v1, p0, Lcom/android/camera/processing/ProcessingService$1;->this$0:Lcom/android/camera/processing/ProcessingService;

    invoke-static {v1}, Lcom/android/camera/processing/ProcessingService;->access$500(Lcom/android/camera/processing/ProcessingService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/android/camera/processing/ProcessingService$1;->this$0:Lcom/android/camera/processing/ProcessingService;

    invoke-static {v1}, Lcom/android/camera/processing/ProcessingService;->access$300(Lcom/android/camera/processing/ProcessingService;)Lcom/android/camera/processing/ProcessingTask;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/processing/ProcessingTask;->suspend()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/android/camera/processing/ProcessingService$1;->this$0:Lcom/android/camera/processing/ProcessingService;

    invoke-static {v1}, Lcom/android/camera/processing/ProcessingService;->access$400(Lcom/android/camera/processing/ProcessingService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 208
    iget-object v1, p0, Lcom/android/camera/processing/ProcessingService$1;->this$0:Lcom/android/camera/processing/ProcessingService;

    invoke-virtual {v1, v0}, Lcom/android/camera/processing/ProcessingService;->processAndNotify(Lcom/android/camera/processing/ProcessingTask;)V

    goto :goto_0

    .line 206
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/camera/processing/ProcessingService$1;->this$0:Lcom/android/camera/processing/ProcessingService;

    invoke-static {v2}, Lcom/android/camera/processing/ProcessingService;->access$400(Lcom/android/camera/processing/ProcessingService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    .line 210
    :cond_1
    iget-object v1, p0, Lcom/android/camera/processing/ProcessingService$1;->this$0:Lcom/android/camera/processing/ProcessingService;

    invoke-virtual {v1}, Lcom/android/camera/processing/ProcessingService;->stopSelf()V

    .line 211
    return-void
.end method
