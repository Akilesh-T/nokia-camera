.class public Lcom/android/camera/settings/ManagedSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "ManagedSwitchPreference.java"

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
    .line 43
    invoke-direct {p0, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/settings/ManagedSwitchPreference;->mVisible:Z

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/settings/ManagedSwitchPreference;->mVisible:Z

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/settings/ManagedSwitchPreference;->mVisible:Z

    .line 52
    return-void
.end method

.method private getCameraApp()Lcom/android/camera/app/CameraApp;
    .locals 3

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/camera/settings/ManagedSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 95
    .local v1, "context":Landroid/content/Context;
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 96
    check-cast v1, Landroid/app/Activity;

    .end local v1    # "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 97
    .local v0, "application":Landroid/app/Application;
    instance-of v2, v0, Lcom/android/camera/app/CameraApp;

    if-eqz v2, :cond_0

    .line 98
    check-cast v0, Lcom/android/camera/app/CameraApp;

    .line 101
    .end local v0    # "application":Landroid/app/Application;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getPersistedBoolean(Z)Z
    .locals 4
    .param p1, "defaultReturnValue"    # Z

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/camera/settings/ManagedSwitchPreference;->getCameraApp()Lcom/android/camera/app/CameraApp;

    move-result-object v0

    .line 57
    .local v0, "cameraApp":Lcom/android/camera/app/CameraApp;
    if-nez v0, :cond_1

    .line 68
    .end local p1    # "defaultReturnValue":Z
    :cond_0
    :goto_0
    return p1

    .line 62
    .restart local p1    # "defaultReturnValue":Z
    :cond_1
    invoke-static {}, Lcom/android/camera/app/CameraServicesImpl;->instance()Lcom/android/camera/app/CameraServicesImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraServicesImpl;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 63
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    if-eqz v1, :cond_0

    .line 64
    const-string v2, "default_scope"

    invoke-virtual {p0}, Lcom/android/camera/settings/ManagedSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 107
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/settings/ManagedSwitchPreference;->mSummaryView:Landroid/view/View;

    .line 109
    iget-object v1, p0, Lcom/android/camera/settings/ManagedSwitchPreference;->mSummaryView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/camera/settings/ManagedSwitchPreference;->mVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 110
    return-void

    .line 109
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public persistBoolean(Z)Z
    .locals 4
    .param p1, "value"    # Z

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-direct {p0}, Lcom/android/camera/settings/ManagedSwitchPreference;->getCameraApp()Lcom/android/camera/app/CameraApp;

    move-result-object v0

    .line 75
    .local v0, "cameraApp":Lcom/android/camera/app/CameraApp;
    if-nez v0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v2

    .line 81
    :cond_1
    invoke-static {}, Lcom/android/camera/app/CameraServicesImpl;->instance()Lcom/android/camera/app/CameraServicesImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraServicesImpl;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 82
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    if-eqz v1, :cond_0

    .line 83
    const-string v2, "default_scope"

    invoke-virtual {p0}, Lcom/android/camera/settings/ManagedSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 84
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setSummaryVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/camera/settings/ManagedSwitchPreference;->mVisible:Z

    .line 116
    iget-object v0, p0, Lcom/android/camera/settings/ManagedSwitchPreference;->mSummaryView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 118
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/android/camera/settings/ManagedSwitchPreference;->mSummaryView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method
