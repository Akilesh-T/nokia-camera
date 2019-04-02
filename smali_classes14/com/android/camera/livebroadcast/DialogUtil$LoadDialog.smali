.class public Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;
.super Ljava/lang/Object;
.source "DialogUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/livebroadcast/DialogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadDialog"
.end annotation


# instance fields
.field private mProgressDialog:Lcom/android/camera/livebroadcast/status/RotateProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hide(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;->mProgressDialog:Lcom/android/camera/livebroadcast/status/RotateProgressDialog;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;->mProgressDialog:Lcom/android/camera/livebroadcast/status/RotateProgressDialog;

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->dismiss()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;->mProgressDialog:Lcom/android/camera/livebroadcast/status/RotateProgressDialog;

    .line 63
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;->mProgressDialog:Lcom/android/camera/livebroadcast/status/RotateProgressDialog;

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 69
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;->mProgressDialog:Lcom/android/camera/livebroadcast/status/RotateProgressDialog;

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->isShowing()Z

    move-result v0

    goto :goto_0
.end method

.method public show(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "orientation"    # I

    .prologue
    .line 33
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;->hide(Landroid/app/Activity;)V

    .line 37
    new-instance v0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;

    invoke-direct {v0, p1, p3}, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;->mProgressDialog:Lcom/android/camera/livebroadcast/status/RotateProgressDialog;

    .line 38
    iget-object v0, p0, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;->mProgressDialog:Lcom/android/camera/livebroadcast/status/RotateProgressDialog;

    invoke-virtual {v0, p2}, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->show(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showWithAction(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "runnable"    # Ljava/lang/Runnable;
    .param p4, "orientation"    # I

    .prologue
    .line 43
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    :cond_0
    if-eqz p3, :cond_1

    .line 45
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 53
    :cond_1
    :goto_0
    return-void

    .line 50
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;->hide(Landroid/app/Activity;)V

    .line 51
    new-instance v0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;

    invoke-direct {v0, p1, p4}, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;->mProgressDialog:Lcom/android/camera/livebroadcast/status/RotateProgressDialog;

    .line 52
    iget-object v0, p0, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;->mProgressDialog:Lcom/android/camera/livebroadcast/status/RotateProgressDialog;

    invoke-virtual {v0, p2, p3}, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->showWithAction(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
