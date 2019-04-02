.class public Lcom/android/camera/util/CameraSettingsActivityHelper;
.super Ljava/lang/Object;
.source "CameraSettingsActivityHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAdditionalPreferences(Landroid/preference/PreferenceFragment;Landroid/content/Context;)V
    .locals 0
    .param p0, "fragment"    # Landroid/preference/PreferenceFragment;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    return-void
.end method

.method public static onSizesLoaded(Landroid/preference/PreferenceFragment;Ljava/util/List;Lcom/android/camera/settings/ListPreferenceFiller;)V
    .locals 0
    .param p0, "fragment"    # Landroid/preference/PreferenceFragment;
    .param p2, "cameraSizesFiller"    # Lcom/android/camera/settings/ListPreferenceFiller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceFragment;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/util/Size;",
            ">;",
            "Lcom/android/camera/settings/ListPreferenceFiller;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "backCameraSizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    return-void
.end method

.method public static verifyDefaults(Lcom/android/camera/settings/SettingsManager;Landroid/content/Context;)V
    .locals 0
    .param p0, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    return-void
.end method
