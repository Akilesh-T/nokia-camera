.class public interface abstract Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;
.super Ljava/lang/Object;
.source "TotalCaptureResultProxy.java"

# interfaces
.implements Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# virtual methods
.method public abstract getOriginalResult()Landroid/hardware/camera2/TotalCaptureResult;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getPartialResults()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method
