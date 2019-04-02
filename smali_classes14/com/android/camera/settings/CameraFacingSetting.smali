.class public Lcom/android/camera/settings/CameraFacingSetting;
.super Ljava/lang/Object;
.source "CameraFacingSetting.java"


# instance fields
.field private final mCameraFacingBackValue:I

.field private final mCameraFacingDefaultValue:I

.field private final mCameraFacingFrontValue:I

.field private final mCameraFacingSettingKey:Ljava/lang/String;

.field private final mSettingScope:Ljava/lang/String;

.field private final mSettingsManager:Lcom/android/camera/settings/SettingsManager;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p3, "moduleSettingScope"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p2, p0, Lcom/android/camera/settings/CameraFacingSetting;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    .line 46
    const-string v0, "PhotoModule"

    invoke-static {v0}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/settings/CameraFacingSetting;->mSettingScope:Ljava/lang/String;

    .line 48
    const-string v0, "pref_camera_id_key"

    iput-object v0, p0, Lcom/android/camera/settings/CameraFacingSetting;->mCameraFacingSettingKey:Ljava/lang/String;

    .line 49
    const v0, 0x7f080302

    .line 50
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/settings/CameraFacingSetting;->mCameraFacingBackValue:I

    .line 51
    const v0, 0x7f080303

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/settings/CameraFacingSetting;->mCameraFacingFrontValue:I

    .line 53
    const v0, 0x7f080301

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/settings/CameraFacingSetting;->mCameraFacingDefaultValue:I

    .line 55
    return-void
.end method

.method private getDefaultCameraFacing()Lcom/android/camera/one/OneCamera$Facing;
    .locals 2

    .prologue
    .line 131
    iget v0, p0, Lcom/android/camera/settings/CameraFacingSetting;->mCameraFacingDefaultValue:I

    iget v1, p0, Lcom/android/camera/settings/CameraFacingSetting;->mCameraFacingBackValue:I

    if-ne v0, v1, :cond_0

    .line 132
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    .line 134
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    goto :goto_0
.end method


# virtual methods
.method public getCameraFacing()Lcom/android/camera/one/OneCamera$Facing;
    .locals 4

    .prologue
    .line 96
    iget-object v1, p0, Lcom/android/camera/settings/CameraFacingSetting;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    iget-object v2, p0, Lcom/android/camera/settings/CameraFacingSetting;->mSettingScope:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/settings/CameraFacingSetting;->mCameraFacingSettingKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 97
    .local v0, "cameraId":I
    iget v1, p0, Lcom/android/camera/settings/CameraFacingSetting;->mCameraFacingBackValue:I

    if-ne v0, v1, :cond_0

    .line 98
    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    .line 102
    :goto_0
    return-object v1

    .line 99
    :cond_0
    iget v1, p0, Lcom/android/camera/settings/CameraFacingSetting;->mCameraFacingFrontValue:I

    if-ne v0, v1, :cond_1

    .line 100
    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    goto :goto_0

    .line 102
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/settings/CameraFacingSetting;->getDefaultCameraFacing()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v1

    goto :goto_0
.end method

.method public isFacingBack()Z
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraFacingSetting;->getCameraFacing()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFacingFront()Z
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraFacingSetting;->getCameraFacing()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)V
    .locals 4
    .param p1, "cameraFacing"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    .line 112
    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p1, v1, :cond_0

    iget v0, p0, Lcom/android/camera/settings/CameraFacingSetting;->mCameraFacingBackValue:I

    .line 114
    .local v0, "cameraId":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/settings/CameraFacingSetting;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    iget-object v2, p0, Lcom/android/camera/settings/CameraFacingSetting;->mSettingScope:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/settings/CameraFacingSetting;->mCameraFacingSettingKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 115
    return-void

    .line 112
    .end local v0    # "cameraId":I
    :cond_0
    iget v0, p0, Lcom/android/camera/settings/CameraFacingSetting;->mCameraFacingFrontValue:I

    goto :goto_0
.end method

.method public setDefault()V
    .locals 6

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/settings/CameraFacingSetting;->mSettingsManager:Lcom/android/camera/settings/SettingsManager;

    const-string v1, "pref_camera_id_key"

    iget v2, p0, Lcom/android/camera/settings/CameraFacingSetting;->mCameraFacingDefaultValue:I

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/camera/settings/CameraFacingSetting;->mCameraFacingBackValue:I

    aput v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/camera/settings/CameraFacingSetting;->mCameraFacingFrontValue:I

    aput v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->setDefaults(Ljava/lang/String;I[I)V

    .line 70
    return-void
.end method

.method public switchCameraFacing()Lcom/android/camera/one/OneCamera$Facing;
    .locals 3

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraFacingSetting;->getCameraFacing()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v1

    .line 124
    .local v1, "originalFacing":Lcom/android/camera/one/OneCamera$Facing;
    sget-object v2, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v1, v2, :cond_0

    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    .line 126
    .local v0, "newFacing":Lcom/android/camera/one/OneCamera$Facing;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/settings/CameraFacingSetting;->setCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)V

    .line 127
    return-object v0

    .line 124
    .end local v0    # "newFacing":Lcom/android/camera/one/OneCamera$Facing;
    :cond_0
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/camera/settings/CameraFacingSetting;->isFacingBack()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Back Camera"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Front Camera"

    goto :goto_0
.end method
