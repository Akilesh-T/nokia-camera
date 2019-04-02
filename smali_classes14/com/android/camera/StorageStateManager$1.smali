.class Lcom/android/camera/StorageStateManager$1;
.super Ljava/lang/Object;
.source "StorageStateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/StorageStateManager;->showStorageDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/StorageStateManager;


# direct methods
.method constructor <init>(Lcom/android/camera/StorageStateManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/StorageStateManager;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/camera/StorageStateManager$1;->this$0:Lcom/android/camera/StorageStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/camera/StorageStateManager$1;->this$0:Lcom/android/camera/StorageStateManager;

    invoke-static {v0}, Lcom/android/camera/StorageStateManager;->access$000(Lcom/android/camera/StorageStateManager;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/camera/StorageStateManager$1;->this$0:Lcom/android/camera/StorageStateManager;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/camera/StorageStateManager$1;->this$0:Lcom/android/camera/StorageStateManager;

    invoke-static {v2}, Lcom/android/camera/StorageStateManager;->access$000(Lcom/android/camera/StorageStateManager;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    const v3, 0x10302d2

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f08001a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080018

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080019

    new-instance v3, Lcom/android/camera/StorageStateManager$1$4;

    invoke-direct {v3, p0}, Lcom/android/camera/StorageStateManager$1$4;-><init>(Lcom/android/camera/StorageStateManager$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080017

    new-instance v3, Lcom/android/camera/StorageStateManager$1$3;

    invoke-direct {v3, p0}, Lcom/android/camera/StorageStateManager$1$3;-><init>(Lcom/android/camera/StorageStateManager$1;)V

    .line 189
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/camera/StorageStateManager$1$2;

    invoke-direct {v2, p0}, Lcom/android/camera/StorageStateManager$1$2;-><init>(Lcom/android/camera/StorageStateManager$1;)V

    .line 196
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/camera/StorageStateManager$1$1;

    invoke-direct {v2, p0}, Lcom/android/camera/StorageStateManager$1$1;-><init>(Lcom/android/camera/StorageStateManager$1;)V

    .line 201
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 207
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 182
    invoke-static {v0, v1}, Lcom/android/camera/StorageStateManager;->access$202(Lcom/android/camera/StorageStateManager;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_0
.end method
