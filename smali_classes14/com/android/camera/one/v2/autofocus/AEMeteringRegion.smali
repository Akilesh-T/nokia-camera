.class public Lcom/android/camera/one/v2/autofocus/AEMeteringRegion;
.super Ljava/lang/Object;
.source "AEMeteringRegion.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<[",
        "Landroid/hardware/camera2/params/MeteringRectangle;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mCameraId:Lcom/android/camera/device/CameraId;

.field private final mCropRegion:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mMeteringParameters:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/android/camera/one/v2/autofocus/MeteringParameters;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "AEMeteringRegion"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/autofocus/AEMeteringRegion;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/android/camera/device/CameraId;)V
    .locals 0
    .param p3, "cameraId"    # Lcom/android/camera/device/CameraId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/android/camera/one/v2/autofocus/MeteringParameters;",
            ">;",
            "Lcom/google/common/base/Supplier",
            "<",
            "Landroid/graphics/Rect;",
            ">;",
            "Lcom/android/camera/device/CameraId;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "meteringParameters":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/android/camera/one/v2/autofocus/MeteringParameters;>;"
    .local p2, "cropRegion":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Landroid/graphics/Rect;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/camera/one/v2/autofocus/AEMeteringRegion;->mMeteringParameters:Lcom/google/common/base/Supplier;

    .line 40
    iput-object p2, p0, Lcom/android/camera/one/v2/autofocus/AEMeteringRegion;->mCropRegion:Lcom/google/common/base/Supplier;

    .line 41
    iput-object p3, p0, Lcom/android/camera/one/v2/autofocus/AEMeteringRegion;->mCameraId:Lcom/android/camera/device/CameraId;

    .line 42
    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/camera/one/v2/autofocus/AEMeteringRegion;->get()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    return-object v0
.end method

.method public get()[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 7

    .prologue
    .line 46
    sget-boolean v2, Lcom/android/camera/product_utils/ProductUtil;->DUMP_ROI:Z

    if-eqz v2, :cond_0

    .line 47
    sget-object v3, Lcom/android/camera/one/v2/autofocus/AEMeteringRegion;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CameraId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/one/v2/autofocus/AEMeteringRegion;->mCameraId:Lcom/android/camera/device/CameraId;

    invoke-virtual {v4}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mCropRegion = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/AEMeteringRegion;->mCropRegion:Lcom/google/common/base/Supplier;

    invoke-interface {v2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 49
    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/AEMeteringRegion;->mMeteringParameters:Lcom/google/common/base/Supplier;

    invoke-interface {v2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/v2/autofocus/MeteringParameters;

    iget-object v3, p0, Lcom/android/camera/one/v2/autofocus/AEMeteringRegion;->mCropRegion:Lcom/google/common/base/Supplier;

    invoke-interface {v3}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-interface {v2, v3}, Lcom/android/camera/one/v2/autofocus/MeteringParameters;->getAERegions(Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    .line 50
    .local v1, "rectangles":[Landroid/hardware/camera2/params/MeteringRectangle;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 51
    .local v0, "rectangle":Landroid/hardware/camera2/params/MeteringRectangle;
    sget-object v4, Lcom/android/camera/one/v2/autofocus/AEMeteringRegion;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CameraId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/one/v2/autofocus/AEMeteringRegion;->mCameraId:Lcom/android/camera/device/CameraId;

    invoke-virtual {v6}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", AERegions = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    .end local v0    # "rectangle":Landroid/hardware/camera2/params/MeteringRectangle;
    .end local v1    # "rectangles":[Landroid/hardware/camera2/params/MeteringRectangle;
    :cond_0
    iget-object v2, p0, Lcom/android/camera/one/v2/autofocus/AEMeteringRegion;->mMeteringParameters:Lcom/google/common/base/Supplier;

    invoke-interface {v2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/v2/autofocus/MeteringParameters;

    iget-object v3, p0, Lcom/android/camera/one/v2/autofocus/AEMeteringRegion;->mCropRegion:Lcom/google/common/base/Supplier;

    invoke-interface {v3}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-interface {v2, v3}, Lcom/android/camera/one/v2/autofocus/MeteringParameters;->getAERegions(Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    return-object v2
.end method
