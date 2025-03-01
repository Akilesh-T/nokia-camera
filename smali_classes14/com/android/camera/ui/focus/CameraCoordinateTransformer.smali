.class public Lcom/android/camera/ui/focus/CameraCoordinateTransformer;
.super Ljava/lang/Object;
.source "CameraCoordinateTransformer.java"


# static fields
.field private static final CAMERA_DRIVER_RECT:Landroid/graphics/RectF;


# instance fields
.field private final mCameraToPreviewTransform:Landroid/graphics/Matrix;

.field private final mPreviewToCameraTransform:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x447a0000    # 1000.0f

    const/high16 v1, -0x3b860000    # -1000.0f

    .line 28
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/android/camera/ui/focus/CameraCoordinateTransformer;->CAMERA_DRIVER_RECT:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(ZILandroid/graphics/RectF;)V
    .locals 2
    .param p1, "mirrorX"    # Z
    .param p2, "displayOrientation"    # I
    .param p3, "previewRect"    # Landroid/graphics/RectF;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-direct {p0, p3}, Lcom/android/camera/ui/focus/CameraCoordinateTransformer;->hasNonZeroArea(Landroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "previewRect"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/focus/CameraCoordinateTransformer;->cameraToPreviewTransform(ZILandroid/graphics/RectF;)Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/focus/CameraCoordinateTransformer;->mCameraToPreviewTransform:Landroid/graphics/Matrix;

    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/focus/CameraCoordinateTransformer;->mCameraToPreviewTransform:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Lcom/android/camera/ui/focus/CameraCoordinateTransformer;->inverse(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/focus/CameraCoordinateTransformer;->mPreviewToCameraTransform:Landroid/graphics/Matrix;

    .line 49
    return-void
.end method

.method private cameraToPreviewTransform(ZILandroid/graphics/RectF;)Landroid/graphics/Matrix;
    .locals 4
    .param p1, "mirrorX"    # Z
    .param p2, "displayOrientation"    # I
    .param p3, "previewRect"    # Landroid/graphics/RectF;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 79
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 82
    .local v1, "transform":Landroid/graphics/Matrix;
    if-eqz p1, :cond_0

    const/high16 v2, -0x40800000    # -1.0f

    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 86
    int-to-float v2, p2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 89
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 90
    .local v0, "fill":Landroid/graphics/Matrix;
    sget-object v2, Lcom/android/camera/ui/focus/CameraCoordinateTransformer;->CAMERA_DRIVER_RECT:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v2, p3, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 95
    invoke-virtual {v1, v0, v1}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    .line 97
    return-object v1

    .end local v0    # "fill":Landroid/graphics/Matrix;
    :cond_0
    move v2, v3

    .line 82
    goto :goto_0
.end method

.method private hasNonZeroArea(Landroid/graphics/RectF;)Z
    .locals 2
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inverse(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 1
    .param p1, "source"    # Landroid/graphics/Matrix;

    .prologue
    .line 101
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 102
    .local v0, "newMatrix":Landroid/graphics/Matrix;
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 103
    return-object v0
.end method


# virtual methods
.method public toCameraSpace(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 2
    .param p1, "source"    # Landroid/graphics/RectF;

    .prologue
    .line 72
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 73
    .local v0, "result":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/android/camera/ui/focus/CameraCoordinateTransformer;->mPreviewToCameraTransform:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 74
    return-object v0
.end method

.method public toPreviewSpace(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 2
    .param p1, "source"    # Landroid/graphics/RectF;

    .prologue
    .line 59
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 60
    .local v0, "result":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/android/camera/ui/focus/CameraCoordinateTransformer;->mCameraToPreviewTransform:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 61
    return-object v0
.end method
