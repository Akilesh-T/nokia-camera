.class public Lcom/rd/animation/type/ScaleDownAnimation;
.super Lcom/rd/animation/type/ScaleAnimation;
.source "ScaleDownAnimation.java"


# direct methods
.method public constructor <init>(Lcom/rd/animation/controller/ValueController$UpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/rd/animation/controller/ValueController$UpdateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/rd/animation/type/ScaleAnimation;-><init>(Lcom/rd/animation/controller/ValueController$UpdateListener;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected createScalePropertyHolder(Z)Landroid/animation/PropertyValuesHolder;
    .locals 6
    .param p1, "isReverse"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 21
    if-eqz p1, :cond_0

    .line 22
    const-string v2, "ANIMATION_SCALE_REVERSE"

    .line 23
    .local v2, "propertyName":Ljava/lang/String;
    iget v4, p0, Lcom/rd/animation/type/ScaleDownAnimation;->radius:I

    int-to-float v4, v4

    iget v5, p0, Lcom/rd/animation/type/ScaleDownAnimation;->scaleFactor:F

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 24
    .local v3, "startRadiusValue":I
    iget v0, p0, Lcom/rd/animation/type/ScaleDownAnimation;->radius:I

    .line 31
    .local v0, "endRadiusValue":I
    :goto_0
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v3, v4, v5

    const/4 v5, 0x1

    aput v0, v4, v5

    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 32
    .local v1, "holder":Landroid/animation/PropertyValuesHolder;
    new-instance v4, Landroid/animation/IntEvaluator;

    invoke-direct {v4}, Landroid/animation/IntEvaluator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 34
    return-object v1

    .line 26
    .end local v0    # "endRadiusValue":I
    .end local v1    # "holder":Landroid/animation/PropertyValuesHolder;
    .end local v2    # "propertyName":Ljava/lang/String;
    .end local v3    # "startRadiusValue":I
    :cond_0
    const-string v2, "ANIMATION_SCALE"

    .line 27
    .restart local v2    # "propertyName":Ljava/lang/String;
    iget v3, p0, Lcom/rd/animation/type/ScaleDownAnimation;->radius:I

    .line 28
    .restart local v3    # "startRadiusValue":I
    iget v4, p0, Lcom/rd/animation/type/ScaleDownAnimation;->radius:I

    int-to-float v4, v4

    iget v5, p0, Lcom/rd/animation/type/ScaleDownAnimation;->scaleFactor:F

    mul-float/2addr v4, v5

    float-to-int v0, v4

    .restart local v0    # "endRadiusValue":I
    goto :goto_0
.end method
