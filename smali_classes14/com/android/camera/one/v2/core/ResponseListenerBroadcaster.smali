.class Lcom/android/camera/one/v2/core/ResponseListenerBroadcaster;
.super Lcom/android/camera/one/v2/core/ResponseListener;
.source "ResponseListenerBroadcaster.java"


# instance fields
.field private final mListeners:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/camera/one/v2/core/ResponseListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/camera/one/v2/core/ResponseListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "listeners":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/camera/one/v2/core/ResponseListener;>;"
    invoke-direct {p0}, Lcom/android/camera/one/v2/core/ResponseListener;-><init>()V

    .line 39
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/core/ResponseListenerBroadcaster;->mListeners:Lcom/google/common/collect/ImmutableList;

    .line 40
    return-void
.end method

.method public constructor <init>([Lcom/android/camera/one/v2/core/ResponseListener;)V
    .locals 1
    .param p1, "listeners"    # [Lcom/android/camera/one/v2/core/ResponseListener;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/camera/one/v2/core/ResponseListener;-><init>()V

    .line 35
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/core/ResponseListenerBroadcaster;->mListeners:Lcom/google/common/collect/ImmutableList;

    .line 36
    return-void
.end method


# virtual methods
.method public onCompleted(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 3
    .param p1, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .prologue
    .line 58
    iget-object v1, p0, Lcom/android/camera/one/v2/core/ResponseListenerBroadcaster;->mListeners:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/core/ResponseListener;

    .line 59
    .local v0, "listener":Lcom/android/camera/one/v2/core/ResponseListener;
    invoke-virtual {v0, p1}, Lcom/android/camera/one/v2/core/ResponseListener;->onCompleted(Landroid/hardware/camera2/TotalCaptureResult;)V

    goto :goto_0

    .line 61
    .end local v0    # "listener":Lcom/android/camera/one/v2/core/ResponseListener;
    :cond_0
    return-void
.end method

.method public onFailed(Landroid/hardware/camera2/CaptureFailure;)V
    .locals 3
    .param p1, "failure"    # Landroid/hardware/camera2/CaptureFailure;

    .prologue
    .line 65
    iget-object v1, p0, Lcom/android/camera/one/v2/core/ResponseListenerBroadcaster;->mListeners:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/core/ResponseListener;

    .line 66
    .local v0, "listener":Lcom/android/camera/one/v2/core/ResponseListener;
    invoke-virtual {v0, p1}, Lcom/android/camera/one/v2/core/ResponseListener;->onFailed(Landroid/hardware/camera2/CaptureFailure;)V

    goto :goto_0

    .line 68
    .end local v0    # "listener":Lcom/android/camera/one/v2/core/ResponseListener;
    :cond_0
    return-void
.end method

.method public onProgressed(Landroid/hardware/camera2/CaptureResult;)V
    .locals 3
    .param p1, "partialResult"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 51
    iget-object v1, p0, Lcom/android/camera/one/v2/core/ResponseListenerBroadcaster;->mListeners:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/core/ResponseListener;

    .line 52
    .local v0, "listener":Lcom/android/camera/one/v2/core/ResponseListener;
    invoke-virtual {v0, p1}, Lcom/android/camera/one/v2/core/ResponseListener;->onProgressed(Landroid/hardware/camera2/CaptureResult;)V

    goto :goto_0

    .line 54
    .end local v0    # "listener":Lcom/android/camera/one/v2/core/ResponseListener;
    :cond_0
    return-void
.end method

.method public onStarted(J)V
    .locals 3
    .param p1, "timestamp"    # J

    .prologue
    .line 44
    iget-object v1, p0, Lcom/android/camera/one/v2/core/ResponseListenerBroadcaster;->mListeners:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/core/ResponseListener;

    .line 45
    .local v0, "listener":Lcom/android/camera/one/v2/core/ResponseListener;
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/one/v2/core/ResponseListener;->onStarted(J)V

    goto :goto_0

    .line 47
    .end local v0    # "listener":Lcom/android/camera/one/v2/core/ResponseListener;
    :cond_0
    return-void
.end method
