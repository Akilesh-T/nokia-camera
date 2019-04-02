.class public Lcom/android/camera/one/v2/common/MetadataResponseListener;
.super Lcom/android/camera/one/v2/core/ResponseListener;
.source "MetadataResponseListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/camera/one/v2/core/ResponseListener;"
    }
.end annotation


# instance fields
.field private final mKey:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final mUpdatable:Lcom/android/camera/async/Updatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Updatable",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CaptureResult$Key;Lcom/android/camera/async/Updatable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureResult$Key",
            "<TV;>;",
            "Lcom/android/camera/async/Updatable",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/android/camera/one/v2/common/MetadataResponseListener;, "Lcom/android/camera/one/v2/common/MetadataResponseListener<TV;>;"
    .local p1, "key":Landroid/hardware/camera2/CaptureResult$Key;, "Landroid/hardware/camera2/CaptureResult$Key<TV;>;"
    .local p2, "updatable":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<TV;>;"
    invoke-direct {p0}, Lcom/android/camera/one/v2/core/ResponseListener;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/camera/one/v2/common/MetadataResponseListener;->mKey:Landroid/hardware/camera2/CaptureResult$Key;

    .line 38
    iput-object p2, p0, Lcom/android/camera/one/v2/common/MetadataResponseListener;->mUpdatable:Lcom/android/camera/async/Updatable;

    .line 39
    return-void
.end method


# virtual methods
.method public onCompleted(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2
    .param p1, "totalCaptureResult"    # Landroid/hardware/camera2/TotalCaptureResult;

    .prologue
    .line 51
    .local p0, "this":Lcom/android/camera/one/v2/common/MetadataResponseListener;, "Lcom/android/camera/one/v2/common/MetadataResponseListener<TV;>;"
    iget-object v1, p0, Lcom/android/camera/one/v2/common/MetadataResponseListener;->mKey:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    .line 52
    .local v0, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_0

    .line 53
    iget-object v1, p0, Lcom/android/camera/one/v2/common/MetadataResponseListener;->mUpdatable:Lcom/android/camera/async/Updatable;

    invoke-interface {v1, v0}, Lcom/android/camera/async/Updatable;->update(Ljava/lang/Object;)V

    .line 55
    :cond_0
    return-void
.end method

.method public onProgressed(Landroid/hardware/camera2/CaptureResult;)V
    .locals 2
    .param p1, "partialResult"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 43
    .local p0, "this":Lcom/android/camera/one/v2/common/MetadataResponseListener;, "Lcom/android/camera/one/v2/common/MetadataResponseListener<TV;>;"
    iget-object v1, p0, Lcom/android/camera/one/v2/common/MetadataResponseListener;->mKey:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    .line 44
    .local v0, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_0

    .line 45
    iget-object v1, p0, Lcom/android/camera/one/v2/common/MetadataResponseListener;->mUpdatable:Lcom/android/camera/async/Updatable;

    invoke-interface {v1, v0}, Lcom/android/camera/async/Updatable;->update(Ljava/lang/Object;)V

    .line 47
    :cond_0
    return-void
.end method
