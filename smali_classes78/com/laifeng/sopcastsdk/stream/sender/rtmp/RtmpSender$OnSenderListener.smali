.class public interface abstract Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender$OnSenderListener;
.super Ljava/lang/Object;
.source "RtmpSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laifeng/sopcastsdk/stream/sender/rtmp/RtmpSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSenderListener"
.end annotation


# virtual methods
.method public abstract onConnected()V
.end method

.method public abstract onConnecting()V
.end method

.method public abstract onDisConnected()V
.end method

.method public abstract onNetBad()V
.end method

.method public abstract onNetGood()V
.end method

.method public abstract onPublishFail()V
.end method
