.class public interface abstract Lcom/laifeng/sopcastsdk/stream/packer/Packer;
.super Ljava/lang/Object;
.source "Packer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laifeng/sopcastsdk/stream/packer/Packer$OnPacketListener;
    }
.end annotation


# virtual methods
.method public abstract onAudioData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
.end method

.method public abstract onVideoData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
.end method

.method public abstract setPacketListener(Lcom/laifeng/sopcastsdk/stream/packer/Packer$OnPacketListener;)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
