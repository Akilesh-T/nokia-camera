.class Lcom/android/camera/app/CameraAppUI$19;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/app/CameraAppUI;->setShutterButtonEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/app/CameraAppUI;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/android/camera/app/CameraAppUI;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/app/CameraAppUI;

    .prologue
    .line 2959
    iput-object p1, p0, Lcom/android/camera/app/CameraAppUI$19;->this$0:Lcom/android/camera/app/CameraAppUI;

    iput-boolean p2, p0, Lcom/android/camera/app/CameraAppUI$19;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2962
    iget-boolean v0, p0, Lcom/android/camera/app/CameraAppUI$19;->val$enabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI$19;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v0}, Lcom/android/camera/app/CameraAppUI;->access$3000(Lcom/android/camera/app/CameraAppUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2963
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI$19;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v0}, Lcom/android/camera/app/CameraAppUI;->access$2200(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/ui/operation/BottomBarOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/operation/BottomBarOperation;->setFakeShutterButtonEnabled()V

    .line 2967
    :goto_0
    return-void

    .line 2965
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/CameraAppUI$19;->this$0:Lcom/android/camera/app/CameraAppUI;

    invoke-static {v0}, Lcom/android/camera/app/CameraAppUI;->access$2200(Lcom/android/camera/app/CameraAppUI;)Lcom/android/camera/ui/operation/BottomBarOperation;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/camera/app/CameraAppUI$19;->val$enabled:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/operation/BottomBarOperation;->setShutterButtonEnabled(Z)V

    goto :goto_0
.end method
