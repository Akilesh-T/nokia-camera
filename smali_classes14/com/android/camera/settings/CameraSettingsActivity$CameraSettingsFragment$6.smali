.class Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$6;
.super Ljava/lang/Object;
.source "CameraSettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


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

.field final synthetic val$liveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

.field final synthetic val$loginCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;Lcom/android/camera/livebroadcast/LiveBroadcastManager;Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;

    .prologue
    .line 1156
    iput-object p1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$6;->this$0:Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;

    iput-object p2, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$6;->val$liveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    iput-object p3, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$6;->val$loginCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$6;->val$liveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->WEIBO:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-virtual {v0, v1}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->isValidAccount(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$6;->this$0:Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;

    invoke-static {v0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->access$100(Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;)Lcom/android/camera/settings/CameraSettingsActivity;

    move-result-object v7

    iget-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$6;->val$liveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->WEIBO:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-static {}, Lcom/android/camera/settings/CameraSettingsActivity;->access$300()Lcom/android/camera/util/PermissionUtil$PermissionCode;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$6;->this$0:Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;

    invoke-static {v3}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->access$100(Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;)Lcom/android/camera/settings/CameraSettingsActivity;

    move-result-object v3

    const/16 v4, 0x1003

    iget-object v5, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$6;->val$loginCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->chooseAccount(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Lcom/android/camera/util/PermissionUtil$PermissionCode;Landroid/app/Activity;ILcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/camera/settings/CameraSettingsActivity;->setRequestAccountPermission(Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;)V

    .line 1161
    iget-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$6;->this$0:Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;

    invoke-static {v0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->access$100(Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;)Lcom/android/camera/settings/CameraSettingsActivity;

    move-result-object v0

    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->WEIBO:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-virtual {v0, v1}, Lcom/android/camera/settings/CameraSettingsActivity;->setAccountType(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)V

    .line 1167
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1163
    :cond_0
    new-instance v6, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$6;->this$0:Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;

    invoke-virtual {v0}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/android/camera/livebroadcast/AccountInfoActivity;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1164
    .local v6, "intent":Landroid/content/Intent;
    const-string v0, "ACCOUNT_TYPE"

    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->WEIBO:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-virtual {v1}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;->ordinal()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1165
    iget-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$6;->this$0:Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;

    invoke-virtual {v0, v6}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
