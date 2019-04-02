.class Lcom/android/camera/PhoneStateManager$1;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhoneStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhoneStateManager;


# direct methods
.method constructor <init>(Lcom/android/camera/PhoneStateManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PhoneStateManager;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/camera/PhoneStateManager$1;->this$0:Lcom/android/camera/PhoneStateManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/PhoneStateManager$1;->this$0:Lcom/android/camera/PhoneStateManager;

    invoke-static {v0}, Lcom/android/camera/PhoneStateManager;->access$000(Lcom/android/camera/PhoneStateManager;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 32
    iget-object v0, p0, Lcom/android/camera/PhoneStateManager$1;->this$0:Lcom/android/camera/PhoneStateManager;

    invoke-static {v0}, Lcom/android/camera/PhoneStateManager;->access$300(Lcom/android/camera/PhoneStateManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/PhoneStateManager$1$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/PhoneStateManager$1$1;-><init>(Lcom/android/camera/PhoneStateManager$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    :cond_0
    return-void
.end method
