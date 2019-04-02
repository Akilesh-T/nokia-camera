.class public Lcom/android/camera/cpuboost/CpuBooster;
.super Ljava/lang/Object;
.source "CpuBooster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/cpuboost/CpuBooster$BoostEngineStub;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/camera/cpuboost/BoostEngine;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static instance()Lcom/android/camera/cpuboost/BoostEngine;
    .locals 2

    .prologue
    .line 15
    sget-object v1, Lcom/android/camera/cpuboost/CpuBooster;->sInstance:Lcom/android/camera/cpuboost/BoostEngine;

    if-nez v1, :cond_0

    .line 16
    invoke-static {}, Lcom/android/ex/camera2/utils/PlatformUtil;->getPlatform()Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    move-result-object v0

    .line 17
    .local v0, "platform":Lcom/android/ex/camera2/utils/PlatformUtil$Platform;
    sget-object v1, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->QUALCOMM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v0, v1, :cond_1

    .line 18
    new-instance v1, Lcom/android/camera/cpuboost/qualcomm/QCBoostEngine;

    invoke-direct {v1}, Lcom/android/camera/cpuboost/qualcomm/QCBoostEngine;-><init>()V

    sput-object v1, Lcom/android/camera/cpuboost/CpuBooster;->sInstance:Lcom/android/camera/cpuboost/BoostEngine;

    .line 27
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/camera/cpuboost/CpuBooster;->sInstance:Lcom/android/camera/cpuboost/BoostEngine;

    return-object v1

    .line 19
    :cond_1
    sget-object v1, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->MTK:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v0, v1, :cond_2

    .line 20
    new-instance v1, Lcom/android/camera/cpuboost/CpuBooster$BoostEngineStub;

    invoke-direct {v1}, Lcom/android/camera/cpuboost/CpuBooster$BoostEngineStub;-><init>()V

    sput-object v1, Lcom/android/camera/cpuboost/CpuBooster;->sInstance:Lcom/android/camera/cpuboost/BoostEngine;

    goto :goto_0

    .line 21
    :cond_2
    sget-object v1, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->SPREADTRUM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v0, v1, :cond_3

    .line 22
    new-instance v1, Lcom/android/camera/cpuboost/CpuBooster$BoostEngineStub;

    invoke-direct {v1}, Lcom/android/camera/cpuboost/CpuBooster$BoostEngineStub;-><init>()V

    sput-object v1, Lcom/android/camera/cpuboost/CpuBooster;->sInstance:Lcom/android/camera/cpuboost/BoostEngine;

    goto :goto_0

    .line 24
    :cond_3
    new-instance v1, Lcom/android/camera/cpuboost/CpuBooster$BoostEngineStub;

    invoke-direct {v1}, Lcom/android/camera/cpuboost/CpuBooster$BoostEngineStub;-><init>()V

    sput-object v1, Lcom/android/camera/cpuboost/CpuBooster;->sInstance:Lcom/android/camera/cpuboost/BoostEngine;

    goto :goto_0
.end method
