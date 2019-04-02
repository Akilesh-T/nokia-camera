.class Lcom/android/camera/PIPPhotoModule$ShutterCallback$1;
.super Ljava/lang/Object;
.source "PIPPhotoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PIPPhotoModule$ShutterCallback;->onShutter(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/PIPPhotoModule$ShutterCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/PIPPhotoModule$ShutterCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/PIPPhotoModule$ShutterCallback;

    .prologue
    .line 733
    iput-object p1, p0, Lcom/android/camera/PIPPhotoModule$ShutterCallback$1;->this$1:Lcom/android/camera/PIPPhotoModule$ShutterCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule$ShutterCallback$1;->this$1:Lcom/android/camera/PIPPhotoModule$ShutterCallback;

    iget-object v0, v0, Lcom/android/camera/PIPPhotoModule$ShutterCallback;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-static {v0}, Lcom/android/camera/PIPPhotoModule;->access$1200(Lcom/android/camera/PIPPhotoModule;)V

    .line 737
    return-void
.end method
