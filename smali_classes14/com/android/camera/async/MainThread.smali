.class public Lcom/android/camera/async/MainThread;
.super Lcom/android/camera/async/HandlerExecutor;
.source "MainThread.java"


# static fields
.field private static final sIsMainThread:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/android/camera/async/MainThread$1;

    invoke-direct {v0}, Lcom/android/camera/async/MainThread$1;-><init>()V

    sput-object v0, Lcom/android/camera/async/MainThread;->sIsMainThread:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/camera/async/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Handler;Lcom/android/camera/async/MainThread$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Handler;
    .param p2, "x1"    # Lcom/android/camera/async/MainThread$1;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/camera/async/MainThread;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/android/camera/async/MainThread;->sIsMainThread:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static checkMainThread()V
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lcom/android/camera/async/MainThread;->sIsMainThread:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "Not main thread."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 52
    return-void
.end method

.method public static create()Lcom/android/camera/async/MainThread;
    .locals 3

    .prologue
    .line 34
    new-instance v0, Lcom/android/camera/async/MainThread;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/android/camera/async/MainThread;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public static createFakeForTesting()Lcom/android/camera/async/MainThread;
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 66
    new-instance v0, Lcom/android/camera/async/MainThread$2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/async/MainThread$2;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public static isMainThread()Z
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/camera/async/MainThread;->sIsMainThread:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
