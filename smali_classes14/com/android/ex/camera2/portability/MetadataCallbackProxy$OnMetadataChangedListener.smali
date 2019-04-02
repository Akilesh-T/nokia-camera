.class public interface abstract Lcom/android/ex/camera2/portability/MetadataCallbackProxy$OnMetadataChangedListener;
.super Ljava/lang/Object;
.source "MetadataCallbackProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/MetadataCallbackProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnMetadataChangedListener"
.end annotation


# virtual methods
.method public abstract onBokehStatusChanged(Lcom/android/ex/camera2/portability/BokehStatus;)V
.end method

.method public abstract onCaptureIntentChanged(Lcom/android/ex/camera2/portability/CaptureIntent;)V
.end method

.method public abstract onFlashRequiredChanged(Z)V
.end method

.method public abstract onHDRRequiredChanged(Z)V
.end method

.method public abstract onIsoValueChanged(I)V
.end method
