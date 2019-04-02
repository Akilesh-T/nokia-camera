.class public interface abstract Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;
.super Ljava/lang/Object;
.source "ImageEngineBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thirdparty/arcsoft/engine/ImageEngineBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnProcessStateListener"
.end annotation


# virtual methods
.method public abstract onPostImage(III[B)V
.end method

.method public abstract onPostProcessDone([B)V
.end method

.method public abstract onProcessAbort()V
.end method

.method public abstract onProcessDone(III[B)V
.end method

.method public abstract onProcessDone(Lcom/android/camera/mpo/Bokeh_Info;)V
.end method

.method public abstract onProcessError(I)V
.end method
