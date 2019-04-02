.class Lcom/android/camera/video/VideoFacadeImpl$1$5;
.super Ljava/lang/Object;
.source "VideoFacadeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/video/VideoFacadeImpl$1;->onBurstCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/video/VideoFacadeImpl$1;


# direct methods
.method constructor <init>(Lcom/android/camera/video/VideoFacadeImpl$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/video/VideoFacadeImpl$1;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/android/camera/video/VideoFacadeImpl$1$5;->this$1:Lcom/android/camera/video/VideoFacadeImpl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1$5;->this$1:Lcom/android/camera/video/VideoFacadeImpl$1;

    iget-object v0, v0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/VideoFacadeImpl;->access$1500(Lcom/android/camera/video/VideoFacadeImpl;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    sget-object v1, Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;->STOPPING:Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;

    sget-object v2, Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;->IDLE:Lcom/android/camera/video/VideoFacadeImpl$VideoFacadeState;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 446
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$1$5;->this$1:Lcom/android/camera/video/VideoFacadeImpl$1;

    iget-object v0, v0, Lcom/android/camera/video/VideoFacadeImpl$1;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/VideoFacadeImpl;->access$1600(Lcom/android/camera/video/VideoFacadeImpl;)V

    .line 447
    return-void
.end method
