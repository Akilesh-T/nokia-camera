.class Lcom/android/camera/video/StreamingFacadeImpl$4$2$1$2;
.super Ljava/lang/Object;
.source "StreamingFacadeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;->onBurstCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;


# direct methods
.method constructor <init>(Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;)V
    .locals 0
    .param p1, "this$3"    # Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;

    .prologue
    .line 468
    iput-object p1, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1$2;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1$2;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/StreamingFacadeImpl;->access$500(Lcom/android/camera/video/StreamingFacadeImpl;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    sget-object v1, Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;->STOPPING:Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;

    sget-object v2, Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;->IDLE:Lcom/android/camera/video/StreamingFacadeImpl$StreamingFacadeState;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 472
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1$2;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    iget-object v1, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1$2;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;

    iget-object v1, v1, Lcom/android/camera/video/StreamingFacadeImpl$4$2$1;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v1, v1, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v1, v1, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$touchChangedCallback:Lcom/android/camera/async/SafeCloseable;

    invoke-static {v0, v1}, Lcom/android/camera/video/StreamingFacadeImpl;->access$600(Lcom/android/camera/video/StreamingFacadeImpl;Lcom/android/camera/async/SafeCloseable;)V

    .line 473
    return-void
.end method
