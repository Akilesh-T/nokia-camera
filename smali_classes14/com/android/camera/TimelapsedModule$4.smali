.class Lcom/android/camera/TimelapsedModule$4;
.super Ljava/lang/Object;
.source "TimelapsedModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/TimelapsedModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/TimelapsedModule;


# direct methods
.method constructor <init>(Lcom/android/camera/TimelapsedModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/TimelapsedModule;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/camera/TimelapsedModule$4;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocusMoving(ZLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 1
    .param p1, "moving"    # Z
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule$4;->this$0:Lcom/android/camera/TimelapsedModule;

    invoke-static {v0}, Lcom/android/camera/TimelapsedModule;->access$500(Lcom/android/camera/TimelapsedModule;)Lcom/android/camera/FocusOverlayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/FocusOverlayManager;->onAutoFocusMoving(Z)V

    .line 260
    return-void
.end method
