.class public abstract Lcom/pedro/encoder/utils/gl/StreamObjectBase;
.super Ljava/lang/Object;
.source "StreamObjectBase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getHeight()I
.end method

.method public abstract getNumFrames()I
.end method

.method public abstract getWidth()I
.end method

.method public abstract recycle()V
.end method

.method public abstract resize(II)V
.end method

.method public abstract updateFrame()I
.end method
