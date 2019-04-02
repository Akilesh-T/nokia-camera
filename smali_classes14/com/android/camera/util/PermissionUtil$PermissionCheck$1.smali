.class Lcom/android/camera/util/PermissionUtil$PermissionCheck$1;
.super Ljava/lang/Object;
.source "PermissionUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/util/PermissionUtil$PermissionCheck;->permissionCheck()V
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
    .line 62
    iput-object p1, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck$1;->this$0:Lcom/android/camera/util/PermissionUtil$PermissionCheck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck$1;->this$0:Lcom/android/camera/util/PermissionUtil$PermissionCheck;

    invoke-static {v0}, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->access$200(Lcom/android/camera/util/PermissionUtil$PermissionCheck;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck$1;->this$0:Lcom/android/camera/util/PermissionUtil$PermissionCheck;

    .line 67
    invoke-static {v3}, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->access$000(Lcom/android/camera/util/PermissionUtil$PermissionCheck;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck$1;->this$0:Lcom/android/camera/util/PermissionUtil$PermissionCheck;

    .line 68
    invoke-static {v2}, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->access$100(Lcom/android/camera/util/PermissionUtil$PermissionCheck;)Lcom/android/camera/util/PermissionUtil$PermissionCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/util/PermissionUtil$PermissionCode;->getPermissionRequestAgain()I

    move-result v2

    .line 66
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 69
    return-void
.end method
