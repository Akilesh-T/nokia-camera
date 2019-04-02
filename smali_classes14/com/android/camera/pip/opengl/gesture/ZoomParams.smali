.class public Lcom/android/camera/pip/opengl/gesture/ZoomParams;
.super Ljava/lang/Object;
.source "ZoomParams.java"


# static fields
.field public static final MAIN_CAMERA_INDEX:I = 0x0

.field public static final PIP_CAMERA_COUNT:I = 0x2

.field public static final SUB_CAMERA_INDEX:I = 0x1

.field public static final UNKNOW_CAMERA_INDEX:I = -0x1


# instance fields
.field private mCameraId:I

.field private mCurrentRatio:F

.field private mMaxRatio:F

.field private final mMinRatio:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/pip/opengl/gesture/ZoomParams;->mMinRatio:F

    .line 17
    return-void
.end method

.method public static getCameraIdByPIPMode(Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;II)I
    .locals 3
    .param p0, "pipMode"    # Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;
    .param p1, "yPos"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 47
    sget-object v2, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_UP_FRONT_DOWN:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    if-ne p0, v2, :cond_2

    .line 48
    div-int/lit8 v2, p2, 0x2

    if-ge p1, v2, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    sget-object v2, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_DOWN_FRONT_UP:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    if-ne p0, v2, :cond_4

    .line 50
    div-int/lit8 v2, p2, 0x2

    if-ge p1, v2, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1

    .line 51
    :cond_4
    sget-object v2, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_FULL_FRONT_SUB:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    if-eq p0, v2, :cond_0

    .line 53
    sget-object v0, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_SUB_FRONT_FULL:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    if-ne p0, v0, :cond_5

    move v0, v1

    .line 54
    goto :goto_0

    .line 56
    :cond_5
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public getCameraId()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/android/camera/pip/opengl/gesture/ZoomParams;->mCameraId:I

    return v0
.end method

.method public getZoom()F
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/android/camera/pip/opengl/gesture/ZoomParams;->mCurrentRatio:F

    return v0
.end method

.method public setCameraId(I)V
    .locals 0
    .param p1, "cameraId"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/android/camera/pip/opengl/gesture/ZoomParams;->mCameraId:I

    .line 21
    return-void
.end method

.method public setZoom(FF)V
    .locals 0
    .param p1, "currentRatio"    # F
    .param p2, "maxRatio"    # F

    .prologue
    .line 24
    iput p1, p0, Lcom/android/camera/pip/opengl/gesture/ZoomParams;->mCurrentRatio:F

    .line 25
    iput p2, p0, Lcom/android/camera/pip/opengl/gesture/ZoomParams;->mMaxRatio:F

    .line 26
    return-void
.end method

.method public updateZoom(F)V
    .locals 3
    .param p1, "sf"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3ea8f5c3    # 0.33f

    .line 29
    iget v0, p0, Lcom/android/camera/pip/opengl/gesture/ZoomParams;->mCurrentRatio:F

    add-float/2addr v0, v1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/pip/opengl/gesture/ZoomParams;->mCurrentRatio:F

    .line 30
    iget v0, p0, Lcom/android/camera/pip/opengl/gesture/ZoomParams;->mCurrentRatio:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 31
    iput v2, p0, Lcom/android/camera/pip/opengl/gesture/ZoomParams;->mCurrentRatio:F

    .line 33
    :cond_0
    iget v0, p0, Lcom/android/camera/pip/opengl/gesture/ZoomParams;->mCurrentRatio:F

    iget v1, p0, Lcom/android/camera/pip/opengl/gesture/ZoomParams;->mMaxRatio:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 34
    iget v0, p0, Lcom/android/camera/pip/opengl/gesture/ZoomParams;->mMaxRatio:F

    iput v0, p0, Lcom/android/camera/pip/opengl/gesture/ZoomParams;->mCurrentRatio:F

    .line 36
    :cond_1
    return-void
.end method
