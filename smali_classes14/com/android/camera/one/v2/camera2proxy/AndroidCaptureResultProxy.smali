.class public Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureResultProxy;
.super Ljava/lang/Object;
.source "AndroidCaptureResultProxy.java"

# interfaces
.implements Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field final mCaptureResult:Landroid/hardware/camera2/CaptureResult;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .param p1, "captureResult"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureResultProxy;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    .line 37
    return-void
.end method


# virtual methods
.method public get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureResult$Key",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 42
    .local p1, "key":Landroid/hardware/camera2/CaptureResult$Key;, "Landroid/hardware/camera2/CaptureResult$Key<TT;>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureResultProxy;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 44
    :goto_0
    return-object v1

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFrameNumber()J
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureResultProxy;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method public getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureResult$Key",
            "<*>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureResultProxy;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureResult;->getKeys()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRequest()Lcom/android/camera/one/v2/camera2proxy/CaptureRequestProxy;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lcom/android/camera/one/v2/camera2proxy/CaptureRequestProxy;

    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureResultProxy;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/CaptureRequestProxy;-><init>(Landroid/hardware/camera2/CaptureRequest;)V

    return-object v0
.end method

.method public getSequenceId()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureResultProxy;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureResult;->getSequenceId()I

    move-result v0

    return v0
.end method
