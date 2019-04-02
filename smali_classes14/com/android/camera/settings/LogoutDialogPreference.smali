.class public Lcom/android/camera/settings/LogoutDialogPreference;
.super Landroid/preference/DialogPreference;
.source "LogoutDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/settings/LogoutDialogPreference$LogoutListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLogoutListener:Lcom/android/camera/settings/LogoutDialogPreference$LogoutListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/settings/LogoutDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput-object p1, p0, Lcom/android/camera/settings/LogoutDialogPreference;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 1
    .param p1, "positiveResult"    # Z

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 32
    if-eqz p1, :cond_0

    .line 33
    iget-object v0, p0, Lcom/android/camera/settings/LogoutDialogPreference;->mLogoutListener:Lcom/android/camera/settings/LogoutDialogPreference$LogoutListener;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/android/camera/settings/LogoutDialogPreference;->mLogoutListener:Lcom/android/camera/settings/LogoutDialogPreference$LogoutListener;

    invoke-interface {v0}, Lcom/android/camera/settings/LogoutDialogPreference$LogoutListener;->onLogout()V

    .line 36
    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/camera/settings/LogoutDialogPreference$LogoutListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/settings/LogoutDialogPreference$LogoutListener;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/camera/settings/LogoutDialogPreference;->mLogoutListener:Lcom/android/camera/settings/LogoutDialogPreference$LogoutListener;

    .line 27
    return-void
.end method
