.class Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$2;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 133
    iput-object p1, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$2;->this$0:Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    .line 136
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 137
    iget-object v0, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$2;->this$0:Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->access$000(Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$2;->this$0:Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->access$000(Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    move-result-object v0

    sget-object v1, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->CREATE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->CANCEL:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    invoke-interface {v0, v1, v2, v3, v3}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;->onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 141
    :cond_0
    return-void
.end method
