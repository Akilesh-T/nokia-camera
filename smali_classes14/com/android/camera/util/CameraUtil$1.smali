.class final Lcom/android/camera/util/CameraUtil$1;
.super Ljava/lang/Object;
.source "CameraUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/util/CameraUtil;->showError(Landroid/app/Activity;Lcom/android/camera/util/CameraUtil$OnDialogShowingListener;IIZLjava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$dialogMsgId:I

.field final synthetic val$finishActivity:Z

.field final synthetic val$listener:Lcom/android/camera/util/CameraUtil$OnDialogShowingListener;


# direct methods
.method constructor <init>(Landroid/app/Activity;ZILcom/android/camera/util/CameraUtil$OnDialogShowingListener;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/camera/util/CameraUtil$1;->val$activity:Landroid/app/Activity;

    iput-boolean p2, p0, Lcom/android/camera/util/CameraUtil$1;->val$finishActivity:Z

    iput p3, p0, Lcom/android/camera/util/CameraUtil$1;->val$dialogMsgId:I

    iput-object p4, p0, Lcom/android/camera/util/CameraUtil$1;->val$listener:Lcom/android/camera/util/CameraUtil$OnDialogShowingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 345
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 346
    .local v2, "out":Landroid/util/TypedValue;
    iget-object v3, p0, Lcom/android/camera/util/CameraUtil$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1010355

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 347
    iget-object v3, p0, Lcom/android/camera/util/CameraUtil$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 349
    new-instance v0, Lcom/android/camera/util/CameraUtil$1$1;

    invoke-direct {v0, p0}, Lcom/android/camera/util/CameraUtil$1$1;-><init>(Lcom/android/camera/util/CameraUtil$1;)V

    .line 370
    .local v0, "buttonListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    const-string v4, "Show fatal error dialog"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 371
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/camera/util/CameraUtil$1;->val$activity:Landroid/app/Activity;

    const v5, 0x10302d2

    invoke-direct {v3, v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v4, 0x0

    .line 372
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f08003e

    .line 373
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/util/CameraUtil$1;->val$dialogMsgId:I

    .line 374
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f080066

    .line 376
    invoke-virtual {v3, v4, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    .line 377
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 378
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 379
    .local v1, "errorDialog":Landroid/app/AlertDialog;
    iget-object v3, p0, Lcom/android/camera/util/CameraUtil$1;->val$listener:Lcom/android/camera/util/CameraUtil$OnDialogShowingListener;

    invoke-interface {v3, v1}, Lcom/android/camera/util/CameraUtil$OnDialogShowingListener;->onDialogShowed(Landroid/app/AlertDialog;)V

    .line 381
    .end local v0    # "buttonListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v1    # "errorDialog":Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method
