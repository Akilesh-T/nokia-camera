.class Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$2;
.super Ljava/lang/Object;
.source "CameraSettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->onResume()V
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
    .line 497
    iput-object p1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$2;->this$0:Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 500
    new-instance v0, Lcom/android/camera/util/GoogleHelpHelper;

    iget-object v1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$2;->this$0:Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;

    invoke-static {v1}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->access$100(Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;)Lcom/android/camera/settings/CameraSettingsActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/util/GoogleHelpHelper;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/android/camera/util/GoogleHelpHelper;->launchGoogleHelp()V

    .line 501
    const/4 v0, 0x1

    return v0
.end method
