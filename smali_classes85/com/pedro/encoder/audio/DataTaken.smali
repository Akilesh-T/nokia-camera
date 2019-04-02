.class public Lcom/pedro/encoder/audio/DataTaken;
.super Ljava/lang/Object;
.source "DataTaken.java"


# instance fields
.field private pcmBuffer:[B

.field private size:I


# direct methods
.method public constructor <init>([BI)V
    .locals 0
    .param p1, "pcmBuffer"    # [B
    .param p2, "size"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/pedro/encoder/audio/DataTaken;->pcmBuffer:[B

    .line 14
    iput p2, p0, Lcom/pedro/encoder/audio/DataTaken;->size:I

    .line 15
    return-void
.end method


# virtual methods
.method public getPcmBuffer()[B
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/pedro/encoder/audio/DataTaken;->pcmBuffer:[B

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/pedro/encoder/audio/DataTaken;->size:I

    return v0
.end method

.method public setPcmBuffer([B)V
    .locals 0
    .param p1, "pcmBuffer"    # [B

    .prologue
    .line 22
    iput-object p1, p0, Lcom/pedro/encoder/audio/DataTaken;->pcmBuffer:[B

    .line 23
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/pedro/encoder/audio/DataTaken;->size:I

    .line 31
    return-void
.end method
