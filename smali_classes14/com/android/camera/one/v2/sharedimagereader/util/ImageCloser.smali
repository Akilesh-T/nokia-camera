.class public Lcom/android/camera/one/v2/sharedimagereader/util/ImageCloser;
.super Ljava/lang/Object;
.source "ImageCloser.java"

# interfaces
.implements Lcom/android/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/async/ConcurrentBufferQueue$UnusedElementProcessor",
        "<",
        "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)V
    .locals 0
    .param p1, "element"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .prologue
    .line 25
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    .line 26
    return-void
.end method

.method public bridge synthetic process(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/sharedimagereader/util/ImageCloser;->process(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)V

    return-void
.end method
