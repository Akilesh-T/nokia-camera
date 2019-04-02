.class Lcom/android/camera/device/SingleDeviceStateMachine$1;
.super Ljava/lang/Object;
.source "SingleDeviceStateMachine.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/device/SingleDeviceStateMachine;->setRequest(Lcom/android/camera/device/SingleDeviceRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/device/SingleDeviceStateMachine;

.field final synthetic val$deviceRequest:Lcom/android/camera/device/SingleDeviceRequest;


# direct methods
.method constructor <init>(Lcom/android/camera/device/SingleDeviceStateMachine;Lcom/android/camera/device/SingleDeviceRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/device/SingleDeviceStateMachine;

    .prologue
    .line 163
    .local p0, "this":Lcom/android/camera/device/SingleDeviceStateMachine$1;, "Lcom/android/camera/device/SingleDeviceStateMachine$1;"
    iput-object p1, p0, Lcom/android/camera/device/SingleDeviceStateMachine$1;->this$0:Lcom/android/camera/device/SingleDeviceStateMachine;

    iput-object p2, p0, Lcom/android/camera/device/SingleDeviceStateMachine$1;->val$deviceRequest:Lcom/android/camera/device/SingleDeviceRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 166
    .local p0, "this":Lcom/android/camera/device/SingleDeviceStateMachine$1;, "Lcom/android/camera/device/SingleDeviceStateMachine$1;"
    iget-object v0, p0, Lcom/android/camera/device/SingleDeviceStateMachine$1;->this$0:Lcom/android/camera/device/SingleDeviceStateMachine;

    iget-object v1, p0, Lcom/android/camera/device/SingleDeviceStateMachine$1;->val$deviceRequest:Lcom/android/camera/device/SingleDeviceRequest;

    invoke-static {v0, v1}, Lcom/android/camera/device/SingleDeviceStateMachine;->access$000(Lcom/android/camera/device/SingleDeviceStateMachine;Lcom/android/camera/device/SingleDeviceRequest;)V

    .line 167
    return-void
.end method
