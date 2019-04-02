.class public Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/RefCountedImageProxy;
.super Lcom/android/camera/one/v2/camera2proxy/ForwardingImageProxy;
.source "RefCountedImageProxy.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final mRefCount:Lcom/android/camera/async/RefCountBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;I)V
    .locals 1
    .param p1, "image"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .param p2, "refCount"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageProxy;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)V

    .line 39
    new-instance v0, Lcom/android/camera/async/RefCountBase;

    invoke-direct {v0, p1, p2}, Lcom/android/camera/async/RefCountBase;-><init>(Lcom/android/camera/async/SafeCloseable;I)V

    iput-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/RefCountedImageProxy;->mRefCount:Lcom/android/camera/async/RefCountBase;

    .line 40
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/RefCountedImageProxy;->mRefCount:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->close()V

    .line 45
    return-void
.end method
