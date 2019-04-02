.class public interface abstract Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/ISendQueue;
.super Ljava/lang/Object;
.source "ISendQueue.java"


# virtual methods
.method public abstract putFrame(Lcom/laifeng/sopcastsdk/entity/Frame;)V
.end method

.method public abstract setBufferSize(I)V
.end method

.method public abstract setSendQueueListener(Lcom/laifeng/sopcastsdk/stream/sender/sendqueue/SendQueueListener;)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method

.method public abstract takeFrame()Lcom/laifeng/sopcastsdk/entity/Frame;
.end method
