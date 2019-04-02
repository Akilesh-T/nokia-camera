.class Lcom/android/camera/panorama/PanoFacadeImpl$1$1;
.super Ljava/lang/Object;
.source "PanoFacadeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/panorama/PanoFacadeImpl$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/panorama/PanoFacadeImpl$1;

.field final synthetic val$checkState:Lcom/android/camera/panorama/PanoFacadeImpl$PanoFacadeState;


# direct methods
.method constructor <init>(Lcom/android/camera/panorama/PanoFacadeImpl$1;Lcom/android/camera/panorama/PanoFacadeImpl$PanoFacadeState;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/panorama/PanoFacadeImpl$1;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/camera/panorama/PanoFacadeImpl$1$1;->this$1:Lcom/android/camera/panorama/PanoFacadeImpl$1;

    iput-object p2, p0, Lcom/android/camera/panorama/PanoFacadeImpl$1$1;->val$checkState:Lcom/android/camera/panorama/PanoFacadeImpl$PanoFacadeState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl$1$1;->this$1:Lcom/android/camera/panorama/PanoFacadeImpl$1;

    iget-object v0, v0, Lcom/android/camera/panorama/PanoFacadeImpl$1;->this$0:Lcom/android/camera/panorama/PanoFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/panorama/PanoFacadeImpl;->access$400(Lcom/android/camera/panorama/PanoFacadeImpl;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/panorama/PanoFacadeImpl$1$1;->val$checkState:Lcom/android/camera/panorama/PanoFacadeImpl$PanoFacadeState;

    if-eq v0, v1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl$1$1;->val$checkState:Lcom/android/camera/panorama/PanoFacadeImpl$PanoFacadeState;

    sget-object v1, Lcom/android/camera/panorama/PanoFacadeImpl$PanoFacadeState;->RUNNING:Lcom/android/camera/panorama/PanoFacadeImpl$PanoFacadeState;

    if-ne v0, v1, :cond_2

    .line 89
    iget-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl$1$1;->this$1:Lcom/android/camera/panorama/PanoFacadeImpl$1;

    iget-object v0, v0, Lcom/android/camera/panorama/PanoFacadeImpl$1;->this$0:Lcom/android/camera/panorama/PanoFacadeImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/panorama/PanoFacadeImpl;->access$500(Lcom/android/camera/panorama/PanoFacadeImpl;Z)V

    goto :goto_0

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl$1$1;->val$checkState:Lcom/android/camera/panorama/PanoFacadeImpl$PanoFacadeState;

    sget-object v1, Lcom/android/camera/panorama/PanoFacadeImpl$PanoFacadeState;->STOPPING:Lcom/android/camera/panorama/PanoFacadeImpl$PanoFacadeState;

    if-ne v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/camera/panorama/PanoFacadeImpl$1$1;->this$1:Lcom/android/camera/panorama/PanoFacadeImpl$1;

    iget-object v0, v0, Lcom/android/camera/panorama/PanoFacadeImpl$1;->this$0:Lcom/android/camera/panorama/PanoFacadeImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/panorama/PanoFacadeImpl;->access$500(Lcom/android/camera/panorama/PanoFacadeImpl;Z)V

    goto :goto_0
.end method
