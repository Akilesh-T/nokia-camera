.class Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$5;
.super Ljava/lang/Object;
.source "CameraSettingsActivity.java"

# interfaces
.implements Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->initLiveBroadcastOption(Landroid/preference/PreferenceGroup;)V
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
    .line 1140
    iput-object p1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$5;->this$0:Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Z)V
    .locals 4
    .param p1, "type"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;
    .param p2, "isSuccess"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1143
    invoke-static {}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoginResult : AccountType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isSuccess = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1144
    iget-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$5;->this$0:Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;

    invoke-virtual {v0, p1}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->reloadLiveBroadcast(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)V

    .line 1145
    iget-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$5;->this$0:Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;

    invoke-static {v0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->access$100(Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;)Lcom/android/camera/settings/CameraSettingsActivity;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/settings/CameraSettingsActivity;->setRequestAccountPermission(Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;)V

    .line 1146
    iget-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$5;->this$0:Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;

    invoke-static {v0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->access$100(Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;)Lcom/android/camera/settings/CameraSettingsActivity;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/settings/CameraSettingsActivity;->setAccountType(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)V

    .line 1147
    return-void
.end method
