.class Lcom/android/camera/PermissionsActivity$3$1;
.super Ljava/lang/Object;
.source "PermissionsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PermissionsActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/PermissionsActivity$3;


# direct methods
.method constructor <init>(Lcom/android/camera/PermissionsActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/PermissionsActivity$3;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/camera/PermissionsActivity$3$1;->this$1:Lcom/android/camera/PermissionsActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x0

    .line 206
    iget-object v0, p0, Lcom/android/camera/PermissionsActivity$3$1;->this$1:Lcom/android/camera/PermissionsActivity$3;

    iget-object v0, v0, Lcom/android/camera/PermissionsActivity$3;->this$0:Lcom/android/camera/PermissionsActivity;

    invoke-static {v0}, Lcom/android/camera/PermissionsActivity;->access$300(Lcom/android/camera/PermissionsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/camera/PermissionsActivity$3$1;->this$1:Lcom/android/camera/PermissionsActivity$3;

    iget-object v0, v0, Lcom/android/camera/PermissionsActivity$3;->this$0:Lcom/android/camera/PermissionsActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/PermissionsActivity;->setResult(I)V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PermissionsActivity$3$1;->this$1:Lcom/android/camera/PermissionsActivity$3;

    iget-object v0, v0, Lcom/android/camera/PermissionsActivity$3;->this$0:Lcom/android/camera/PermissionsActivity;

    invoke-static {v0, v1}, Lcom/android/camera/PermissionsActivity;->access$302(Lcom/android/camera/PermissionsActivity;Z)Z

    .line 210
    iget-object v0, p0, Lcom/android/camera/PermissionsActivity$3$1;->this$1:Lcom/android/camera/PermissionsActivity$3;

    iget-object v0, v0, Lcom/android/camera/PermissionsActivity$3;->this$0:Lcom/android/camera/PermissionsActivity;

    invoke-virtual {v0}, Lcom/android/camera/PermissionsActivity;->finish()V

    .line 211
    return-void
.end method
