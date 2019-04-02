.class public interface abstract Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;
.super Ljava/lang/Object;
.source "CaptureResultProxy.java"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# virtual methods
.method public abstract get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureResult$Key",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getFrameNumber()J
.end method

.method public abstract getKeys()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureResult$Key",
            "<*>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getRequest()Lcom/android/camera/one/v2/camera2proxy/CaptureRequestProxy;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getSequenceId()I
.end method
