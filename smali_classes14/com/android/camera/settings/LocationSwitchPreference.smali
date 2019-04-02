.class public Lcom/android/camera/settings/LocationSwitchPreference;
.super Lcom/android/camera/settings/ManagedSwitchPreference;
.source "LocationSwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/settings/LocationSwitchPreference$Listener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/android/camera/settings/LocationSwitchPreference$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/camera/settings/ManagedSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p1, p0, Lcom/android/camera/settings/LocationSwitchPreference;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/camera/settings/ManagedSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-object p1, p0, Lcom/android/camera/settings/LocationSwitchPreference;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 4

    .prologue
    .line 37
    invoke-static {}, Lcom/android/camera/app/CameraServicesImpl;->instance()Lcom/android/camera/app/CameraServicesImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraServicesImpl;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 38
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v2, "default_scope"

    const-string v3, "pref_camera_recordlocation_key"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 39
    .local v0, "isEnable":Z
    if-eqz v0, :cond_0

    .line 40
    invoke-super {p0}, Lcom/android/camera/settings/ManagedSwitchPreference;->onClick()V

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v2, p0, Lcom/android/camera/settings/LocationSwitchPreference;->mListener:Lcom/android/camera/settings/LocationSwitchPreference$Listener;

    invoke-interface {v2}, Lcom/android/camera/settings/LocationSwitchPreference$Listener;->requireEnableGPS()V

    goto :goto_0
.end method

.method public setGPSListener(Lcom/android/camera/settings/LocationSwitchPreference$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/settings/LocationSwitchPreference$Listener;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/camera/settings/LocationSwitchPreference;->mListener:Lcom/android/camera/settings/LocationSwitchPreference$Listener;

    .line 48
    return-void
.end method
