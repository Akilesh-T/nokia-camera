.class public interface abstract Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;
.super Ljava/lang/Object;
.source "MetadataPool.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# virtual methods
.method public abstract removeMetadataFuture(J)Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method
