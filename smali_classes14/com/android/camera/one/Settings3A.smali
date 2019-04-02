.class public Lcom/android/camera/one/Settings3A;
.super Ljava/lang/Object;
.source "Settings3A.java"


# static fields
.field private static final AE_REGION_BOX:F = 0.3f

.field private static final AF_REGION_BOX:F = 0.2f

.field private static final FOCUS_HOLD_MILLIS:I = 0xbb8

.field private static final GCAM_METERING_REGION_FRACTION:F = 0.1225f

.field private static final GCAM_METERING_REGION_WEIGHT:F = 45.0f

.field private static final GCAM_POST_SHOT_FOCUS_HOLD_MILLIS:I = 0x3e8

.field private static final REGION_WEIGHT:F = 0.022f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAutoFocusRegionWidth()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 127
    const v0, 0x3e4ccccd    # 0.2f

    return v0
.end method

.method public static getFocusHoldMillis()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 152
    const/16 v0, 0xbb8

    return v0
.end method

.method public static getGcamMeteringRegionFraction()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 142
    const v0, 0x3dfae148    # 0.1225f

    return v0
.end method

.method public static getGcamMeteringRegionWeight()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 147
    const/high16 v0, 0x42340000    # 45.0f

    return v0
.end method

.method public static getGcamPostShotFocusHoldMillis()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 157
    const/16 v0, 0x3e8

    return v0
.end method

.method public static getMeteringRegionWeight()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 137
    const v0, 0x3cb43958    # 0.022f

    return v0
.end method

.method public static getMeteringRegionWidth()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 132
    const v0, 0x3e99999a    # 0.3f

    return v0
.end method


# virtual methods
.method public getMeteringRegionFraction()F
    .locals 1

    .prologue
    .line 122
    const v0, 0x3dfae148    # 0.1225f

    return v0
.end method

.method public getMeteringWeight()I
    .locals 5

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "weightMin":I
    const/16 v1, 0x3e8

    .line 113
    .local v1, "weightRange":I
    int-to-float v2, v0

    const v3, 0x3dfae148    # 0.1225f

    int-to-float v4, v1

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    return v2
.end method
