.class interface abstract Lcom/android/camera/one/v2/core/RequestBuilder$RequestImpl$Allocation;
.super Ljava/lang/Object;
.source "RequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/core/RequestBuilder$RequestImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Allocation"
.end annotation


# virtual methods
.method public abstract abort()V
.end method

.method public abstract allocate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/android/camera/one/v2/core/ResourceAcquisitionFailedException;
        }
    .end annotation
.end method
