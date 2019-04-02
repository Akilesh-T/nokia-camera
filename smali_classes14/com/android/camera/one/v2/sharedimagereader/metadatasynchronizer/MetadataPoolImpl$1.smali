.class Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl$1;
.super Ljava/lang/Object;
.source "MetadataPoolImpl.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;->removeMetadataFuture(J)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;

.field final synthetic val$timestamp:J


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl$1;->this$0:Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;

    iput-wide p2, p0, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl$1;->val$timestamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 101
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onSuccess(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)V
    .locals 4
    .param p1, "totalCaptureResultProxy"    # Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl$1;->this$0:Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;->access$000(Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl$1;->this$0:Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;->access$100(Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;)Landroid/util/LongSparseArray;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl$1;->val$timestamp:J

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    .line 96
    monitor-exit v1

    .line 97
    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 91
    check-cast p1, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;

    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl$1;->onSuccess(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)V

    return-void
.end method
