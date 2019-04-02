.class public Lcom/android/camera/util/config/RHDConfig;
.super Lcom/android/camera/util/config/ProductConfig;
.source "RHDConfig.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "productName"    # Ljava/lang/String;
    .param p2, "productModel"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Lcom/android/camera/util/config/ProductConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    return-void
.end method


# virtual methods
.method public getLowLightImageNum()I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x3

    return v0
.end method

.method public getLowLightVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string v0, "1.6"

    return-object v0
.end method

.method public getPictureSizeForBokeh(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/util/Size;
    .locals 3
    .param p1, "cameraFacing"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    .line 40
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p1, v0, :cond_0

    .line 41
    new-instance v0, Lcom/android/camera/util/Size;

    const/16 v1, 0x1040

    const/16 v2, 0xc30

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 43
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAFRequiredForcely()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method public isEffectAllow()Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public isManualModeAllow()Z
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    return v0
.end method

.method public isReqBurst()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public isReqPIP()Z
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public isReqZeissBokeh()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public limitQueue()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method
