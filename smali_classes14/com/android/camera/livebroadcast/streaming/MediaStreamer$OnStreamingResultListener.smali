.class public interface abstract Lcom/android/camera/livebroadcast/streaming/MediaStreamer$OnStreamingResultListener;
.super Ljava/lang/Object;
.source "MediaStreamer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/livebroadcast/streaming/MediaStreamer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnStreamingResultListener"
.end annotation


# virtual methods
.method public abstract onConnectionFailed()V
.end method

.method public abstract onConnectionWeak()V
.end method

.method public abstract onStreamingStarted()V
.end method

.method public abstract onStreamingStoped()V
.end method
