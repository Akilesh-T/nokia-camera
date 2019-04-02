.class Lcom/android/camera/video/DualSightVideoFacadeImpl$2$5;
.super Ljava/lang/Object;
.source "DualSightVideoFacadeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->onBurstCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/video/DualSightVideoFacadeImpl$2;


# direct methods
.method constructor <init>(Lcom/android/camera/video/DualSightVideoFacadeImpl$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/video/DualSightVideoFacadeImpl$2;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$5;->this$1:Lcom/android/camera/video/DualSightVideoFacadeImpl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$5;->this$1:Lcom/android/camera/video/DualSightVideoFacadeImpl$2;

    iget-object v0, v0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$1700(Lcom/android/camera/video/DualSightVideoFacadeImpl;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    sget-object v1, Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;->STOPPING:Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;

    sget-object v2, Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;->IDLE:Lcom/android/camera/video/DualSightVideoFacadeImpl$DualSightVideoFacadeState;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 448
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$5;->this$1:Lcom/android/camera/video/DualSightVideoFacadeImpl$2;

    iget-object v0, v0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

    iget-object v1, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$5;->this$1:Lcom/android/camera/video/DualSightVideoFacadeImpl$2;

    iget-object v1, v1, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->val$touchChangedCallback:Lcom/android/camera/async/SafeCloseable;

    invoke-static {v0, v1}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$1800(Lcom/android/camera/video/DualSightVideoFacadeImpl;Lcom/android/camera/async/SafeCloseable;)V

    .line 449
    return-void
.end method
