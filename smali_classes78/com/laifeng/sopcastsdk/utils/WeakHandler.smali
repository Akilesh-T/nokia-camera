.class public Lcom/laifeng/sopcastsdk/utils/WeakHandler;
.super Ljava/lang/Object;
.source "WeakHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;,
        Lcom/laifeng/sopcastsdk/utils/WeakHandler$WeakRunnable;,
        Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;
    }
.end annotation


# instance fields
.field private final mCallback:Landroid/os/Handler$Callback;

.field private final mExec:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;

.field private mLock:Ljava/util/concurrent/locks/Lock;

.field final mRunnables:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 31
    new-instance v0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-direct {v0, v1, v2}, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->mRunnables:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;

    .line 42
    iput-object v2, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->mCallback:Landroid/os/Handler$Callback;

    .line 43
    new-instance v0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;

    invoke-direct {v0}, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;-><init>()V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->mExec:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler$Callback;)V
    .locals 3
    .param p1, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 31
    new-instance v0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->mRunnables:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;

    .line 57
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->mCallback:Landroid/os/Handler$Callback;

    .line 58
    new-instance v0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->mExec:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 31
    new-instance v0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-direct {v0, v1, v2}, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->mRunnables:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;

    .line 67
    iput-object v2, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->mCallback:Landroid/os/Handler$Callback;

    .line 68
    new-instance v0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;

    invoke-direct {v0, p1}, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->mExec:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 31
    new-instance v0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->mRunnables:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;

    .line 79
    iput-object p2, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->mCallback:Landroid/os/Handler$Callback;

    .line 80
    new-instance v0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, p1, v1}, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;-><init>(Landroid/os/Looper;Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->mExec:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;

    .line 81
    return-void
.end method

.method private wrapRunnable(Ljava/lang/Runnable;)Lcom/laifeng/sopcastsdk/utils/WeakHandler$WeakRunnable;
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 356
    if-nez p1, :cond_0

    .line 357
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Runnable can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 359
    :cond_0
    new-instance v0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-direct {v0, v1, p1}, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    .line 360
    .local v0, "hardRef":Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->mRunnables:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;

    invoke-virtual {v1, v0}, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;->insertAfter(Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;)V

    .line 361
    iget-object v1, v0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;->wrapper:Lcom/laifeng/sopcastsdk/utils/WeakHandler$WeakRunnable;

    return-object v1
.end method


# virtual methods
.method public final getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->mExec:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public final hasMessages(I)Z
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 339
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->mExec:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public final hasMessages(ILjava/lang/Object;)Z
    .locals 1
    .param p1, "what"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 347
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->mExec:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2}, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final post(Ljava/lang/Runnable;)Z
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->mExec:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;

    invoke-direct {p0, p1}, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->wrapRunnable(Ljava/lang/Runnable;)Lcom/laifeng/sopcastsdk/utils/WeakHandler$WeakRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public final postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->mExec:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;

    invoke-direct {p0, p1}, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->wrapRunnable(Ljava/lang/Runnable;)Lcom/laifeng/sopcastsdk/utils/WeakHandler$WeakRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public final postAtTime(Ljava/lang/Runnable;J)Z
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "uptimeMillis"    # J

    .prologue
    .line 116
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->mExec:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;

    invoke-direct {p0, p1}, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->wrapRunnable(Ljava/lang/Runnable;)Lcom/laifeng/sopcastsdk/utils/WeakHandler$WeakRunnable;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;->postAtTime(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public final postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "uptimeMillis"    # J

    .prologue
    .line 139
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->mExec:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;

    invoke-direct {p0, p1}, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->wrapRunnable(Ljava/lang/Runnable;)Lcom/laifeng/sopcastsdk/utils/WeakHandler$WeakRunnable;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method public final postDelayed(Ljava/lang/Runnable;J)Z
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 160
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->mExec:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;

    invoke-direct {p0, p1}, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->wrapRunnable(Ljava/lang/Runnable;)Lcom/laifeng/sopcastsdk/utils/WeakHandler$WeakRunnable;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public final removeCallbacks(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 186
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->mRunnables:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;

    invoke-virtual {v1, p1}, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;->remove(Ljava/lang/Runnable;)Lcom/laifeng/sopcastsdk/utils/WeakHandler$WeakRunnable;

    move-result-object v0

    .line 187
    .local v0, "runnable":Lcom/laifeng/sopcastsdk/utils/WeakHandler$WeakRunnable;
    if-eqz v0, :cond_0

    .line 188
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->mExec:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;

    invoke-virtual {v1, v0}, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 190
    :cond_0
    return-void
.end method

.method public final removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "token"    # Ljava/lang/Object;

    .prologue
    .line 198
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->mRunnables:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;

    invoke-virtual {v1, p1}, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;->remove(Ljava/lang/Runnable;)Lcom/laifeng/sopcastsdk/utils/WeakHandler$WeakRunnable;

    move-result-object v0

    .line 199
    .local v0, "runnable":Lcom/laifeng/sopcastsdk/utils/WeakHandler$WeakRunnable;
    if-eqz v0, :cond_0

    .line 200
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->mExec:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;

    invoke-virtual {v1, v0, p2}, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 202
    :cond_0
    return-void
.end method

.method public final removeCallbacksAndMessages(Ljava/lang/Object;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/Object;

    .prologue
    .line 331
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->mExec:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 332
    return-void
.end method

.method public final removeMessages(I)V
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 313
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->mExec:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;->removeMessages(I)V

    .line 314
    return-void
.end method

.method public final removeMessages(ILjava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 322
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->mExec:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2}, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;->removeMessages(ILjava/lang/Object;)V

    .line 323
    return-void
.end method

.method public final sendEmptyMessage(I)Z
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 225
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->mExec:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;->sendEmptyMessage(I)Z

    move-result v0

    return v0
.end method

.method public final sendEmptyMessageAtTime(IJ)Z
    .locals 2
    .param p1, "what"    # I
    .param p2, "uptimeMillis"    # J

    .prologue
    .line 251
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->mExec:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;->sendEmptyMessageAtTime(IJ)Z

    move-result v0

    return v0
.end method

.method public final sendEmptyMessageDelayed(IJ)Z
    .locals 2
    .param p1, "what"    # I
    .param p2, "delayMillis"    # J

    .prologue
    .line 238
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->mExec:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;->sendEmptyMessageDelayed(IJ)Z

    move-result v0

    return v0
.end method

.method public final sendMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->mExec:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public final sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->mExec:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "uptimeMillis"    # J

    .prologue
    .line 289
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->mExec:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public final sendMessageDelayed(Landroid/os/Message;J)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "delayMillis"    # J

    .prologue
    .line 267
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->mExec:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ExecHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method
