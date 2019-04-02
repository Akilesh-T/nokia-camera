.class Lcom/android/camera/one/v2/photo/ImageRotationCalculatorImpl$1;
.super Ljava/lang/Object;
.source "ImageRotationCalculatorImpl.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/photo/ImageRotationCalculatorImpl;->getSupplier()Lcom/google/common/base/Supplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/photo/ImageRotationCalculatorImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/photo/ImageRotationCalculatorImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/photo/ImageRotationCalculatorImpl;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/ImageRotationCalculatorImpl$1;->this$0:Lcom/android/camera/one/v2/photo/ImageRotationCalculatorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/ImageRotationCalculatorImpl$1;->this$0:Lcom/android/camera/one/v2/photo/ImageRotationCalculatorImpl;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/photo/ImageRotationCalculatorImpl;->toImageRotation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/camera/one/v2/photo/ImageRotationCalculatorImpl$1;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
