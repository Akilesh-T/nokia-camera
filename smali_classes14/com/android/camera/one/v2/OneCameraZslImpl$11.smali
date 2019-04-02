.class Lcom/android/camera/one/v2/OneCameraZslImpl$11;
.super Ljava/lang/Object;
.source "OneCameraZslImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/OneCameraZslImpl;->startAFCycle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/OneCameraZslImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/OneCameraZslImpl;

    .prologue
    .line 1100
    iput-object p1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$11;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$11;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$11;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    iget-object v1, v1, Lcom/android/camera/one/v2/OneCameraZslImpl;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {v0, v1}, Lcom/android/camera/one/v2/OneCameraZslImpl;->access$1402(Lcom/android/camera/one/v2/OneCameraZslImpl;[Landroid/hardware/camera2/params/MeteringRectangle;)[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 1104
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$11;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$11;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    iget-object v1, v1, Lcom/android/camera/one/v2/OneCameraZslImpl;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {v0, v1}, Lcom/android/camera/one/v2/OneCameraZslImpl;->access$1302(Lcom/android/camera/one/v2/OneCameraZslImpl;[Landroid/hardware/camera2/params/MeteringRectangle;)[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 1105
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$11;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/OneCameraZslImpl;->access$1800(Lcom/android/camera/one/v2/OneCameraZslImpl;)Z

    .line 1106
    return-void
.end method
