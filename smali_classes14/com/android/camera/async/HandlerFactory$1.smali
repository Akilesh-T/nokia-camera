.class Lcom/android/camera/async/HandlerFactory$1;
.super Ljava/lang/Object;
.source "HandlerFactory.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/async/HandlerFactory;->create(Lcom/android/camera/async/Lifetime;Ljava/lang/String;)Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/async/HandlerFactory;

.field final synthetic val$thread:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>(Lcom/android/camera/async/HandlerFactory;Landroid/os/HandlerThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/async/HandlerFactory;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/camera/async/HandlerFactory$1;->this$0:Lcom/android/camera/async/HandlerFactory;

    iput-object p2, p0, Lcom/android/camera/async/HandlerFactory$1;->val$thread:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/async/HandlerFactory$1;->val$thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 39
    return-void
.end method
