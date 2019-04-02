.class Lcom/android/camera/DualSightVideoModule$16$2$1;
.super Ljava/lang/Object;
.source "DualSightVideoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DualSightVideoModule$16$2;->onRecordingStarting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/DualSightVideoModule$16$2;


# direct methods
.method constructor <init>(Lcom/android/camera/DualSightVideoModule$16$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/DualSightVideoModule$16$2;

    .prologue
    .line 1756
    iput-object p1, p0, Lcom/android/camera/DualSightVideoModule$16$2$1;->this$2:Lcom/android/camera/DualSightVideoModule$16$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1759
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule$16$2$1;->this$2:Lcom/android/camera/DualSightVideoModule$16$2;

    iget-object v2, v2, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v2, v2, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v2}, Lcom/android/camera/DualSightVideoModule;->access$2300(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1760
    .local v0, "audioManager":Landroid/media/AudioManager;
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule$16$2$1;->this$2:Lcom/android/camera/DualSightVideoModule$16$2;

    iget-object v2, v2, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v2, v2, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v2}, Lcom/android/camera/DualSightVideoModule;->access$2300(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1761
    .local v1, "notificationMgr":Landroid/app/NotificationManager;
    invoke-static {v0, v1}, Lcom/android/camera/util/VideoUtil;->silenceSoundsAndVibrations(Landroid/media/AudioManager;Landroid/app/NotificationManager;)V

    .line 1762
    return-void
.end method
