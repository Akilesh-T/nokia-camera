.class Lcom/android/camera/async/ResettingDelayedExecutor$1;
.super Ljava/lang/Object;
.source "ResettingDelayedExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/async/ResettingDelayedExecutor;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/async/ResettingDelayedExecutor;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/camera/async/ResettingDelayedExecutor;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/async/ResettingDelayedExecutor;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/camera/async/ResettingDelayedExecutor$1;->this$0:Lcom/android/camera/async/ResettingDelayedExecutor;

    iput-object p2, p0, Lcom/android/camera/async/ResettingDelayedExecutor$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    iget-object v0, p0, Lcom/android/camera/async/ResettingDelayedExecutor$1;->this$0:Lcom/android/camera/async/ResettingDelayedExecutor;

    invoke-static {v0}, Lcom/android/camera/async/ResettingDelayedExecutor;->access$000(Lcom/android/camera/async/ResettingDelayedExecutor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/camera/async/ResettingDelayedExecutor$1;->this$0:Lcom/android/camera/async/ResettingDelayedExecutor;

    invoke-static {v0, v1}, Lcom/android/camera/async/ResettingDelayedExecutor;->access$102(Lcom/android/camera/async/ResettingDelayedExecutor;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 81
    iget-object v0, p0, Lcom/android/camera/async/ResettingDelayedExecutor$1;->this$0:Lcom/android/camera/async/ResettingDelayedExecutor;

    invoke-static {v0, v1}, Lcom/android/camera/async/ResettingDelayedExecutor;->access$202(Lcom/android/camera/async/ResettingDelayedExecutor;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 82
    iget-object v0, p0, Lcom/android/camera/async/ResettingDelayedExecutor$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
