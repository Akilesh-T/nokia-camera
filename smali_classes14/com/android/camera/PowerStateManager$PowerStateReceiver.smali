.class Lcom/android/camera/PowerStateManager$PowerStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PowerStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PowerStateManager;


# direct methods
.method private constructor <init>(Lcom/android/camera/PowerStateManager;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/camera/PowerStateManager$PowerStateReceiver;->this$0:Lcom/android/camera/PowerStateManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/PowerStateManager;Lcom/android/camera/PowerStateManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/PowerStateManager;
    .param p2, "x1"    # Lcom/android/camera/PowerStateManager$1;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/camera/PowerStateManager$PowerStateReceiver;-><init>(Lcom/android/camera/PowerStateManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    if-nez p2, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/camera/PowerStateManager$PowerStateReceiver;->this$0:Lcom/android/camera/PowerStateManager;

    invoke-static {v0}, Lcom/android/camera/PowerStateManager;->access$200(Lcom/android/camera/PowerStateManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/PowerStateManager$PowerStateReceiver$1;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/PowerStateManager$PowerStateReceiver$1;-><init>(Lcom/android/camera/PowerStateManager$PowerStateReceiver;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
