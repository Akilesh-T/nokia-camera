.class Lcom/android/camera/one/v2/sharedimagereader/ImageStreamImpl$1;
.super Ljava/lang/Object;
.source "ImageStreamImpl.java"

# interfaces
.implements Lcom/android/camera/async/BufferQueueController;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/sharedimagereader/ImageStreamImpl;-><init>(Lcom/android/camera/async/BufferQueue;Lcom/android/camera/async/BufferQueueController;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributor;Landroid/view/Surface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/async/BufferQueueController",
        "<",
        "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/sharedimagereader/ImageStreamImpl;

.field final synthetic val$imageStreamController:Lcom/android/camera/async/BufferQueueController;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/sharedimagereader/ImageStreamImpl;Lcom/android/camera/async/BufferQueueController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/sharedimagereader/ImageStreamImpl;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/camera/one/v2/sharedimagereader/ImageStreamImpl$1;->this$0:Lcom/android/camera/one/v2/sharedimagereader/ImageStreamImpl;

    iput-object p2, p0, Lcom/android/camera/one/v2/sharedimagereader/ImageStreamImpl$1;->val$imageStreamController:Lcom/android/camera/async/BufferQueueController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ImageStreamImpl$1;->val$imageStreamController:Lcom/android/camera/async/BufferQueueController;

    invoke-interface {v0}, Lcom/android/camera/async/BufferQueueController;->close()V

    .line 67
    return-void
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ImageStreamImpl$1;->val$imageStreamController:Lcom/android/camera/async/BufferQueueController;

    invoke-interface {v0}, Lcom/android/camera/async/BufferQueueController;->isClosed()Z

    move-result v0

    return v0
.end method

.method public update(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)V
    .locals 4
    .param p1, "element"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 57
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ImageStreamImpl$1;->val$imageStreamController:Lcom/android/camera/async/BufferQueueController;

    invoke-interface {v1, p1}, Lcom/android/camera/async/BufferQueueController;->update(Ljava/lang/Object;)V

    .line 58
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ImageStreamImpl$1;->this$0:Lcom/android/camera/one/v2/sharedimagereader/ImageStreamImpl;

    invoke-static {v1}, Lcom/android/camera/one/v2/sharedimagereader/ImageStreamImpl;->access$000(Lcom/android/camera/one/v2/sharedimagereader/ImageStreamImpl;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 59
    .local v0, "runnable":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 60
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 62
    :cond_0
    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 54
    check-cast p1, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/sharedimagereader/ImageStreamImpl$1;->update(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)V

    return-void
.end method
