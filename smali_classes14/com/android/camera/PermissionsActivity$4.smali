.class Lcom/android/camera/PermissionsActivity$4;
.super Ljava/lang/Object;
.source "PermissionsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PermissionsActivity;->buildPermissionsRequest(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PermissionsActivity;

.field final synthetic val$lstRequest:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/camera/PermissionsActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PermissionsActivity;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/camera/PermissionsActivity$4;->this$0:Lcom/android/camera/PermissionsActivity;

    iput-object p2, p0, Lcom/android/camera/PermissionsActivity$4;->val$lstRequest:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 271
    invoke-static {}, Lcom/android/camera/PermissionsActivity;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestPermissions size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/PermissionsActivity$4;->val$lstRequest:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/android/camera/PermissionsActivity$4;->val$lstRequest:Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 273
    .local v0, "list":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/PermissionsActivity$4;->this$0:Lcom/android/camera/PermissionsActivity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 274
    return-void
.end method
