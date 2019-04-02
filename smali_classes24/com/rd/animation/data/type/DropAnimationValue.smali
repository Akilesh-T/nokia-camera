.class public Lcom/rd/animation/data/type/DropAnimationValue;
.super Ljava/lang/Object;
.source "DropAnimationValue.java"

# interfaces
.implements Lcom/rd/animation/data/Value;


# instance fields
.field private height:I

.field private radius:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/rd/animation/data/type/DropAnimationValue;->height:I

    return v0
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/rd/animation/data/type/DropAnimationValue;->radius:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/rd/animation/data/type/DropAnimationValue;->width:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/rd/animation/data/type/DropAnimationValue;->height:I

    .line 25
    return-void
.end method

.method public setRadius(I)V
    .locals 0
    .param p1, "radius"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/rd/animation/data/type/DropAnimationValue;->radius:I

    .line 33
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 16
    iput p1, p0, Lcom/rd/animation/data/type/DropAnimationValue;->width:I

    .line 17
    return-void
.end method
