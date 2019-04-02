.class Lcom/android/camera/PermissionsActivity$3$3;
.super Ljava/lang/Object;
.source "PermissionsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 184
    iput-object p1, p0, Lcom/android/camera/PermissionsActivity$3$3;->this$1:Lcom/android/camera/PermissionsActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/camera/PermissionsActivity$3$3;->this$1:Lcom/android/camera/PermissionsActivity$3;

    iget-object v0, v0, Lcom/android/camera/PermissionsActivity$3;->this$0:Lcom/android/camera/PermissionsActivity;

    invoke-static {v0}, Lcom/android/camera/PermissionsActivity;->access$400(Lcom/android/camera/PermissionsActivity;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/camera/PermissionsActivity$3$3;->this$1:Lcom/android/camera/PermissionsActivity$3;

    iget-object v0, v0, Lcom/android/camera/PermissionsActivity$3;->this$0:Lcom/android/camera/PermissionsActivity;

    invoke-static {v0}, Lcom/android/camera/PermissionsActivity;->access$400(Lcom/android/camera/PermissionsActivity;)Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v1, "default_scope"

    const-string v2, "pref_camera_user_agreement_key"

    iget-object v3, p0, Lcom/android/camera/PermissionsActivity$3$3;->this$1:Lcom/android/camera/PermissionsActivity$3;

    iget-object v3, v3, Lcom/android/camera/PermissionsActivity$3;->this$0:Lcom/android/camera/PermissionsActivity;

    .line 190
    invoke-static {v3}, Lcom/android/camera/PermissionsActivity;->access$100(Lcom/android/camera/PermissionsActivity;)Z

    move-result v3

    .line 188
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PermissionsActivity$3$3;->this$1:Lcom/android/camera/PermissionsActivity$3;

    iget-object v0, v0, Lcom/android/camera/PermissionsActivity$3;->this$0:Lcom/android/camera/PermissionsActivity;

    invoke-static {v0}, Lcom/android/camera/PermissionsActivity;->access$500(Lcom/android/camera/PermissionsActivity;)V

    .line 193
    iget-object v0, p0, Lcom/android/camera/PermissionsActivity$3$3;->this$1:Lcom/android/camera/PermissionsActivity$3;

    iget-object v0, v0, Lcom/android/camera/PermissionsActivity$3;->this$0:Lcom/android/camera/PermissionsActivity;

    invoke-static {v0}, Lcom/android/camera/PermissionsActivity;->access$600(Lcom/android/camera/PermissionsActivity;)V

    .line 194
    return-void
.end method
