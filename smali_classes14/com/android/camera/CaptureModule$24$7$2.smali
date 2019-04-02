.class Lcom/android/camera/CaptureModule$24$7$2;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Lcom/android/camera/one/OneCamera$SceneModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureModule$24$7;->onReadyForCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/CaptureModule$24$7;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule$24$7;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/CaptureModule$24$7;

    .prologue
    .line 2728
    iput-object p1, p0, Lcom/android/camera/CaptureModule$24$7$2;->this$2:Lcom/android/camera/CaptureModule$24$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSceneModeChange(Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;)V
    .locals 1
    .param p1, "sceneMode"    # Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    .prologue
    .line 2731
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7$2;->this$2:Lcom/android/camera/CaptureModule$24$7;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0, p1}, Lcom/android/camera/CaptureModule;->access$6302(Lcom/android/camera/CaptureModule;Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;)Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    .line 2732
    iget-object v0, p0, Lcom/android/camera/CaptureModule$24$7$2;->this$2:Lcom/android/camera/CaptureModule$24$7;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24$7;->this$1:Lcom/android/camera/CaptureModule$24;

    iget-object v0, v0, Lcom/android/camera/CaptureModule$24;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$6400(Lcom/android/camera/CaptureModule;)V

    .line 2734
    return-void
.end method
