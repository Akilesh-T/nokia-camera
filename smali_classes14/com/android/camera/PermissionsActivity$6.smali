.class Lcom/android/camera/PermissionsActivity$6;
.super Ljava/lang/Object;
.source "PermissionsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PermissionsActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PermissionsActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/PermissionsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PermissionsActivity;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/camera/PermissionsActivity$6;->this$0:Lcom/android/camera/PermissionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 313
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 314
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    const-string v2, "package"

    iget-object v3, p0, Lcom/android/camera/PermissionsActivity$6;->this$0:Lcom/android/camera/PermissionsActivity;

    invoke-virtual {v3}, Lcom/android/camera/PermissionsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 316
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 317
    iget-object v2, p0, Lcom/android/camera/PermissionsActivity$6;->this$0:Lcom/android/camera/PermissionsActivity;

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Lcom/android/camera/PermissionsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 318
    return-void
.end method
