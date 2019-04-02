.class Lcom/android/camera/StorageStateManager$1$3;
.super Ljava/lang/Object;
.source "StorageStateManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 189
    iput-object p1, p0, Lcom/android/camera/StorageStateManager$1$3;->this$1:Lcom/android/camera/StorageStateManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/camera/StorageStateManager$1$3;->this$1:Lcom/android/camera/StorageStateManager$1;

    iget-object v0, v0, Lcom/android/camera/StorageStateManager$1;->this$0:Lcom/android/camera/StorageStateManager;

    invoke-static {v0}, Lcom/android/camera/StorageStateManager;->access$600(Lcom/android/camera/StorageStateManager;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/camera/StorageStateManager$1$3;->this$1:Lcom/android/camera/StorageStateManager$1;

    iget-object v0, v0, Lcom/android/camera/StorageStateManager$1;->this$0:Lcom/android/camera/StorageStateManager;

    invoke-static {v0}, Lcom/android/camera/StorageStateManager;->access$600(Lcom/android/camera/StorageStateManager;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v1, "default_scope"

    const-string v2, "pref_data_storage_key"

    iget-object v3, p0, Lcom/android/camera/StorageStateManager$1$3;->this$1:Lcom/android/camera/StorageStateManager$1;

    iget-object v3, v3, Lcom/android/camera/StorageStateManager$1;->this$0:Lcom/android/camera/StorageStateManager;

    invoke-static {v3}, Lcom/android/camera/StorageStateManager;->access$000(Lcom/android/camera/StorageStateManager;)Lcom/android/camera/CameraActivity;

    move-result-object v3

    const v4, 0x7f0803de

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 195
    return-void
.end method
