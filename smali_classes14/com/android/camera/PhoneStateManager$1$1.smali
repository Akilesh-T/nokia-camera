.class Lcom/android/camera/PhoneStateManager$1$1;
.super Ljava/lang/Object;
.source "PhoneStateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhoneStateManager$1;->onCallStateChanged(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/PhoneStateManager$1;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/android/camera/PhoneStateManager$1;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/PhoneStateManager$1;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/camera/PhoneStateManager$1$1;->this$1:Lcom/android/camera/PhoneStateManager$1;

    iput p2, p0, Lcom/android/camera/PhoneStateManager$1$1;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/PhoneStateManager$1$1;->this$1:Lcom/android/camera/PhoneStateManager$1;

    iget-object v0, v0, Lcom/android/camera/PhoneStateManager$1;->this$0:Lcom/android/camera/PhoneStateManager;

    invoke-static {v0}, Lcom/android/camera/PhoneStateManager;->access$100(Lcom/android/camera/PhoneStateManager;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    :goto_0
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhoneStateManager$1$1;->this$1:Lcom/android/camera/PhoneStateManager$1;

    iget-object v0, v0, Lcom/android/camera/PhoneStateManager$1;->this$0:Lcom/android/camera/PhoneStateManager;

    iget v1, p0, Lcom/android/camera/PhoneStateManager$1$1;->val$state:I

    invoke-static {v0, v1}, Lcom/android/camera/PhoneStateManager;->access$200(Lcom/android/camera/PhoneStateManager;I)V

    goto :goto_0
.end method
