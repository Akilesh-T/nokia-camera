.class Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension$1;
.super Ljava/lang/Object;
.source "QCOneCameraCharExtension.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension;->configSurroundSoundForMediaRecorder(Landroid/content/Context;Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/OneCamera$Facing;Landroid/media/MediaRecorder;Lcom/android/camera/async/Observable;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$recorder:Landroid/media/MediaRecorder;

.field final synthetic val$surroundSoundSetting:Lcom/android/camera/async/Observable;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension;Landroid/media/MediaRecorder;Landroid/content/Context;Lcom/android/camera/async/Observable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension$1;->this$0:Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension;

    iput-object p2, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension$1;->val$recorder:Landroid/media/MediaRecorder;

    iput-object p3, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension$1;->val$surroundSoundSetting:Lcom/android/camera/async/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 133
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension$1;->this$0:Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension;

    iget-object v3, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension$1;->val$recorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension$1;->val$surroundSoundSetting:Lcom/android/camera/async/Observable;

    invoke-interface {v1}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;

    invoke-virtual {v1}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;->encodeSettingsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/camera/one/OZOModeSelector;->getOZODynamicMode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x1

    invoke-static {v2, v3, v1, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension;->access$000(Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension;Landroid/media/MediaRecorder;IZ)Z

    move-result v0

    .line 134
    .local v0, "dynamicConfigResult":Z
    invoke-static {}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dynamicConfigResult = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 135
    return-void
.end method
