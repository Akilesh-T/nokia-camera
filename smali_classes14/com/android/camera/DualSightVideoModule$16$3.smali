.class Lcom/android/camera/DualSightVideoModule$16$3;
.super Ljava/lang/Object;
.source "DualSightVideoModule.java"

# interfaces
.implements Lcom/android/camera/video/OnRecordTimeUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DualSightVideoModule$16;->onCameraOpened(Lcom/android/camera/one/OneCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/DualSightVideoModule$16;


# direct methods
.method constructor <init>(Lcom/android/camera/DualSightVideoModule$16;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/DualSightVideoModule$16;

    .prologue
    .line 1888
    iput-object p1, p0, Lcom/android/camera/DualSightVideoModule$16$3;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecordTimeUpdate(Ljava/lang/String;)V
    .locals 1
    .param p1, "reordTimeText"    # Ljava/lang/String;

    .prologue
    .line 1891
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$3;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$4900(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/DualSightVideoModuleUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/DualSightVideoModuleUI;->setRecordingTime(Ljava/lang/String;)V

    .line 1892
    return-void
.end method

.method public onRecordTimeWarning(Z)V
    .locals 1
    .param p1, "warning"    # Z

    .prologue
    .line 1896
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$3;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$4900(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/DualSightVideoModuleUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/DualSightVideoModuleUI;->setRecordingTimeWarning(Z)V

    .line 1897
    return-void
.end method
