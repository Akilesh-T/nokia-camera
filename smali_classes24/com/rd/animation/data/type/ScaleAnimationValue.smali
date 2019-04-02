.class public Lcom/rd/animation/data/type/ScaleAnimationValue;
.super Lcom/rd/animation/data/type/ColorAnimationValue;
.source "ScaleAnimationValue.java"

# interfaces
.implements Lcom/rd/animation/data/Value;


# instance fields
.field private radius:I

.field private radiusReverse:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/rd/animation/data/type/ColorAnimationValue;-><init>()V

    return-void
.end method


# virtual methods
.method public getRadius()I
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lcom/rd/animation/data/type/ScaleAnimationValue;->radius:I

    return v0
.end method

.method public getRadiusReverse()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/rd/animation/data/type/ScaleAnimationValue;->radiusReverse:I

    return v0
.end method

.method public setRadius(I)V
    .locals 0
    .param p1, "radius"    # I

    .prologue
    .line 15
    iput p1, p0, Lcom/rd/animation/data/type/ScaleAnimationValue;->radius:I

    .line 16
    return-void
.end method

.method public setRadiusReverse(I)V
    .locals 0
    .param p1, "radiusReverse"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/rd/animation/data/type/ScaleAnimationValue;->radiusReverse:I

    .line 24
    return-void
.end method
