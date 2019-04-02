.class Lcom/android/camera/CameraActivity$18;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/android/camera/app/FirstRunDialog$FirstRunDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraActivity;->onResumeTasks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 2865
    iput-object p1, p0, Lcom/android/camera/CameraActivity$18;->this$0:Lcom/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraAccessException()V
    .locals 1

    .prologue
    .line 2887
    iget-object v0, p0, Lcom/android/camera/CameraActivity$18;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$4000(Lcom/android/camera/CameraActivity;)Lcom/android/camera/FatalErrorHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    .line 2888
    return-void
.end method

.method public onFirstRunDialogCancelled()V
    .locals 1

    .prologue
    .line 2882
    iget-object v0, p0, Lcom/android/camera/CameraActivity$18;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->finish()V

    .line 2883
    return-void
.end method

.method public onFirstRunDialogShowed()V
    .locals 0

    .prologue
    .line 2875
    return-void
.end method

.method public onFirstRunStateReady()V
    .locals 2

    .prologue
    .line 2869
    iget-object v0, p0, Lcom/android/camera/CameraActivity$18;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$5300(Lcom/android/camera/CameraActivity;)Lcom/android/camera/app/FirstRunDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/app/FirstRunDialog;->setHasShown(Z)V

    .line 2870
    iget-object v0, p0, Lcom/android/camera/CameraActivity$18;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$5400(Lcom/android/camera/CameraActivity;)V

    .line 2871
    return-void
.end method
