.class public Lcom/android/camera/async/HandlerFactory;
.super Ljava/lang/Object;
.source "HandlerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/android/camera/async/Lifetime;Ljava/lang/String;)Landroid/os/Handler;
    .locals 3
    .param p1, "lifetime"    # Lcom/android/camera/async/Lifetime;
    .param p2, "threadName"    # Ljava/lang/String;

    .prologue
    .line 32
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 33
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 35
    new-instance v1, Lcom/android/camera/async/HandlerFactory$1;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/async/HandlerFactory$1;-><init>(Lcom/android/camera/async/HandlerFactory;Landroid/os/HandlerThread;)V

    invoke-virtual {p1, v1}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 42
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v1
.end method

.method public create(Lcom/android/camera/async/Lifetime;Ljava/lang/String;I)Landroid/os/Handler;
    .locals 3
    .param p1, "lifetime"    # Lcom/android/camera/async/Lifetime;
    .param p2, "threadName"    # Ljava/lang/String;
    .param p3, "javaThreadPriority"    # I

    .prologue
    .line 52
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 54
    invoke-virtual {v0, p3}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 56
    new-instance v1, Lcom/android/camera/async/HandlerFactory$2;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/async/HandlerFactory$2;-><init>(Lcom/android/camera/async/HandlerFactory;Landroid/os/HandlerThread;)V

    invoke-virtual {p1, v1}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 63
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v1
.end method
