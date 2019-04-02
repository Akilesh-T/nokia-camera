.class public interface abstract Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;
.super Ljava/lang/Object;
.source "ImageProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Plane"
.end annotation


# virtual methods
.method public abstract getBuffer()Ljava/nio/ByteBuffer;
.end method

.method public abstract getPixelStride()I
.end method

.method public abstract getRowStride()I
.end method
