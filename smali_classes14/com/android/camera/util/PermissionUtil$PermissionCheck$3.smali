.class Lcom/android/camera/util/PermissionUtil$PermissionCheck$3;
.super Ljava/lang/Object;
.source "PermissionUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/util/PermissionUtil$PermissionCheck;->onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/util/PermissionUtil$PermissionCheck;


# direct methods
.method constructor <init>(Lcom/android/camera/util/PermissionUtil$PermissionCheck;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/util/PermissionUtil$PermissionCheck;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck$3;->this$0:Lcom/android/camera/util/PermissionUtil$PermissionCheck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 103
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 104
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v2, "package"

    iget-object v3, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck$3;->this$0:Lcom/android/camera/util/PermissionUtil$PermissionCheck;

    invoke-static {v3}, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->access$200(Lcom/android/camera/util/PermissionUtil$PermissionCheck;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 106
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 107
    iget-object v2, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck$3;->this$0:Lcom/android/camera/util/PermissionUtil$PermissionCheck;

    invoke-static {v2}, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->access$200(Lcom/android/camera/util/PermissionUtil$PermissionCheck;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck$3;->this$0:Lcom/android/camera/util/PermissionUtil$PermissionCheck;

    invoke-static {v3}, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->access$100(Lcom/android/camera/util/PermissionUtil$PermissionCheck;)Lcom/android/camera/util/PermissionUtil$PermissionCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/util/PermissionUtil$PermissionCode;->getPermissionRequestCode()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 108
    return-void
.end method
