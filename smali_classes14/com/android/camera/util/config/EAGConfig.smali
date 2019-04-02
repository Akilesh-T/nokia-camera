.class public Lcom/android/camera/util/config/EAGConfig;
.super Lcom/android/camera/util/config/ProductConfig;
.source "EAGConfig.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "productName"    # Ljava/lang/String;
    .param p2, "productModel"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/android/camera/util/config/ProductConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
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

.method public isAFRequiredForcely()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method public isBokehAllow(Lcom/android/camera/one/OneCamera$Facing;)Z
    .locals 1
    .param p1, "facing"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    .line 41
    const/4 v0, 0x0

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
