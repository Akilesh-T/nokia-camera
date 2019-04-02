.class Lcom/android/camera/BeautyModule$ShutterCallback$1;
.super Ljava/lang/Object;
.source "BeautyModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BeautyModule$ShutterCallback;->onShutter(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/BeautyModule$ShutterCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/BeautyModule$ShutterCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/BeautyModule$ShutterCallback;

    .prologue
    .line 741
    iput-object p1, p0, Lcom/android/camera/BeautyModule$ShutterCallback$1;->this$1:Lcom/android/camera/BeautyModule$ShutterCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/camera/BeautyModule$ShutterCallback$1;->this$1:Lcom/android/camera/BeautyModule$ShutterCallback;

    iget-object v0, v0, Lcom/android/camera/BeautyModule$ShutterCallback;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$1600(Lcom/android/camera/BeautyModule;)V

    .line 745
    return-void
.end method
