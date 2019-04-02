.class Lcom/android/camera/one/v2/initialization/DeferredManualAutoFocus;
.super Ljava/lang/Object;
.source "DeferredManualAutoFocus.java"

# interfaces
.implements Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;


# instance fields
.field private final mManualAutoFocusFuture:Lcom/android/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;",
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
            "Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "manualAutoFocusFuture":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/camera/one/v2/initialization/DeferredManualAutoFocus;->mManualAutoFocusFuture:Lcom/android/camera/async/ConcurrentState;

    .line 36
    return-void
.end method


# virtual methods
.method public getFocusAreaPoint()Landroid/graphics/PointF;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 79
    iget-object v1, p0, Lcom/android/camera/one/v2/initialization/DeferredManualAutoFocus;->mManualAutoFocusFuture:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v1}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/one/v2/initialization/DeferredManualAutoFocus;->mManualAutoFocusFuture:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v1}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    .line 82
    .local v0, "af":Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    invoke-interface {v0}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->getFocusAreaPoint()Landroid/graphics/PointF;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 87
    .end local v0    # "af":Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    :goto_0
    return-object v1

    .line 83
    :catch_0
    move-exception v1

    .line 87
    :cond_0
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method

.method public onShutter()Z
    .locals 2

    .prologue
    .line 53
    iget-object v1, p0, Lcom/android/camera/one/v2/initialization/DeferredManualAutoFocus;->mManualAutoFocusFuture:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v1}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/one/v2/initialization/DeferredManualAutoFocus;->mManualAutoFocusFuture:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v1}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    .line 56
    .local v0, "af":Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    invoke-interface {v0}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->onShutter()Z
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 61
    .end local v0    # "af":Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    :goto_0
    return v1

    .line 57
    :catch_0
    move-exception v1

    .line 61
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTouchExposureChange(F)V
    .locals 3
    .param p1, "offsetRatio"    # F

    .prologue
    .line 104
    iget-object v2, p0, Lcom/android/camera/one/v2/initialization/DeferredManualAutoFocus;->mManualAutoFocusFuture:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v2}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 106
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/one/v2/initialization/DeferredManualAutoFocus;->mManualAutoFocusFuture:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v2}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    .line 107
    .local v0, "af":Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    invoke-interface {v0, p1}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->onTouchExposureChange(F)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v0    # "af":Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    :cond_0
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/util/concurrent/CancellationException;
    goto :goto_0
.end method

.method public onTouchExposureEnd()V
    .locals 3

    .prologue
    .line 116
    iget-object v2, p0, Lcom/android/camera/one/v2/initialization/DeferredManualAutoFocus;->mManualAutoFocusFuture:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v2}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 118
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/one/v2/initialization/DeferredManualAutoFocus;->mManualAutoFocusFuture:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v2}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    .line 119
    .local v0, "af":Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    invoke-interface {v0}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->onTouchExposureEnd()V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v0    # "af":Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    :cond_0
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Ljava/util/concurrent/CancellationException;
    goto :goto_0
.end method

.method public onTouchExposureStart()V
    .locals 3

    .prologue
    .line 92
    iget-object v2, p0, Lcom/android/camera/one/v2/initialization/DeferredManualAutoFocus;->mManualAutoFocusFuture:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v2}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 94
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/one/v2/initialization/DeferredManualAutoFocus;->mManualAutoFocusFuture:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v2}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    .line 95
    .local v0, "af":Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    invoke-interface {v0}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->onTouchExposureStart()V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v0    # "af":Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    :cond_0
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/util/concurrent/CancellationException;
    goto :goto_0
.end method

.method public resetFocusAndMeterArea()V
    .locals 3

    .prologue
    .line 66
    iget-object v2, p0, Lcom/android/camera/one/v2/initialization/DeferredManualAutoFocus;->mManualAutoFocusFuture:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v2}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 68
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/one/v2/initialization/DeferredManualAutoFocus;->mManualAutoFocusFuture:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v2}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    .line 69
    .local v0, "af":Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    invoke-interface {v0}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->resetFocusAndMeterArea()V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v0    # "af":Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    :cond_0
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/util/concurrent/CancellationException;
    goto :goto_0
.end method

.method public triggerFocusAndMeterAtPoint(FF)V
    .locals 3
    .param p1, "nx"    # F
    .param p2, "ny"    # F

    .prologue
    .line 40
    iget-object v2, p0, Lcom/android/camera/one/v2/initialization/DeferredManualAutoFocus;->mManualAutoFocusFuture:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v2}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 42
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/one/v2/initialization/DeferredManualAutoFocus;->mManualAutoFocusFuture:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v2}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    .line 43
    .local v0, "af":Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    invoke-interface {v0, p1, p2}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->triggerFocusAndMeterAtPoint(FF)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v0    # "af":Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    :cond_0
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v1

    .line 46
    .local v1, "e":Ljava/util/concurrent/CancellationException;
    goto :goto_0
.end method
