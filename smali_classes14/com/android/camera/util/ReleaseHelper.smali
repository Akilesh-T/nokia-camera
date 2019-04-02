.class public Lcom/android/camera/util/ReleaseHelper;
.super Ljava/lang/Object;
.source "ReleaseHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static shouldLogVerbose()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public static shouldShowReleaseInfoDialogOnShare(Lcom/android/camera/data/FilmstripItem;)Z
    .locals 1
    .param p0, "data"    # Lcom/android/camera/data/FilmstripItem;

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public static showReleaseInfoDialog(Landroid/app/Activity;Lcom/android/camera/util/Callback;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/android/camera/util/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "callback":Lcom/android/camera/util/Callback;, "Lcom/android/camera/util/Callback<Ljava/lang/Void;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/camera/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 32
    return-void
.end method

.method public static showReleaseInfoDialogOnStart(Landroid/app/Activity;Lcom/android/camera/settings/SettingsManager;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;

    .prologue
    .line 28
    return-void
.end method
