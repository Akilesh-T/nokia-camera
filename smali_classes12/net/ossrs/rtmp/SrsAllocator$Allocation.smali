.class public Lnet/ossrs/rtmp/SrsAllocator$Allocation;
.super Ljava/lang/Object;
.source "SrsAllocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/ossrs/rtmp/SrsAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Allocation"
.end annotation


# instance fields
.field private data:[B

.field private size:I

.field final synthetic this$0:Lnet/ossrs/rtmp/SrsAllocator;


# direct methods
.method public constructor <init>(Lnet/ossrs/rtmp/SrsAllocator;I)V
    .locals 1
    .param p1, "this$0"    # Lnet/ossrs/rtmp/SrsAllocator;
    .param p2, "size"    # I

    .prologue
    .line 12
    iput-object p1, p0, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->this$0:Lnet/ossrs/rtmp/SrsAllocator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-array v0, p2, [B

    iput-object v0, p0, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->data:[B

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->size:I

    .line 15
    return-void
.end method


# virtual methods
.method public appendOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 26
    iget v0, p0, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->size:I

    add-int/2addr v0, p1

    iput v0, p0, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->size:I

    .line 27
    return-void
.end method

.method public array()[B
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->data:[B

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->size:I

    .line 31
    return-void
.end method

.method public put(B)V
    .locals 3
    .param p1, "b"    # B

    .prologue
    .line 34
    iget-object v0, p0, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->data:[B

    iget v1, p0, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->size:I

    aput-byte p1, v0, v1

    .line 35
    return-void
.end method

.method public put(BI)V
    .locals 2
    .param p1, "b"    # B
    .param p2, "pos"    # I

    .prologue
    .line 38
    iget-object v1, p0, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->data:[B

    add-int/lit8 v0, p2, 0x1

    .end local p2    # "pos":I
    .local v0, "pos":I
    aput-byte p1, v1, p2

    .line 39
    iget v1, p0, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->size:I

    if-le v0, v1, :cond_0

    .end local v0    # "pos":I
    :goto_0
    iput v0, p0, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->size:I

    .line 40
    return-void

    .line 39
    .restart local v0    # "pos":I
    :cond_0
    iget v0, p0, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->size:I

    goto :goto_0
.end method

.method public put(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 48
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->put(B)V

    .line 49
    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->put(B)V

    .line 50
    ushr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->put(B)V

    .line 51
    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->put(B)V

    .line 52
    return-void
.end method

.method public put(S)V
    .locals 1
    .param p1, "s"    # S

    .prologue
    .line 43
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->put(B)V

    .line 44
    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->put(B)V

    .line 45
    return-void
.end method

.method public put([B)V
    .locals 4
    .param p1, "bs"    # [B

    .prologue
    .line 55
    const/4 v0, 0x0

    iget-object v1, p0, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->data:[B

    iget v2, p0, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->size:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    iget v0, p0, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->size:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->size:I

    .line 57
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->size:I

    return v0
.end method
