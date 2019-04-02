.class public Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;
.super Ljava/lang/Object;
.source "CaptureRequestBuilderProxy.java"


# instance fields
.field private final mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 31
    return-void
.end method


# virtual methods
.method public addTarget(Landroid/view/Surface;)V
    .locals 1
    .param p1, "outputTarget"    # Landroid/view/Surface;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 38
    return-void
.end method

.method public build()Landroid/hardware/camera2/CaptureRequest;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    return-object v0
.end method

.method public get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object v0
.end method

.method public removeTarget(Landroid/view/Surface;)V
    .locals 1
    .param p1, "outputTarget"    # Landroid/view/Surface;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 59
    return-void
.end method

.method public set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 73
    return-void
.end method
