.class Lcom/android/camera/StorageStateManager$1$1;
.super Ljava/lang/Object;
.source "StorageStateManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/StorageStateManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/StorageStateManager$1;


# direct methods
.method constructor <init>(Lcom/android/camera/StorageStateManager$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/StorageStateManager$1;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/camera/StorageStateManager$1$1;->this$1:Lcom/android/camera/StorageStateManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x1

    .line 204
    iget-object v0, p0, Lcom/android/camera/StorageStateManager$1$1;->this$1:Lcom/android/camera/StorageStateManager$1;

    iget-object v0, v0, Lcom/android/camera/StorageStateManager$1;->this$0:Lcom/android/camera/StorageStateManager;

    invoke-static {v0}, Lcom/android/camera/StorageStateManager;->access$000(Lcom/android/camera/StorageStateManager;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/camera/StorageStateManager$1$1;->this$1:Lcom/android/camera/StorageStateManager$1;

    iget-object v0, v0, Lcom/android/camera/StorageStateManager$1;->this$0:Lcom/android/camera/StorageStateManager;

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/StorageStateManager;->updateStoragePathIfNecessary(ZZ)V

    goto :goto_0
.end method
