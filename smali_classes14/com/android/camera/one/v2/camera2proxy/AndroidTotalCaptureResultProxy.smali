.class public final Lcom/android/camera/one/v2/camera2proxy/AndroidTotalCaptureResultProxy;
.super Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureResultProxy;
.source "AndroidTotalCaptureResultProxy.java"

# interfaces
.implements Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field final mTotalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0
    .param p1, "totalCaptureResult"    # Landroid/hardware/camera2/TotalCaptureResult;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureResultProxy;-><init>(Landroid/hardware/camera2/CaptureResult;)V

    .line 56
    iput-object p1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidTotalCaptureResultProxy;->mTotalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    .line 57
    return-void
.end method


# virtual methods
.method public getOriginalResult()Landroid/hardware/camera2/TotalCaptureResult;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidTotalCaptureResultProxy;->mTotalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    return-object v0
.end method

.method public getPartialResults()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 61
    iget-object v3, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidTotalCaptureResultProxy;->mTotalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v3}, Landroid/hardware/camera2/TotalCaptureResult;->getPartialResults()Ljava/util/List;

    move-result-object v0

    .line 62
    .local v0, "partialResults":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    .local v1, "proxies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureResult;

    .line 64
    .local v2, "result":Landroid/hardware/camera2/CaptureResult;
    new-instance v4, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureResultProxy;

    invoke-direct {v4, v2}, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureResultProxy;-><init>(Landroid/hardware/camera2/CaptureResult;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    .end local v2    # "result":Landroid/hardware/camera2/CaptureResult;
    :cond_0
    return-object v1
.end method
