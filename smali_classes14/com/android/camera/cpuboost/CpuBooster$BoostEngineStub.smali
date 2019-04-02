.class public Lcom/android/camera/cpuboost/CpuBooster$BoostEngineStub;
.super Lcom/android/camera/cpuboost/BoostEngine;
.source "CpuBooster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/cpuboost/CpuBooster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BoostEngineStub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/camera/cpuboost/BoostEngine;-><init>()V

    return-void
.end method


# virtual methods
.method public boostInTime(I)Z
    .locals 1
    .param p1, "timePeriod"    # I

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method
