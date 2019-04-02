.class Lcom/android/camera/burst/BurstFacadeImpl$1$1;
.super Ljava/lang/Object;
.source "BurstFacadeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/BurstFacadeImpl$1;->onImageSaved(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/burst/BurstFacadeImpl$1;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/BurstFacadeImpl$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/burst/BurstFacadeImpl$1;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/camera/burst/BurstFacadeImpl$1$1;->this$1:Lcom/android/camera/burst/BurstFacadeImpl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl$1$1;->this$1:Lcom/android/camera/burst/BurstFacadeImpl$1;

    iget-object v0, v0, Lcom/android/camera/burst/BurstFacadeImpl$1;->this$0:Lcom/android/camera/burst/BurstFacadeImpl;

    invoke-virtual {v0}, Lcom/android/camera/burst/BurstFacadeImpl;->stopBurst()Z

    .line 129
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl$1$1;->this$1:Lcom/android/camera/burst/BurstFacadeImpl$1;

    iget-object v0, v0, Lcom/android/camera/burst/BurstFacadeImpl$1;->this$0:Lcom/android/camera/burst/BurstFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/burst/BurstFacadeImpl;->access$100(Lcom/android/camera/burst/BurstFacadeImpl;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    sget-object v1, Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;->STOPPING:Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;

    sget-object v2, Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;->IDLE:Lcom/android/camera/burst/BurstFacadeImpl$BurstModuleState;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 131
    return-void
.end method
