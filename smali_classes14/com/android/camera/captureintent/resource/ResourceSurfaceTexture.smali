.class public interface abstract Lcom/android/camera/captureintent/resource/ResourceSurfaceTexture;
.super Ljava/lang/Object;
.source "ResourceSurfaceTexture.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# virtual methods
.method public abstract createPreviewSurface()Landroid/view/Surface;
.end method

.method public abstract getPreviewLayoutSize()Lcom/android/camera/util/Size;
.end method

.method public abstract getPreviewSize()Lcom/android/camera/util/Size;
.end method

.method public abstract setPreviewLayoutSize(Lcom/android/camera/util/Size;)V
.end method

.method public abstract setPreviewSize(Lcom/android/camera/util/Size;)V
.end method

.method public abstract updatePreviewTransform()V
.end method
