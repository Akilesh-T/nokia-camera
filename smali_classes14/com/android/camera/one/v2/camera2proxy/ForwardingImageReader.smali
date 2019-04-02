.class public abstract Lcom/android/camera/one/v2/camera2proxy/ForwardingImageReader;
.super Ljava/lang/Object;
.source "ForwardingImageReader.java"

# interfaces
.implements Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;


# instance fields
.field private final mDelegate:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;)V
    .locals 0
    .param p1, "delegate"    # Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageReader;->mDelegate:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    .line 30
    return-void
.end method


# virtual methods
.method public acquireLatestImage()Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageReader;->mDelegate:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;->acquireLatestImage()Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-result-object v0

    return-object v0
.end method

.method public acquireNextImage()Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageReader;->mDelegate:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;->acquireNextImage()Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageReader;->mDelegate:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;->close()V

    .line 80
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageReader;->mDelegate:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;->getHeight()I

    move-result v0

    return v0
.end method

.method public getImageFormat()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageReader;->mDelegate:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;->getImageFormat()I

    move-result v0

    return v0
.end method

.method public getMaxImages()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageReader;->mDelegate:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;->getMaxImages()I

    move-result v0

    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageReader;->mDelegate:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageReader;->mDelegate:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;->getWidth()I

    move-result v0

    return v0
.end method

.method public setOnImageAvailableListener(Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy$OnImageAvailableListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy$OnImageAvailableListener;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "handler"    # Landroid/os/Handler;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageReader;->mDelegate:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;->setOnImageAvailableListener(Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 75
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageReader;->mDelegate:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
