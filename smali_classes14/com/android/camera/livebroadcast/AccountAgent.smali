.class public interface abstract Lcom/android/camera/livebroadcast/AccountAgent;
.super Ljava/lang/Object;
.source "AccountAgent.java"


# virtual methods
.method public abstract cancelLiveBroadcast(Lcom/android/camera/CameraActivity;)V
.end method

.method public abstract chooseAccount(Landroid/app/Activity;ILcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)V
.end method

.method public abstract createLiveBroadcast(Lcom/android/camera/CameraActivity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/async/Observable;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/CameraActivity;",
            "Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract getAgentTitleResId()I
.end method

.method public abstract getCurrentAccount()Ljava/lang/String;
.end method

.method public abstract getRTMPPath(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract goToAuthorization(Landroid/app/Activity;Ljava/lang/Object;)V
.end method

.method public abstract isDialogShowing()Z
.end method

.method public abstract logoutAccount(Ljava/lang/Runnable;)V
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)Z
.end method

.method public abstract onDestroy(Landroid/app/Activity;)V
.end method

.method public abstract onPause(Landroid/app/Activity;)V
.end method

.method public abstract setOrientation(IZ)V
.end method

.method public abstract startLiveBroadcast(Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Ljava/lang/Object;Lcom/android/camera/async/Observable;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract stopLiveBroadcast(Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Ljava/lang/Object;ZI)V
.end method
