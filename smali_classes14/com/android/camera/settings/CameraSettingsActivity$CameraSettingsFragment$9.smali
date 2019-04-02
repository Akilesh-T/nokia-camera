.class Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$9;
.super Landroid/content/BroadcastReceiver;
.source "CameraSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->registerStorageReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;

    .prologue
    .line 1297
    iput-object p1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$9;->this$0:Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1300
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1301
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received intent action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1302
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    .line 1303
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1304
    :cond_0
    iget-object v1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$9;->this$0:Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;

    invoke-static {p1}, Lcom/android/camera/Storage;->isSDCardAvailable(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->access$400(Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;Z)V

    .line 1306
    :cond_1
    return-void
.end method
