.class public Lcom/android/camera/one/v2/common/CaptureSizeZoomedCropRegion;
.super Ljava/lang/Object;
.source "CaptureSizeZoomedCropRegion.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# instance fields
.field private final mSensorArrayArea:Landroid/graphics/Rect;

.field private final mZoom:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Lcom/google/common/base/Supplier;)V
    .locals 0
    .param p1, "sensorArrayArea"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "zoom":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Ljava/lang/Float;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/camera/one/v2/common/CaptureSizeZoomedCropRegion;->mSensorArrayArea:Landroid/graphics/Rect;

    .line 32
    iput-object p2, p0, Lcom/android/camera/one/v2/common/CaptureSizeZoomedCropRegion;->mZoom:Lcom/google/common/base/Supplier;

    .line 33
    return-void
.end method


# virtual methods
.method public get()Landroid/graphics/Rect;
    .locals 11

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    .line 37
    iget-object v6, p0, Lcom/android/camera/one/v2/common/CaptureSizeZoomedCropRegion;->mZoom:Lcom/google/common/base/Supplier;

    invoke-interface {v6}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 38
    .local v5, "zoom":F
    iget-object v0, p0, Lcom/android/camera/one/v2/common/CaptureSizeZoomedCropRegion;->mSensorArrayArea:Landroid/graphics/Rect;

    .line 39
    .local v0, "sensor":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    .line 40
    .local v1, "xCenter":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    .line 41
    .local v3, "yCenter":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v7

    div-float/2addr v6, v5

    float-to-int v2, v6

    .line 42
    .local v2, "xDelta":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v7

    div-float/2addr v6, v5

    float-to-int v4, v6

    .line 43
    .local v4, "yDelta":I
    new-instance v6, Landroid/graphics/Rect;

    sub-int v7, v1, v2

    sub-int v8, v3, v4

    add-int v9, v1, v2

    add-int v10, v3, v4

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v6
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/android/camera/one/v2/common/CaptureSizeZoomedCropRegion;->get()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method
