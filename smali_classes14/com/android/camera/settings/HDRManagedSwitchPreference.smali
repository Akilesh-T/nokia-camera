.class public Lcom/android/camera/settings/HDRManagedSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "HDRManagedSwitchPreference.java"

# interfaces
.implements Lcom/android/camera/settings/PreferenceInterface;


# instance fields
.field private mSummaryView:Landroid/view/View;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/settings/HDRManagedSwitchPreference;->mVisible:Z

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/settings/HDRManagedSwitchPreference;->mVisible:Z

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/settings/HDRManagedSwitchPreference;->mVisible:Z

    .line 53
    return-void
.end method

.method private getCameraApp()Lcom/android/camera/app/CameraApp;
    .locals 3

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/camera/settings/HDRManagedSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 130
    .local v1, "context":Landroid/content/Context;
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 131
    check-cast v1, Landroid/app/Activity;

    .end local v1    # "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 132
    .local v0, "application":Landroid/app/Application;
    instance-of v2, v0, Lcom/android/camera/app/CameraApp;

    if-eqz v2, :cond_0

    .line 133
    check-cast v0, Lcom/android/camera/app/CameraApp;

    .line 136
    .end local v0    # "application":Landroid/app/Application;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getPersistedBoolean(Z)Z
    .locals 6
    .param p1, "defaultReturnValue"    # Z

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/camera/settings/HDRManagedSwitchPreference;->getCameraApp()Lcom/android/camera/app/CameraApp;

    move-result-object v0

    .line 81
    .local v0, "cameraApp":Lcom/android/camera/app/CameraApp;
    if-nez v0, :cond_1

    .line 100
    .end local p1    # "defaultReturnValue":Z
    :cond_0
    :goto_0
    return p1

    .line 86
    .restart local p1    # "defaultReturnValue":Z
    :cond_1
    const-string v3, "pref_camera_hdr_key"

    invoke-virtual {p0}, Lcom/android/camera/settings/HDRManagedSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 87
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not desired key in HDRManagedSwitchPreference : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/camera/settings/HDRManagedSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 89
    :cond_2
    invoke-static {}, Lcom/android/camera/app/CameraServicesImpl;->instance()Lcom/android/camera/app/CameraServicesImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraServicesImpl;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    .line 90
    .local v2, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    if-eqz v2, :cond_0

    .line 91
    const-string v3, "default_scope"

    invoke-virtual {p0}, Lcom/android/camera/settings/HDRManagedSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "hdrSetting":Ljava/lang/String;
    const v3, 0x7f080435

    invoke-virtual {v0, v3}, Lcom/android/camera/app/CameraApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 93
    const/4 p1, 0x1

    goto :goto_0

    .line 95
    :cond_3
    const/4 p1, 0x0

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 142
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/settings/HDRManagedSwitchPreference;->mSummaryView:Landroid/view/View;

    .line 144
    iget-object v1, p0, Lcom/android/camera/settings/HDRManagedSwitchPreference;->mSummaryView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/camera/settings/HDRManagedSwitchPreference;->mVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 145
    return-void

    .line 144
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 7
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    const v6, 0x7f080435

    const/4 v5, 0x0

    .line 58
    invoke-direct {p0}, Lcom/android/camera/settings/HDRManagedSwitchPreference;->getCameraApp()Lcom/android/camera/app/CameraApp;

    move-result-object v0

    .line 59
    .local v0, "cameraApp":Lcom/android/camera/app/CameraApp;
    if-nez v0, :cond_0

    .line 63
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-super {p0, p1, v3}, Landroid/preference/SwitchPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 76
    :goto_0
    return-void

    .line 66
    :cond_0
    const-string v3, "pref_camera_hdr_key"

    invoke-virtual {p0}, Lcom/android/camera/settings/HDRManagedSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 67
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not desired key in HDRManagedSwitchPreference : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/camera/settings/HDRManagedSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 69
    :cond_1
    invoke-static {}, Lcom/android/camera/app/CameraServicesImpl;->instance()Lcom/android/camera/app/CameraServicesImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraServicesImpl;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    .line 70
    .local v2, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    if-eqz v2, :cond_2

    .line 71
    const-string v3, "default_scope"

    invoke-virtual {p0}, Lcom/android/camera/settings/HDRManagedSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v6}, Lcom/android/camera/app/CameraApp;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "hdrSetting":Ljava/lang/String;
    invoke-virtual {v0, v6}, Lcom/android/camera/app/CameraApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-super {p0, p1, v3}, Landroid/preference/SwitchPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    goto :goto_0

    .line 74
    .end local v1    # "hdrSetting":Ljava/lang/String;
    :cond_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-super {p0, p1, v3}, Landroid/preference/SwitchPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    goto :goto_0
.end method

.method public persistBoolean(Z)Z
    .locals 5
    .param p1, "value"    # Z

    .prologue
    const/4 v2, 0x0

    .line 106
    invoke-direct {p0}, Lcom/android/camera/settings/HDRManagedSwitchPreference;->getCameraApp()Lcom/android/camera/app/CameraApp;

    move-result-object v0

    .line 107
    .local v0, "cameraApp":Lcom/android/camera/app/CameraApp;
    if-nez v0, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v2

    .line 113
    :cond_1
    const-string v3, "pref_camera_hdr_key"

    invoke-virtual {p0}, Lcom/android/camera/settings/HDRManagedSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 114
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not desired key in HDRManagedSwitchPreference : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/settings/HDRManagedSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 116
    :cond_2
    invoke-static {}, Lcom/android/camera/app/CameraServicesImpl;->instance()Lcom/android/camera/app/CameraServicesImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraServicesImpl;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 117
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    if-eqz v1, :cond_0

    .line 118
    const-string v3, "default_scope"

    invoke-virtual {p0}, Lcom/android/camera/settings/HDRManagedSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_3

    const v2, 0x7f080435

    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/camera/app/CameraApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/4 v2, 0x1

    goto :goto_0

    .line 118
    :cond_3
    const v2, 0x7f080312

    goto :goto_1
.end method

.method public setSummaryVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/android/camera/settings/HDRManagedSwitchPreference;->mVisible:Z

    .line 151
    iget-object v0, p0, Lcom/android/camera/settings/HDRManagedSwitchPreference;->mSummaryView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/android/camera/settings/HDRManagedSwitchPreference;->mSummaryView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method
