.class public interface abstract Lcom/android/camera/module/ModuleController;
.super Ljava/lang/Object;
.source "ModuleController.java"

# interfaces
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;


# static fields
.field public static final VISIBILITY_COVERED:I = 0x1

.field public static final VISIBILITY_HIDDEN:I = 0x2

.field public static final VISIBILITY_VISIBLE:I


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getBottomBarSpec()Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
.end method

.method public abstract getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;
.end method

.method public abstract getUsingCameraId()Lcom/android/camera/device/CameraId;
.end method

.method public abstract hardResetSettings(Lcom/android/camera/settings/SettingsManager;)V
.end method

.method public abstract init(Lcom/android/camera/CameraActivity;ZZ)V
.end method

.method public abstract isUsingBottomBar()Z
.end method

.method public abstract isUsingHAL3()Z
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract onBackPressed()Z
.end method

.method public abstract onCameraAvailable(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
.end method

.method public abstract onFirstPreviewArrived()V
.end method

.method public abstract onLayoutOrientationChanged(Z)V
.end method

.method public abstract onPhoneStateChange(I)V
.end method

.method public abstract onPowerStateChange(Z)V
.end method

.method public abstract onPreviewVisibilityChanged(I)V
.end method

.method public abstract onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end method

.method public abstract onSessionDone()V
.end method

.method public abstract onSessionPictureDataUpdate([BI)V
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method
