.class Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;
.super Landroid/os/Handler;
.source "WeakHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laifeng/sopcastsdk/utils/WeakHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExecHandler"
.end annotation


# instance fields
.field private final mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler$Callback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 367
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 368
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;->mCallback:Ljava/lang/ref/WeakReference;

    .line 369
    return-void
.end method

.method constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 376
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 377
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;->mCallback:Ljava/lang/ref/WeakReference;

    .line 378
    return-void
.end method

.method constructor <init>(Landroid/os/Looper;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler$Callback;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 381
    .local p2, "callback":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/os/Handler$Callback;>;"
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 382
    iput-object p2, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;->mCallback:Ljava/lang/ref/WeakReference;

    .line 383
    return-void
.end method

.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler$Callback;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 371
    .local p1, "callback":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/os/Handler$Callback;>;"
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 372
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;->mCallback:Ljava/lang/ref/WeakReference;

    .line 373
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 387
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;->mCallback:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler$Callback;

    .line 391
    .local v0, "callback":Landroid/os/Handler$Callback;
    if-eqz v0, :cond_0

    .line 394
    invoke-interface {v0, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
