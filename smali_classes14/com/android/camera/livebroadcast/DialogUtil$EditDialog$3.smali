.class Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$3;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->show(Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$EditDialogListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$3;->this$0:Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 147
    invoke-static {}, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show().onDismiss()+ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$3;->this$0:Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->access$200(Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$3;->this$0:Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->access$200(Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$3;->this$0:Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->access$300(Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->onConfigurationChanged(I)V

    .line 150
    iget-object v0, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$3;->this$0:Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->access$300(Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->onDialogDismissed()V

    .line 151
    iget-object v0, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$3;->this$0:Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->access$300(Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setRequestedOrientation(I)V

    .line 152
    iget-object v0, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$3;->this$0:Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->access$202(Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 154
    :cond_0
    invoke-static {}, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "show().onDismiss()-"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 155
    return-void
.end method
