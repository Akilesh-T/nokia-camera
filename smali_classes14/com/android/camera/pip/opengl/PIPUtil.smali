.class public Lcom/android/camera/pip/opengl/PIPUtil;
.super Ljava/lang/Object;
.source "PIPUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initPIPMode(Landroid/content/Context;Lcom/android/camera/settings/SettingsManager;)Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;

    .prologue
    .line 13
    const-string v2, "default_scope"

    const-string v3, "pref_camera_screen_key"

    invoke-virtual {p1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 14
    .local v0, "currentValue":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 15
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0803c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 16
    sget-object v2, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_DOWN_FRONT_UP:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    .line 18
    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_FULL_FRONT_SUB:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    goto :goto_0
.end method

.method public static resetPIPMode(Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;)Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;
    .locals 1
    .param p0, "pipMode"    # Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    .prologue
    .line 22
    invoke-static {p0}, Lcom/android/camera/pip/opengl/GLRenderer;->isSubAndFullMode(Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    sget-object v0, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_FULL_FRONT_SUB:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    .line 25
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_DOWN_FRONT_UP:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    goto :goto_0
.end method
