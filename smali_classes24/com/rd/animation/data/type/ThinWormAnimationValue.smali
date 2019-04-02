.class public Lcom/rd/animation/data/type/ThinWormAnimationValue;
.super Lcom/rd/animation/data/type/WormAnimationValue;
.source "ThinWormAnimationValue.java"

# interfaces
.implements Lcom/rd/animation/data/Value;


# instance fields
.field private height:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/rd/animation/data/type/WormAnimationValue;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/rd/animation/data/type/ThinWormAnimationValue;->height:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 14
    iput p1, p0, Lcom/rd/animation/data/type/ThinWormAnimationValue;->height:I

    .line 15
    return-void
.end method
