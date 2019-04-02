.class Lcom/laifeng/sopcastsdk/utils/WeakHandler$WeakRunnable;
.super Ljava/lang/Object;
.source "WeakHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laifeng/sopcastsdk/utils/WeakHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WeakRunnable"
.end annotation


# instance fields
.field private final mDelegate:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 402
    .local p1, "delegate":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Runnable;>;"
    .local p2, "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$WeakRunnable;->mDelegate:Ljava/lang/ref/WeakReference;

    .line 404
    iput-object p2, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$WeakRunnable;->mReference:Ljava/lang/ref/WeakReference;

    .line 405
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 409
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$WeakRunnable;->mDelegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 410
    .local v0, "delegate":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$WeakRunnable;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;

    .line 411
    .local v1, "reference":Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;
    if-eqz v1, :cond_0

    .line 412
    invoke-virtual {v1}, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;->remove()Lcom/laifeng/sopcastsdk/utils/WeakHandler$WeakRunnable;

    .line 414
    :cond_0
    if-eqz v0, :cond_1

    .line 415
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 417
    :cond_1
    return-void
.end method
