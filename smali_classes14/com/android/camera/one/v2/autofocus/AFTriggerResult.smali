.class public final Lcom/android/camera/one/v2/autofocus/AFTriggerResult;
.super Ljava/lang/Object;
.source "AFTriggerResult.java"

# interfaces
.implements Lcom/android/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/async/Updatable",
        "<",
        "Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field public static final AF_SCAN_TIMEOUT:J = 0x1388L

.field public static final AF_SCAN_TIMEOUT_UNIT:Ljava/util/concurrent/TimeUnit;

.field private static final TRIGGER_DONE_STATES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFutureResult:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateMachine:Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;->AF_SCAN_TIMEOUT_UNIT:Ljava/util/concurrent/TimeUnit;

    .line 59
    const/4 v0, 0x0

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    .line 62
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 59
    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;->TRIGGER_DONE_STATES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;->mFutureResult:Lcom/google/common/util/concurrent/SettableFuture;

    .line 69
    new-instance v0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;

    const/4 v1, 0x1

    sget-object v2, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;->TRIGGER_DONE_STATES:Ljava/util/Set;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;-><init>(ILjava/util/Set;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;->mStateMachine:Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;

    .line 72
    return-void
.end method


# virtual methods
.method public get()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;->mFutureResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "impossible":Ljava/util/concurrent/ExecutionException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Z
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;->mFutureResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/common/util/concurrent/SettableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "impossible":Ljava/util/concurrent/ExecutionException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public update(Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;)V
    .locals 8
    .param p1, "result"    # Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;

    .prologue
    .line 76
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v3}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 77
    .local v0, "afState":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;->mStateMachine:Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;

    .line 78
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->getFrameNumber()J

    move-result-wide v6

    .line 79
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->getRequest()Lcom/android/camera/one/v2/camera2proxy/CaptureRequestProxy;

    move-result-object v3

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v5}, Lcom/android/camera/one/v2/camera2proxy/CaptureRequestProxy;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 77
    invoke-virtual {v4, v6, v7, v3, v0}, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;->update(JLjava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v1

    .line 81
    .local v1, "done":Z
    if-eqz v1, :cond_1

    .line 82
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x4

    .line 83
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v2, 0x1

    .line 84
    .local v2, "inFocus":Z
    :goto_0
    iget-object v3, p0, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;->mFutureResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 86
    .end local v2    # "inFocus":Z
    :cond_1
    return-void

    .line 83
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 53
    check-cast p1, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;

    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/autofocus/AFTriggerResult;->update(Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;)V

    return-void
.end method
