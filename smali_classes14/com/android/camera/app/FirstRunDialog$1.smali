.class Lcom/android/camera/app/FirstRunDialog$1;
.super Ljava/lang/Object;
.source "FirstRunDialog.java"

# interfaces
.implements Lcom/android/camera/widget/AspectRatioDialogLayout$AspectRatioDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/app/FirstRunDialog;->promptAspectRatioPreferenceDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/app/FirstRunDialog;


# direct methods
.method constructor <init>(Lcom/android/camera/app/FirstRunDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/app/FirstRunDialog;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/camera/app/FirstRunDialog$1;->this$0:Lcom/android/camera/app/FirstRunDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm(Lcom/android/camera/exif/Rational;)V
    .locals 7
    .param p1, "aspectRatio"    # Lcom/android/camera/exif/Rational;

    .prologue
    .line 231
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/app/FirstRunDialog$1;->this$0:Lcom/android/camera/app/FirstRunDialog;

    invoke-static {v3}, Lcom/android/camera/app/FirstRunDialog;->access$000(Lcom/android/camera/app/FirstRunDialog;)Lcom/android/camera/one/OneCameraManager;

    move-result-object v3

    sget-object v4, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v3, v4}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v0

    .line 232
    .local v0, "backCameraId":Lcom/android/camera/device/CameraId;
    if-eqz v0, :cond_0

    .line 233
    iget-object v3, p0, Lcom/android/camera/app/FirstRunDialog$1;->this$0:Lcom/android/camera/app/FirstRunDialog;

    invoke-static {v3}, Lcom/android/camera/app/FirstRunDialog;->access$100(Lcom/android/camera/app/FirstRunDialog;)Lcom/android/camera/settings/ResolutionSetting;

    move-result-object v3

    invoke-virtual {v3, v0, p1}, Lcom/android/camera/settings/ResolutionSetting;->setPictureAspectRatio(Lcom/android/camera/device/CameraId;Lcom/android/camera/exif/Rational;)V

    .line 235
    :cond_0
    iget-object v3, p0, Lcom/android/camera/app/FirstRunDialog$1;->this$0:Lcom/android/camera/app/FirstRunDialog;

    invoke-static {v3}, Lcom/android/camera/app/FirstRunDialog;->access$000(Lcom/android/camera/app/FirstRunDialog;)Lcom/android/camera/one/OneCameraManager;

    move-result-object v3

    sget-object v4, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v3, v4}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v2

    .line 236
    .local v2, "frontCameraId":Lcom/android/camera/device/CameraId;
    if-eqz v2, :cond_1

    .line 237
    iget-object v3, p0, Lcom/android/camera/app/FirstRunDialog$1;->this$0:Lcom/android/camera/app/FirstRunDialog;

    invoke-static {v3}, Lcom/android/camera/app/FirstRunDialog;->access$100(Lcom/android/camera/app/FirstRunDialog;)Lcom/android/camera/settings/ResolutionSetting;

    move-result-object v3

    invoke-virtual {v3, v2, p1}, Lcom/android/camera/settings/ResolutionSetting;->setPictureAspectRatio(Lcom/android/camera/device/CameraId;Lcom/android/camera/exif/Rational;)V
    :try_end_0
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :cond_1
    iget-object v3, p0, Lcom/android/camera/app/FirstRunDialog$1;->this$0:Lcom/android/camera/app/FirstRunDialog;

    invoke-static {v3}, Lcom/android/camera/app/FirstRunDialog;->access$300(Lcom/android/camera/app/FirstRunDialog;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    const-string v4, "default_scope"

    const-string v5, "pref_user_selected_aspect_ratio"

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 250
    iget-object v3, p0, Lcom/android/camera/app/FirstRunDialog$1;->this$0:Lcom/android/camera/app/FirstRunDialog;

    invoke-static {v3}, Lcom/android/camera/app/FirstRunDialog;->access$400(Lcom/android/camera/app/FirstRunDialog;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 251
    iget-object v3, p0, Lcom/android/camera/app/FirstRunDialog$1;->this$0:Lcom/android/camera/app/FirstRunDialog;

    invoke-static {v3}, Lcom/android/camera/app/FirstRunDialog;->access$500(Lcom/android/camera/app/FirstRunDialog;)V

    .line 258
    .end local v0    # "backCameraId":Lcom/android/camera/device/CameraId;
    .end local v2    # "frontCameraId":Lcom/android/camera/device/CameraId;
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v1

    .line 240
    .local v1, "ex":Lcom/android/camera/one/OneCameraAccessException;
    iget-object v3, p0, Lcom/android/camera/app/FirstRunDialog$1;->this$0:Lcom/android/camera/app/FirstRunDialog;

    invoke-static {v3}, Lcom/android/camera/app/FirstRunDialog;->access$200(Lcom/android/camera/app/FirstRunDialog;)Lcom/android/camera/app/FirstRunDialog$FirstRunDialogListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/FirstRunDialog$FirstRunDialogListener;->onCameraAccessException()V

    goto :goto_0

    .line 254
    .end local v1    # "ex":Lcom/android/camera/one/OneCameraAccessException;
    .restart local v0    # "backCameraId":Lcom/android/camera/device/CameraId;
    .restart local v2    # "frontCameraId":Lcom/android/camera/device/CameraId;
    :cond_2
    iget-object v3, p0, Lcom/android/camera/app/FirstRunDialog$1;->this$0:Lcom/android/camera/app/FirstRunDialog;

    invoke-virtual {v3}, Lcom/android/camera/app/FirstRunDialog;->dismiss()V

    .line 256
    iget-object v3, p0, Lcom/android/camera/app/FirstRunDialog$1;->this$0:Lcom/android/camera/app/FirstRunDialog;

    invoke-static {v3}, Lcom/android/camera/app/FirstRunDialog;->access$200(Lcom/android/camera/app/FirstRunDialog;)Lcom/android/camera/app/FirstRunDialog$FirstRunDialogListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/FirstRunDialog$FirstRunDialogListener;->onFirstRunStateReady()V

    goto :goto_0
.end method
