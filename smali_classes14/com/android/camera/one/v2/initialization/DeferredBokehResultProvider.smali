.class Lcom/android/camera/one/v2/initialization/DeferredBokehResultProvider;
.super Ljava/lang/Object;
.source "DeferredBokehResultProvider.java"

# interfaces
.implements Lcom/android/camera/one/v2/photo/BokehResultProvider;


# instance fields
.field private final mBokehResultFeature:Lcom/android/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Lcom/android/camera/one/v2/photo/BokehResultProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/async/ConcurrentState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Lcom/android/camera/one/v2/photo/BokehResultProvider;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "bokehResultFeature":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Lcom/android/camera/one/v2/photo/BokehResultProvider;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/camera/one/v2/initialization/DeferredBokehResultProvider;->mBokehResultFeature:Lcom/android/camera/async/ConcurrentState;

    .line 34
    return-void
.end method


# virtual methods
.method public getBokehResult()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/DeferredBokehResultProvider;->mBokehResultFeature:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/DeferredBokehResultProvider;->mBokehResultFeature:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/photo/BokehResultProvider;

    invoke-interface {v0}, Lcom/android/camera/one/v2/photo/BokehResultProvider;->getBokehResult()I

    move-result v0

    .line 41
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public setBokehListener(Lcom/android/camera/one/v2/photo/BokehResultListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/one/v2/photo/BokehResultListener;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/DeferredBokehResultProvider;->mBokehResultFeature:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/DeferredBokehResultProvider;->mBokehResultFeature:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/photo/BokehResultProvider;

    invoke-interface {v0, p1}, Lcom/android/camera/one/v2/photo/BokehResultProvider;->setBokehListener(Lcom/android/camera/one/v2/photo/BokehResultListener;)V

    .line 49
    :cond_0
    return-void
.end method
