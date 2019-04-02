.class Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$1;
.super Ljava/lang/Object;
.source "CameraSettingsActivity.java"

# interfaces
.implements Lcom/android/camera/settings/ListPreferenceFiller;


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
    .line 459
    iput-object p1, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$1;->this$0:Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fill(Ljava/util/List;Landroid/preference/ListPreference;)V
    .locals 1
    .param p2, "preference"    # Landroid/preference/ListPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;",
            "Landroid/preference/ListPreference;",
            ")V"
        }
    .end annotation

    .prologue
    .line 462
    .local p1, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    iget-object v0, p0, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment$1;->this$0:Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;

    invoke-static {v0, p1, p2}, Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;->access$000(Lcom/android/camera/settings/CameraSettingsActivity$CameraSettingsFragment;Ljava/util/List;Landroid/preference/ListPreference;)V

    .line 463
    return-void
.end method
