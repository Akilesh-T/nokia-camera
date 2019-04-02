.class public Lcom/android/camera/one/OneCamera$LengsState;
.super Ljava/lang/Object;
.source "OneCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/OneCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LengsState"
.end annotation


# instance fields
.field public final isActive:Z

.field public final lensDistance:F


# direct methods
.method public constructor <init>(FZ)V
    .locals 0
    .param p1, "lensDistance"    # F
    .param p2, "isActive"    # Z

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput p1, p0, Lcom/android/camera/one/OneCamera$LengsState;->lensDistance:F

    .line 260
    iput-boolean p2, p0, Lcom/android/camera/one/OneCamera$LengsState;->isActive:Z

    .line 261
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 265
    if-ne p0, p1, :cond_1

    .line 277
    :cond_0
    :goto_0
    return v1

    .line 267
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 268
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 270
    check-cast v0, Lcom/android/camera/one/OneCamera$LengsState;

    .line 272
    .local v0, "that":Lcom/android/camera/one/OneCamera$LengsState;
    iget v3, v0, Lcom/android/camera/one/OneCamera$LengsState;->lensDistance:F

    iget v4, p0, Lcom/android/camera/one/OneCamera$LengsState;->lensDistance:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    .line 273
    goto :goto_0

    .line 274
    :cond_4
    iget-boolean v3, p0, Lcom/android/camera/one/OneCamera$LengsState;->isActive:Z

    iget-boolean v4, v0, Lcom/android/camera/one/OneCamera$LengsState;->isActive:Z

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 275
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 282
    iget v2, p0, Lcom/android/camera/one/OneCamera$LengsState;->lensDistance:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/camera/one/OneCamera$LengsState;->lensDistance:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 283
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v3, p0, Lcom/android/camera/one/OneCamera$LengsState;->isActive:Z

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int v0, v2, v1

    .line 284
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 282
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LengsState{lensDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/one/OneCamera$LengsState;->lensDistance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/camera/one/OneCamera$LengsState;->isActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
