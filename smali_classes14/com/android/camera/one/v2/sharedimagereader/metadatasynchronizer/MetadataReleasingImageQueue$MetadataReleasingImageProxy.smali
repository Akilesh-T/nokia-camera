.class Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataReleasingImageQueue$MetadataReleasingImageProxy;
.super Lcom/android/camera/one/v2/camera2proxy/ForwardingImageProxy;
.source "MetadataReleasingImageQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataReleasingImageQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MetadataReleasingImageProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataReleasingImageQueue;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataReleasingImageQueue;Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)V
    .locals 0
    .param p2, "proxy"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataReleasingImageQueue$MetadataReleasingImageProxy;->this$0:Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataReleasingImageQueue;

    .line 37
    invoke-direct {p0, p2}, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageProxy;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)V

    .line 38
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataReleasingImageQueue$MetadataReleasingImageProxy;->getTimestamp()J

    move-result-wide v0

    .line 44
    .local v0, "timestamp":J
    invoke-super {p0}, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageProxy;->close()V

    .line 47
    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataReleasingImageQueue$MetadataReleasingImageProxy;->this$0:Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataReleasingImageQueue;

    invoke-static {v2}, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataReleasingImageQueue;->access$000(Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataReleasingImageQueue;)Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;->removeMetadataFuture(J)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 48
    return-void
.end method
