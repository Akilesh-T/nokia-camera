.class public final Lcom/android/camera/one/v2/autofocus/AETriggerResult;
.super Ljava/lang/Object;
.source "AETriggerResult.java"

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
.field public static final AE_SCAN_TIMEOUT:J = 0xbb8L

.field public static final AE_SCAN_TIMEOUT_UNIT:Ljava/util/concurrent/TimeUnit;

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
    .locals 4

    .prologue
    .line 59
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/android/camera/one/v2/autofocus/AETriggerResult;->AE_SCAN_TIMEOUT_UNIT:Ljava/util/concurrent/TimeUnit;

    .line 61
    const/4 v0, 0x0

    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    .line 64
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    .line 65
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 61
    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/autofocus/AETriggerResult;->TRIGGER_DONE_STATES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;

    const/4 v1, 0x1

    sget-object v2, Lcom/android/camera/one/v2/autofocus/AETriggerResult;->TRIGGER_DONE_STATES:Ljava/util/Set;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;-><init>(ILjava/util/Set;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/autofocus/AETriggerResult;->mStateMachine:Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;

    .line 74
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/autofocus/AETriggerResult;->mFutureResult:Lcom/google/common/util/concurrent/SettableFuture;

    .line 75
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
    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/one/v2/autofocus/AETriggerResult;->mFutureResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 100
    :catch_0
    move-exception v0

    .line 101
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
    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/one/v2/autofocus/AETriggerResult;->mFutureResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/common/util/concurrent/SettableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "impossible":Ljava/util/concurrent/ExecutionException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public update(Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;)V
    .locals 8
    .param p1, "result"    # Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;

    .prologue
    .line 79
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v3}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 80
    .local v2, "state":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/camera/one/v2/autofocus/AETriggerResult;->mStateMachine:Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;

    .line 81
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->getFrameNumber()J

    move-result-wide v6

    .line 82
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;->getRequest()Lcom/android/camera/one/v2/camera2proxy/CaptureRequestProxy;

    move-result-object v3

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v5}, Lcom/android/camera/one/v2/camera2proxy/CaptureRequestProxy;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 80
    invoke-virtual {v4, v6, v7, v3, v2}, Lcom/android/camera/one/v2/autofocus/TriggerStateMachine;->update(JLjava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    .line 84
    .local v0, "done":Z
    if-eqz v0, :cond_0

    .line 85
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 87
    .local v1, "flashRequired":Z
    iget-object v3, p0, Lcom/android/camera/one/v2/autofocus/AETriggerResult;->mFutureResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 89
    .end local v1    # "flashRequired":Z
    :cond_0
    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 55
    check-cast p1, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;

    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/autofocus/AETriggerResult;->update(Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;)V

    return-void
.end method
