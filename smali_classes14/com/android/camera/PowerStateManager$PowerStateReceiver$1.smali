.class Lcom/android/camera/PowerStateManager$PowerStateReceiver$1;
.super Ljava/lang/Object;
.source "PowerStateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PowerStateManager$PowerStateReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/PowerStateManager$PowerStateReceiver;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/camera/PowerStateManager$PowerStateReceiver;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/PowerStateManager$PowerStateReceiver;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/camera/PowerStateManager$PowerStateReceiver$1;->this$1:Lcom/android/camera/PowerStateManager$PowerStateReceiver;

    iput-object p2, p0, Lcom/android/camera/PowerStateManager$PowerStateReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/PowerStateManager$PowerStateReceiver$1;->this$1:Lcom/android/camera/PowerStateManager$PowerStateReceiver;

    iget-object v0, v0, Lcom/android/camera/PowerStateManager$PowerStateReceiver;->this$0:Lcom/android/camera/PowerStateManager;

    invoke-static {v0}, Lcom/android/camera/PowerStateManager;->access$000(Lcom/android/camera/PowerStateManager;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PowerStateManager$PowerStateReceiver$1;->this$1:Lcom/android/camera/PowerStateManager$PowerStateReceiver;

    iget-object v0, v0, Lcom/android/camera/PowerStateManager$PowerStateReceiver;->this$0:Lcom/android/camera/PowerStateManager;

    iget-object v1, p0, Lcom/android/camera/PowerStateManager$PowerStateReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/PowerStateManager;->access$100(Lcom/android/camera/PowerStateManager;Landroid/os/Bundle;)V

    goto :goto_0
.end method
