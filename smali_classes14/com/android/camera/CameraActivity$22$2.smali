.class Lcom/android/camera/CameraActivity$22$2;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraActivity$22;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/CameraActivity$22;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraActivity$22;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/CameraActivity$22;

    .prologue
    .line 3144
    iput-object p1, p0, Lcom/android/camera/CameraActivity$22$2;->this$1:Lcom/android/camera/CameraActivity$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3147
    iget-object v0, p0, Lcom/android/camera/CameraActivity$22$2;->this$1:Lcom/android/camera/CameraActivity$22;

    iget-object v0, v0, Lcom/android/camera/CameraActivity$22;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$100(Lcom/android/camera/CameraActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3151
    :cond_0
    :goto_0
    return-void

    .line 3149
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraActivity$22$2;->this$1:Lcom/android/camera/CameraActivity$22;

    iget-object v0, v0, Lcom/android/camera/CameraActivity$22;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$6100(Lcom/android/camera/CameraActivity;)Lcom/android/camera/app/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3150
    iget-object v0, p0, Lcom/android/camera/CameraActivity$22$2;->this$1:Lcom/android/camera/CameraActivity$22;

    iget-object v0, v0, Lcom/android/camera/CameraActivity$22;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$6100(Lcom/android/camera/CameraActivity;)Lcom/android/camera/app/LocationManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/app/LocationManager;->recordLocation(Z)V

    goto :goto_0
.end method
