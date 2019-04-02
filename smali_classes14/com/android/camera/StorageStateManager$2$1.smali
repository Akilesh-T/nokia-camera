.class Lcom/android/camera/StorageStateManager$2$1;
.super Ljava/lang/Object;
.source "StorageStateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/StorageStateManager$2;->onPostExecute(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/StorageStateManager$2;

.field final synthetic val$orientation:I


# direct methods
.method constructor <init>(Lcom/android/camera/StorageStateManager$2;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/StorageStateManager$2;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/camera/StorageStateManager$2$1;->this$1:Lcom/android/camera/StorageStateManager$2;

    iput p2, p0, Lcom/android/camera/StorageStateManager$2$1;->val$orientation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 254
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    iget-object v1, p0, Lcom/android/camera/StorageStateManager$2$1;->this$1:Lcom/android/camera/StorageStateManager$2;

    iget-object v1, v1, Lcom/android/camera/StorageStateManager$2;->this$0:Lcom/android/camera/StorageStateManager;

    invoke-static {v1}, Lcom/android/camera/StorageStateManager;->access$000(Lcom/android/camera/StorageStateManager;)Lcom/android/camera/CameraActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/StorageStateManager$2$1;->this$1:Lcom/android/camera/StorageStateManager$2;

    iget-object v2, v2, Lcom/android/camera/StorageStateManager$2;->this$0:Lcom/android/camera/StorageStateManager;

    invoke-static {v2}, Lcom/android/camera/StorageStateManager;->access$000(Lcom/android/camera/StorageStateManager;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    const v3, 0x7f08005a

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/StorageStateManager$2$1;->val$orientation:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateTextToast;->showInTime(I)V

    .line 255
    return-void
.end method
