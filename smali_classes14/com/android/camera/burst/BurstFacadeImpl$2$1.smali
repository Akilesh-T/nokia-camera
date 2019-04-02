.class Lcom/android/camera/burst/BurstFacadeImpl$2$1;
.super Ljava/lang/Object;
.source "BurstFacadeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/BurstFacadeImpl$2;->onBurstError(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/burst/BurstFacadeImpl$2;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/BurstFacadeImpl$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/burst/BurstFacadeImpl$2;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/camera/burst/BurstFacadeImpl$2$1;->this$1:Lcom/android/camera/burst/BurstFacadeImpl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl$2$1;->this$1:Lcom/android/camera/burst/BurstFacadeImpl$2;

    iget-object v0, v0, Lcom/android/camera/burst/BurstFacadeImpl$2;->this$0:Lcom/android/camera/burst/BurstFacadeImpl;

    invoke-virtual {v0}, Lcom/android/camera/burst/BurstFacadeImpl;->stopBurst()Z

    .line 163
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl$2$1;->this$1:Lcom/android/camera/burst/BurstFacadeImpl$2;

    iget-object v0, v0, Lcom/android/camera/burst/BurstFacadeImpl$2;->this$0:Lcom/android/camera/burst/BurstFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/burst/BurstFacadeImpl;->access$100(Lcom/android/camera/burst/BurstFacadeImpl;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    sget-object v1, Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;->STOPPING:Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;

    sget-object v2, Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;->IDLE:Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 165
    return-void
.end method
