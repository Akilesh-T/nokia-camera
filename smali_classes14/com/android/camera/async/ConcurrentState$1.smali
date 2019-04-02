.class Lcom/android/camera/async/ConcurrentState$1;
.super Ljava/lang/Object;
.source "ConcurrentState.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/async/ConcurrentState;->addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/async/ConcurrentState;

.field final synthetic val$pair:Lcom/android/camera/async/ConcurrentState$ExecutorListenerPair;


# direct methods
.method constructor <init>(Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/async/ConcurrentState$ExecutorListenerPair;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/async/ConcurrentState;

    .prologue
    .line 85
    .local p0, "this":Lcom/android/camera/async/ConcurrentState$1;, "Lcom/android/camera/async/ConcurrentState$1;"
    iput-object p1, p0, Lcom/android/camera/async/ConcurrentState$1;->this$0:Lcom/android/camera/async/ConcurrentState;

    iput-object p2, p0, Lcom/android/camera/async/ConcurrentState$1;->val$pair:Lcom/android/camera/async/ConcurrentState$ExecutorListenerPair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 88
    .local p0, "this":Lcom/android/camera/async/ConcurrentState$1;, "Lcom/android/camera/async/ConcurrentState$1;"
    iget-object v0, p0, Lcom/android/camera/async/ConcurrentState$1;->this$0:Lcom/android/camera/async/ConcurrentState;

    invoke-static {v0}, Lcom/android/camera/async/ConcurrentState;->access$000(Lcom/android/camera/async/ConcurrentState;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/async/ConcurrentState$1;->val$pair:Lcom/android/camera/async/ConcurrentState$ExecutorListenerPair;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method
