.class Lcom/android/camera/VideoHal3Module$21$2$1;
.super Ljava/lang/Object;
.source "VideoHal3Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoHal3Module$21$2;->onRecordingStarting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/VideoHal3Module$21$2;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoHal3Module$21$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/VideoHal3Module$21$2;

    .prologue
    .line 2035
    iput-object p1, p0, Lcom/android/camera/VideoHal3Module$21$2$1;->this$2:Lcom/android/camera/VideoHal3Module$21$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2038
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$21$2$1;->this$2:Lcom/android/camera/VideoHal3Module$21$2;

    iget-object v2, v2, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v2, v2, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v2}, Lcom/android/camera/VideoHal3Module;->access$2800(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2039
    .local v0, "audioManager":Landroid/media/AudioManager;
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module$21$2$1;->this$2:Lcom/android/camera/VideoHal3Module$21$2;

    iget-object v2, v2, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v2, v2, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v2}, Lcom/android/camera/VideoHal3Module;->access$2800(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 2040
    .local v1, "notificationMgr":Landroid/app/NotificationManager;
    invoke-static {v0, v1}, Lcom/android/camera/util/VideoUtil;->silenceSoundsAndVibrations(Landroid/media/AudioManager;Landroid/app/NotificationManager;)V

    .line 2041
    return-void
.end method
