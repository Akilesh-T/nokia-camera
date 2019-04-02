.class Lcom/android/camera/ManualModule$ShutterCallback$1;
.super Ljava/lang/Object;
.source "ManualModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ManualModule$ShutterCallback;->onShutter(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ManualModule$ShutterCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/ManualModule$ShutterCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/ManualModule$ShutterCallback;

    .prologue
    .line 798
    iput-object p1, p0, Lcom/android/camera/ManualModule$ShutterCallback$1;->this$1:Lcom/android/camera/ManualModule$ShutterCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lcom/android/camera/ManualModule$ShutterCallback$1;->this$1:Lcom/android/camera/ManualModule$ShutterCallback;

    iget-object v0, v0, Lcom/android/camera/ManualModule$ShutterCallback;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$1800(Lcom/android/camera/ManualModule;)V

    .line 802
    return-void
.end method
