.class Lcom/android/camera/async/Listenable$1;
.super Ljava/lang/Object;
.source "Listenable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/async/Listenable;->setCallback(Lcom/android/camera/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/async/Listenable;

.field final synthetic val$callback:Lcom/android/camera/util/Callback;


# direct methods
.method constructor <init>(Lcom/android/camera/async/Listenable;Lcom/android/camera/util/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/async/Listenable;

    .prologue
    .line 76
    .local p0, "this":Lcom/android/camera/async/Listenable$1;, "Lcom/android/camera/async/Listenable$1;"
    iput-object p1, p0, Lcom/android/camera/async/Listenable$1;->this$0:Lcom/android/camera/async/Listenable;

    iput-object p2, p0, Lcom/android/camera/async/Listenable$1;->val$callback:Lcom/android/camera/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 79
    .local p0, "this":Lcom/android/camera/async/Listenable$1;, "Lcom/android/camera/async/Listenable$1;"
    iget-object v0, p0, Lcom/android/camera/async/Listenable$1;->this$0:Lcom/android/camera/async/Listenable;

    invoke-static {v0}, Lcom/android/camera/async/Listenable;->access$000(Lcom/android/camera/async/Listenable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/camera/async/Listenable$1;->val$callback:Lcom/android/camera/util/Callback;

    iget-object v1, p0, Lcom/android/camera/async/Listenable$1;->this$0:Lcom/android/camera/async/Listenable;

    invoke-static {v1}, Lcom/android/camera/async/Listenable;->access$100(Lcom/android/camera/async/Listenable;)Lcom/android/camera/async/ConcurrentState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/util/Callback;->onCallback(Ljava/lang/Object;)V

    goto :goto_0
.end method
