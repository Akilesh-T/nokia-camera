.class Lcom/android/camera/panorama/PanoFacadeImpl$2$3;
.super Ljava/lang/Object;
.source "PanoFacadeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/panorama/PanoFacadeImpl$2;->onBurstCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/panorama/PanoFacadeImpl$2;


# direct methods
.method constructor <init>(Lcom/android/camera/panorama/PanoFacadeImpl$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/panorama/PanoFacadeImpl$2;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2$3;->this$1:Lcom/android/camera/panorama/PanoFacadeImpl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2$3;->this$1:Lcom/android/camera/panorama/PanoFacadeImpl$2;

    iget-object v0, v0, Lcom/android/camera/panorama/PanoFacadeImpl$2;->this$0:Lcom/android/camera/panorama/PanoFacadeImpl;

    invoke-virtual {v0}, Lcom/android/camera/panorama/PanoFacadeImpl;->isBurstStopping()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2$3;->this$1:Lcom/android/camera/panorama/PanoFacadeImpl$2;

    iget-object v0, v0, Lcom/android/camera/panorama/PanoFacadeImpl$2;->this$0:Lcom/android/camera/panorama/PanoFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/panorama/PanoFacadeImpl;->access$400(Lcom/android/camera/panorama/PanoFacadeImpl;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    sget-object v1, Lcom/android/camera/panorama/PanoFacadeImpl$PanoFacadeState;->STOPPING:Lcom/android/camera/panorama/PanoFacadeImpl$PanoFacadeState;

    sget-object v2, Lcom/android/camera/panorama/PanoFacadeImpl$PanoFacadeState;->IDLE:Lcom/android/camera/panorama/PanoFacadeImpl$PanoFacadeState;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 223
    iget-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl$2$3;->this$1:Lcom/android/camera/panorama/PanoFacadeImpl$2;

    iget-object v0, v0, Lcom/android/camera/panorama/PanoFacadeImpl$2;->this$0:Lcom/android/camera/panorama/PanoFacadeImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/panorama/PanoFacadeImpl;->access$900(Lcom/android/camera/panorama/PanoFacadeImpl;Z)V

    .line 225
    :cond_0
    return-void
.end method
