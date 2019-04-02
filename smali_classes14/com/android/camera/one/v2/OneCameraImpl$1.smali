.class Lcom/android/camera/one/v2/OneCameraImpl$1;
.super Ljava/lang/Object;
.source "OneCameraImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/OneCameraImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/OneCameraImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/OneCameraImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/OneCameraImpl;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/camera/one/v2/OneCameraImpl$1;->this$0:Lcom/android/camera/one/v2/OneCameraImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraImpl$1;->this$0:Lcom/android/camera/one/v2/OneCameraImpl;

    invoke-static {}, Lcom/android/camera/one/v2/OneCameraImpl;->access$100()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/one/v2/OneCameraImpl;->access$002(Lcom/android/camera/one/v2/OneCameraImpl;[Landroid/hardware/camera2/params/MeteringRectangle;)[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 192
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraImpl$1;->this$0:Lcom/android/camera/one/v2/OneCameraImpl;

    invoke-static {}, Lcom/android/camera/one/v2/OneCameraImpl;->access$100()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/one/v2/OneCameraImpl;->access$202(Lcom/android/camera/one/v2/OneCameraImpl;[Landroid/hardware/camera2/params/MeteringRectangle;)[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 193
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraImpl$1;->this$0:Lcom/android/camera/one/v2/OneCameraImpl;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/camera/one/v2/OneCameraImpl;->access$302(Lcom/android/camera/one/v2/OneCameraImpl;I)I

    .line 194
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraImpl$1;->this$0:Lcom/android/camera/one/v2/OneCameraImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/one/v2/OneCameraImpl;->access$400(Lcom/android/camera/one/v2/OneCameraImpl;Ljava/lang/Object;)Z

    .line 195
    return-void
.end method
