.class public final Lcom/android/camera/ui/motion/LinearScale;
.super Ljava/lang/Object;
.source "LinearScale.java"


# instance fields
.field private final mDomainA:F

.field private final mDomainB:F

.field private final mRangeA:F

.field private final mRangeB:F

.field private final mScale:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 4
    .param p1, "domainA"    # F
    .param p2, "domainB"    # F
    .param p3, "rangeA"    # F
    .param p4, "rangeB"    # F

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/android/camera/ui/motion/LinearScale;->mDomainA:F

    .line 32
    iput p2, p0, Lcom/android/camera/ui/motion/LinearScale;->mDomainB:F

    .line 33
    iput p3, p0, Lcom/android/camera/ui/motion/LinearScale;->mRangeA:F

    .line 34
    iput p4, p0, Lcom/android/camera/ui/motion/LinearScale;->mRangeB:F

    .line 37
    iget v1, p0, Lcom/android/camera/ui/motion/LinearScale;->mRangeB:F

    iget v2, p0, Lcom/android/camera/ui/motion/LinearScale;->mRangeA:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/camera/ui/motion/LinearScale;->mDomainB:F

    iget v3, p0, Lcom/android/camera/ui/motion/LinearScale;->mDomainA:F

    sub-float/2addr v2, v3

    div-float v0, v1, v2

    .line 38
    .local v0, "scale":F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .end local v0    # "scale":F
    :cond_0
    iput v0, p0, Lcom/android/camera/ui/motion/LinearScale;->mScale:F

    .line 39
    return-void
.end method


# virtual methods
.method public clamp(F)F
    .locals 2
    .param p1, "domainValue"    # F

    .prologue
    .line 45
    iget v0, p0, Lcom/android/camera/ui/motion/LinearScale;->mDomainA:F

    iget v1, p0, Lcom/android/camera/ui/motion/LinearScale;->mDomainB:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 46
    iget v0, p0, Lcom/android/camera/ui/motion/LinearScale;->mDomainB:F

    iget v1, p0, Lcom/android/camera/ui/motion/LinearScale;->mDomainA:F

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 49
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/motion/LinearScale;->mDomainA:F

    iget v1, p0, Lcom/android/camera/ui/motion/LinearScale;->mDomainB:F

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0
.end method

.method public inverse()Lcom/android/camera/ui/motion/LinearScale;
    .locals 5

    .prologue
    .line 74
    new-instance v0, Lcom/android/camera/ui/motion/LinearScale;

    iget v1, p0, Lcom/android/camera/ui/motion/LinearScale;->mRangeA:F

    iget v2, p0, Lcom/android/camera/ui/motion/LinearScale;->mRangeB:F

    iget v3, p0, Lcom/android/camera/ui/motion/LinearScale;->mDomainA:F

    iget v4, p0, Lcom/android/camera/ui/motion/LinearScale;->mDomainB:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/ui/motion/LinearScale;-><init>(FFFF)V

    return-object v0
.end method

.method public isInDomain(F)Z
    .locals 4
    .param p1, "domainValue"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 56
    iget v2, p0, Lcom/android/camera/ui/motion/LinearScale;->mDomainA:F

    iget v3, p0, Lcom/android/camera/ui/motion/LinearScale;->mDomainB:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 57
    iget v2, p0, Lcom/android/camera/ui/motion/LinearScale;->mDomainA:F

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_1

    iget v2, p0, Lcom/android/camera/ui/motion/LinearScale;->mDomainB:F

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 57
    goto :goto_0

    .line 59
    :cond_2
    iget v2, p0, Lcom/android/camera/ui/motion/LinearScale;->mDomainA:F

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/android/camera/ui/motion/LinearScale;->mDomainB:F

    cmpg-float v2, p1, v2

    if-lez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public scale(F)F
    .locals 3
    .param p1, "domainValue"    # F

    .prologue
    .line 66
    iget v0, p0, Lcom/android/camera/ui/motion/LinearScale;->mRangeA:F

    iget v1, p0, Lcom/android/camera/ui/motion/LinearScale;->mDomainA:F

    sub-float v1, p1, v1

    iget v2, p0, Lcom/android/camera/ui/motion/LinearScale;->mScale:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LinearScale{mDomainA="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/motion/LinearScale;->mDomainA:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDomainB="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/motion/LinearScale;->mDomainB:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRangeA="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/motion/LinearScale;->mRangeA:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRangeB="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/motion/LinearScale;->mRangeB:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
