.class Lcom/android/camera/async/ExecutorCallback$1;
.super Ljava/lang/Object;
.source "ExecutorCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/async/ExecutorCallback;->update(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/async/ExecutorCallback;

.field final synthetic val$t:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/camera/async/ExecutorCallback;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/async/ExecutorCallback;

    .prologue
    .line 47
    .local p0, "this":Lcom/android/camera/async/ExecutorCallback$1;, "Lcom/android/camera/async/ExecutorCallback$1;"
    iput-object p1, p0, Lcom/android/camera/async/ExecutorCallback$1;->this$0:Lcom/android/camera/async/ExecutorCallback;

    iput-object p2, p0, Lcom/android/camera/async/ExecutorCallback$1;->val$t:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 50
    .local p0, "this":Lcom/android/camera/async/ExecutorCallback$1;, "Lcom/android/camera/async/ExecutorCallback$1;"
    iget-object v0, p0, Lcom/android/camera/async/ExecutorCallback$1;->this$0:Lcom/android/camera/async/ExecutorCallback;

    invoke-static {v0}, Lcom/android/camera/async/ExecutorCallback;->access$000(Lcom/android/camera/async/ExecutorCallback;)Lcom/android/camera/util/Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/async/ExecutorCallback$1;->val$t:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/android/camera/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 51
    return-void
.end method
