.class Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$4;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$editDialog:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;Landroid/app/AlertDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$4;->this$0:Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    iput-object p2, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$4;->val$editDialog:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$4;->this$0:Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    iget-object v1, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$4;->val$editDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->access$202(Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 161
    return-void
.end method
