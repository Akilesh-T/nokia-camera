.class public final Lcom/android/camera/processing/memory/ByteBufferDirectPool;
.super Lcom/android/camera/processing/memory/SimpleLruResourcePool;
.source "ByteBufferDirectPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/processing/memory/SimpleLruResourcePool",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "lruSize"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/camera/processing/memory/SimpleLruResourcePool;-><init>(I)V

    .line 28
    return-void
.end method


# virtual methods
.method protected bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/processing/memory/ByteBufferDirectPool;->create(Ljava/lang/Integer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected create(Ljava/lang/Integer;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "bytes"    # Ljava/lang/Integer;

    .prologue
    .line 32
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic recycle(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/processing/memory/ByteBufferDirectPool;->recycle(Ljava/lang/Integer;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected recycle(Ljava/lang/Integer;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "integer"    # Ljava/lang/Integer;
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 38
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 39
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 40
    return-object p2
.end method
