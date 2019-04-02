.class public Lcom/android/camera/async/HandlerExecutor;
.super Ljava/lang/Object;
.source "HandlerExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/camera/async/HandlerExecutor;->mHandler:Landroid/os/Handler;

    .line 34
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/async/HandlerExecutor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    return-void
.end method

.method public execute(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/async/HandlerExecutor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 43
    return-void
.end method
