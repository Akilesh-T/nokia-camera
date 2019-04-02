.class Lcom/android/camera/one/v2/CloseWhenDoneImageReader$ImageDecorator;
.super Lcom/android/camera/one/v2/camera2proxy/ForwardingImageProxy;
.source "CloseWhenDoneImageReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/CloseWhenDoneImageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageDecorator"
.end annotation


# instance fields
.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/android/camera/one/v2/CloseWhenDoneImageReader;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/CloseWhenDoneImageReader;Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)V
    .locals 2
    .param p2, "proxy"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/camera/one/v2/CloseWhenDoneImageReader$ImageDecorator;->this$0:Lcom/android/camera/one/v2/CloseWhenDoneImageReader;

    .line 43
    invoke-direct {p0, p2}, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageProxy;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)V

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/one/v2/CloseWhenDoneImageReader$ImageDecorator;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/one/v2/CloseWhenDoneImageReader$ImageDecorator;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    invoke-super {p0}, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageProxy;->close()V

    .line 51
    iget-object v0, p0, Lcom/android/camera/one/v2/CloseWhenDoneImageReader$ImageDecorator;->this$0:Lcom/android/camera/one/v2/CloseWhenDoneImageReader;

    invoke-static {v0}, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;->access$000(Lcom/android/camera/one/v2/CloseWhenDoneImageReader;)V

    .line 53
    :cond_0
    return-void
.end method
